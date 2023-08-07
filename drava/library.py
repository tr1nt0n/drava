import abjad
import baca
import evans
import trinton
from abjadext import rmakers
import fractions
import itertools
import math
import quicktions

# score

# beaming


def beam_a_rhythm(selector=trinton.pleaves()):
    def beam(argument):
        selections = selector(argument)
        for tie in abjad.select.logical_ties(selections, pitched=True):
            if abjad.get.has_indicator(tie[0], abjad.StartBeam):
                pass
            if abjad.get.has_indicator(tie[0], abjad.StopBeam):
                pass
            else:
                abjad.beam(tie)

    return beam


# rhythm


def a_inner_voice_rhythm(stage, divisions, subdivisions, cycle_order=1):
    def rhythm(durations):

        tuplets = []
        new_divisions = []
        for division in divisions:
            if cycle_order == 0:
                new_divisions.append(division)
                new_divisions.append(1)
            if cycle_order == 1:
                new_divisions.append(1)
                new_divisions.append(division)

        for division in new_divisions:
            if division > 1:
                tuplet = [1 for _ in range(division)]
                tuplet = tuple(tuplet)
                tuplets.append(tuplet)
            else:
                tuplet = (1,)
                tuplets.append(tuplet)

        nested_music = rmakers.tuplet(durations, tuplets)

        components = abjad.Container(nested_music)

        for tuplet in abjad.select.tuplets(components):
            ties = abjad.select.logical_ties(tuplet)
            length = len(ties)

            if length > 2:
                half_length = length / 2
                rounded_half_length = math.floor(half_length)
                abjad.mutate.fuse(
                    [ties[rounded_half_length][0], ties[rounded_half_length + 1][0]]
                )

        tuplets = abjad.select.tuplets(components)

        relevant_tuplets = []

        for tuplet in tuplets:
            if tuplets.index(tuplet) % 2 == cycle_order:
                relevant_tuplets.append(tuplet)

        for tuplet, subdivision in zip(relevant_tuplets, itertools.cycle(subdivisions)):
            ties = abjad.select.logical_ties(tuplet)
            length = len(ties)
            if length > 2:
                durations = []
                for tie in ties:
                    tie_duration = abjad.get.duration(tie)
                    durations.append(tie_duration)

                largest_index = durations.index(max(durations))
                relevant_tie = ties[largest_index]
                tuplet = [1 for _ in range(subdivision)]
                tuplet = tuple(tuplet)

                nested_music = rmakers.tuplet(
                    [abjad.get.duration(relevant_tie, preprolated=True)], [tuplet]
                )

                abjad.mutate.replace(relevant_tie, nested_music)

            if length == 2:
                tuplet = [1 for _ in range(subdivision)]
                tuplet = tuple(tuplet)
                relevant_tie = ties[-1]
                nested_music = rmakers.tuplet(
                    [abjad.get.duration(relevant_tie, preprolated=True)], [tuplet]
                )

                abjad.mutate.replace(relevant_tie, nested_music)

        if stage == 1:
            tuplets = abjad.select.tuplets(components)
            for tuplet in tuplets:
                tuplet_parent = abjad.get.parentage(tuplet).parent
                if isinstance(tuplet_parent, abjad.Tuplet):
                    leaves = abjad.select.leaves(tuplet)
                    length = len(leaves)
                    half_length = length / 2
                    rounded_half_length = math.floor(half_length)
                    left_group = leaves[:rounded_half_length]
                    right_group = leaves[rounded_half_length:]
                    abjad.mutate.fuse(left_group)
                    abjad.mutate.fuse(right_group)
                else:
                    leaves = abjad.select.leaves(tuplet)
                    relevant_leaves = []
                    for leaf in leaves:
                        leaf_parent = abjad.get.parentage(leaf).parent
                        leaf_grandparent = abjad.get.parentage(leaf_parent).parent
                        if isinstance(leaf_grandparent, abjad.Tuplet):
                            pass
                        else:
                            relevant_leaves.append(leaf)

                    contiguous_leaves = abjad.select.group_by_contiguity(
                        relevant_leaves
                    )

                    for group in contiguous_leaves:
                        abjad.mutate.fuse(group)

            tuplets = abjad.select.tuplets(components)

            for tuplet in tuplets:
                tuplet_parent = abjad.get.parentage(tuplet).parent
                if isinstance(tuplet_parent, abjad.Tuplet):
                    abjad.attach(abjad.Tie(), abjad.select.leaf(tuplet, -1))
                else:
                    abjad.attach(abjad.Tie(), abjad.select.leaf(tuplet, 0))
                    last_leaf = abjad.select.leaf(tuplet, -1)
                    if abjad.get.has_indicator(last_leaf, abjad.Tie):
                        pass
                    else:
                        abjad.attach(abjad.Tie(), last_leaf)

            abjad.detach(abjad.Tie, abjad.select.leaf(components, -1))

        if stage == 2:
            tuplets = abjad.select.tuplets(components)
            for tuplet in tuplets:
                tuplet_parent = abjad.get.parentage(tuplet).parent
                if isinstance(tuplet_parent, abjad.Tuplet):
                    pass
                else:
                    leaves = abjad.select.leaves(tuplet)
                    relevant_leaves = []
                    for leaf in leaves:
                        leaf_parent = abjad.get.parentage(leaf).parent
                        leaf_grandparent = abjad.get.parentage(leaf_parent).parent
                        if isinstance(leaf_grandparent, abjad.Tuplet):
                            pass
                        else:
                            relevant_leaves.append(leaf)

                    contiguous_leaves = abjad.select.group_by_contiguity(
                        relevant_leaves
                    )

                    for group in contiguous_leaves:
                        abjad.mutate.fuse(group)

            tuplets = abjad.select.tuplets(components)

            for tuplet in tuplets:
                tuplet_parent = abjad.get.parentage(tuplet).parent
                if isinstance(tuplet_parent, abjad.Tuplet):
                    abjad.beam(tuplet)
                else:
                    last_leaf = abjad.select.leaf(tuplet, -1)
                    if abjad.get.has_indicator(last_leaf, abjad.Tie):
                        pass
                    else:
                        abjad.attach(abjad.Tie(), last_leaf)

            abjad.detach(abjad.Tie, abjad.select.leaf(components, -1))

        if stage == 3:

            for tuplet in abjad.select.tuplets(components):
                tuplet_parent = abjad.get.parentage(tuplet).parent
                if isinstance(tuplet_parent, abjad.Tuplet):
                    pass
                else:
                    if len(tuplet) > 1:
                        abjad.beam(abjad.select.leaves(tuplet))

        rmakers.trivialize(components)
        rmakers.rewrite_rest_filled(components)
        rmakers.rewrite_sustained(components)
        rmakers.extract_trivial(components)
        rmakers.rewrite_dots(components)

        components = abjad.mutate.eject_contents(components)

        return components

    return rhythm


