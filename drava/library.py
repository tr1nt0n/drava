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

# rhythm


def respell_tuplets(tuplets):
    for tuplet in tuplets:
        prolation = tuplet.implied_prolation
        if prolation.denominator == 3 and prolation.numerator % 2 == 0:
            rmakers.force_diminution(tuplet)
        if prolation.denominator == 5 and prolation.numerator % 3 == 0:
            rmakers.force_augmentation(tuplet)
        if prolation.denominator == 7 and prolation.numerator % 2 == 0:
            rmakers.force_augmentation(tuplet)
        if prolation.denominator == 9 and prolation.numerator % 5 == 0:
            rmakers.force_augmentation(tuplet)
        if prolation.denominator % 9 == 0 and prolation.numerator % 11 == 0:
            rmakers.force_augmentation(tuplet)
            tuplet.denominator = 11
        if prolation.denominator == 15 and prolation.numerator % 2 == 0:
            rmakers.force_augmentation(tuplet)


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

        rmakers.rewrite_dots(components)

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
                    first_leaf = abjad.select.leaf(tuplet, 0)
                    if abjad.get.has_indicator(first_leaf, abjad.Tie):
                        next_leaf = abjad.select.with_next_leaf(first_leaf)[-1]
                        abjad.attach(abjad.Tie(), next_leaf)
                    else:
                        abjad.attach(abjad.Tie(), first_leaf)
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
                    pass
                else:
                    last_leaf = abjad.select.leaf(tuplet, -1)
                    if abjad.get.has_indicator(last_leaf, abjad.Tie):
                        pass
                    else:
                        abjad.attach(abjad.Tie(), last_leaf)

            abjad.detach(abjad.Tie, abjad.select.leaf(components, -1))

        rmakers.trivialize(components)
        rmakers.rewrite_rest_filled(components)
        rmakers.rewrite_sustained(components)
        rmakers.extract_trivial(components)
        rmakers.rewrite_dots(components)
        tuplets = abjad.select.tuplets(components)
        respell_tuplets(tuplets)
        tuplets = abjad.select.tuplets(components)
        if stage < 3:
            for tuplet in tuplets:
                tuplet_parent = abjad.get.parentage(tuplet).parent
                if isinstance(tuplet_parent, abjad.Tuplet):
                    abjad.beam(tuplet)

        if stage == 3:
            for tuplet in abjad.select.tuplets(components):
                tuplet_parent = abjad.get.parentage(tuplet).parent
                if isinstance(tuplet_parent, abjad.Tuplet):
                    pass
                else:
                    if len(tuplet) > 1:
                        abjad.beam(tuplet)

        components = abjad.mutate.eject_contents(components)

        return components

    return rhythm


def a_outer_voice_rhythm(cycle_order=1):
    def half_durations(argument):
        durations = []

        for i, duration in enumerate(argument):
            if i % 2 == cycle_order:
                durations.append(duration)
            else:
                durations.append(duration / 2)
                durations.append(duration / 2)

        nested_music = rmakers.note(durations)

        components = abjad.Container(nested_music)

        logical_ties = abjad.select.logical_ties(components)

        partitioned_components = abjad.sequence.partition_by_counts(
            logical_ties, [3], cyclic=True, overhang=True
        )

        if cycle_order == 1:
            first_tie_index = 1
        else:
            first_tie_index = 0

        for group in partitioned_components:
            abjad.attach(abjad.Tie(), group[first_tie_index][-1])
            abjad.attach(abjad.Tie(), group[-1][-1])

        components = abjad.mutate.eject_contents(components)

        return components

    return half_durations


def beam_outer_voice_a():
    def beam(argument):
        logical_ties = abjad.select.logical_ties(argument)

        for tie in logical_ties:
            last_leaf = tie[-1]
            next_leaf = abjad.select.with_next_leaf(last_leaf)[-1]
            abjad.beam([last_leaf, next_leaf])

    return beam


def morpheme_a_intermittent_rhythm(
    score, voice_name, measures, fuse_groups, stage=1, cycle_order=1, rotation=0
):
    logistic_map = trinton.rotated_sequence(
        [_ for _ in trinton.logistic_map(x=4, r=3.57, n=9) if _ > 2], rotation
    )

    trinton.make_music(
        lambda _: trinton.select_target(_, measures),
        evans.RhythmHandler(
            a_inner_voice_rhythm(
                stage=stage,
                divisions=logistic_map,
                subdivisions=logistic_map[1:],
                cycle_order=cycle_order,
            ),
        ),
        evans.RewriteMeterCommand(boundary_depth=-2),
        evans.IntermittentVoiceHandler(
            rhythm_handler=evans.RhythmHandler(evans.talea([-100], 4)),
            voice_name="morpheme a outer voice",
            direction=abjad.DOWN,
        ),
        trinton.notehead_bracket_command(),
        voice=score[voice_name],
        preprocessor=trinton.fuse_preprocessor(fuse_groups),
    )

    trinton.make_music(
        lambda _: trinton.select_target(_, measures),
        evans.RhythmHandler(
            a_outer_voice_rhythm(cycle_order=cycle_order),
        ),
        evans.RewriteMeterCommand(boundary_depth=-2),
        beam_outer_voice_a(),
        voice=score["morpheme a outer voice"],
        preprocessor=trinton.fuse_preprocessor(fuse_groups),
    )


def c_rhythm(register, rotation=0, stage=1):
    def rhythm(durations):
        logistic_map = [_ for _ in trinton.logistic_map(x=2, r=3.58, n=9) if _ > 2]
        logistic_map = trinton.rotated_sequence(logistic_map, rotation)

        upper_voice_tuplets = []
        lower_voice_tuplets = []

        for i, digit in enumerate(logistic_map):
            tuplet = []
            for _ in range(digit):
                if stage == 1:
                    long_note = digit / 2
                    long_note = math.ceil(long_note)
                    tuplet.append(-long_note)
                    if i % 2 == 0:
                        tuplet.append(1)
                    else:
                        tuplet.append(2)

                if stage > 1:
                    long_note = digit / 2
                    long_note = math.ceil(long_note)
                    tuplet.append(long_note)
                    if i % 2 == 0:
                        tuplet.append(-1)
                    else:
                        tuplet.append(-2)

            tuplet = tuple(tuplet)

            if i % 2 == 0:
                upper_voice_tuplets.append(tuplet)
            else:
                lower_voice_tuplets.append(tuplet)

        upper_nested_music = rmakers.tuplet(durations, upper_voice_tuplets)
        lower_nested_music = rmakers.tuplet(durations, lower_voice_tuplets)

        upper_container = abjad.Container(upper_nested_music)
        lower_container = abjad.Container(lower_nested_music)

        for container in [upper_container, lower_container]:
            if stage == 3:
                rests = abjad.select.rests(container)
                patterned_selector = trinton.patterned_leaf_index_selector([0, 5, 7], 8)
                patterned_rests = patterned_selector(rests)
                for rest in patterned_rests:
                    rmakers.force_note(rest)

            tuplets = abjad.select.tuplets(container)
            for tuplet in tuplets:
                abjad.beam(tuplet)
            rmakers.trivialize(container)
            rmakers.rewrite_rest_filled(container)
            rmakers.rewrite_sustained(container)
            rmakers.extract_trivial(container)
            rmakers.rewrite_dots(container)
            tuplets = abjad.select.tuplets(container)
            respell_tuplets(tuplets)

        upper_components = abjad.mutate.eject_contents(upper_container)
        lower_components = abjad.mutate.eject_contents(lower_container)

        if register == "upper":
            return upper_components
        if register == "lower":
            return lower_components

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