# sketch functions


def add_segments_to_score(voice, function):
    segments, labels = function

    for segment, label in zip(segments, labels):
        tuplet = [1 for _ in range(len(segment))]
        tuplet = tuple(tuplet)
        nested_music = rmakers.tuplet([(1, 1)], [tuplet])
        container = abjad.Container(nested_music)

        pitch_list = [_.number for _ in segment]
        handler = evans.PitchHandler(pitch_list)
        handler(container)

        abjad.attach(
            abjad.Markup(rf'\markup "{label}"'),
            abjad.select.leaf(container, 0),
            direction=abjad.UP,
        )

        if len(abjad.select.leaves(container)) > 10:
            abjad.attach(
                abjad.LilyPondLiteral(
                    r"\set suggestAccidentals = ##t", "absolute_before"
                ),
                abjad.select.leaf(container, 0),
            )

            abjad.attach(
                abjad.LilyPondLiteral(
                    r"\set suggestAccidentals = ##f", "absolute_after"
                ),
                abjad.select.leaf(container, -1),
            )

        selections = abjad.mutate.eject_contents(container)

        voice.extend(selections)


def label_time_signature_sketch(voice, ts_pair_list, motion):
    signatures = [abjad.TimeSignature(_) for _ in ts_pair_list]

    measure_number_counter = 1

    for signature in signatures:
        skip = abjad.Skip((1, 1), multiplier=signature.duration)

        abjad.attach(signature, skip)

        abjad.attach(
            abjad.Markup(
                rf'\markup {{ "{motion} motion measure {measure_number_counter}" }}'
            ),
            skip,
            direction=abjad.UP,
        )

        voice.append(skip)

        measure_number_counter += 1

    abjad.attach(
        abjad.LilyPondLiteral(
            r"\once \override Staff.BarLine.transparent = ##f", site="after"
        ),
        abjad.select.leaf(voice, -1),
    )

    abjad.attach(abjad.BarLine("|.", site="after"), abjad.select.leaf(voice, -1))
