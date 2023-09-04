import abjad
import baca
import evans
import trinton
from abjadext import rmakers
import fractions
import itertools
import math
import quicktions
from drava import pitch

# score


def drava_score(time_signatures):
    score = trinton.make_empty_score(
        instruments=[
            abjad.Piano(),
            abjad.Piano(),
            abjad.Piano(),
            abjad.Piano(),
            abjad.Piano(),
        ],
        groups=[
            1,
            3,
            1,
        ],
        staff_types=[
            "TempoStaff",
            [
                "Staff",
                "Staff",
                "Staff",
            ],
            "Staff",
        ],
        time_signatures=time_signatures,
    )

    return score


all_voice_names = eval(
    """[
    "piano 1 voice",
    "piano 2 voice",
    "piano 3 voice",
    "piano 4 voice",
    "piano 5 voice",
    ]"""
)

# markup

all_instrument_names = [
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") \center-column { \line { Vivace } \line { Grave } }'
        ),
    ),
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Bold") { I }'
        ),
    ),
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Bold") { II }'
        ),
    ),
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Bold") { III }'
        ),
    ),
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { Pedals }'
        ),
    ),
]

all_short_instrument_names = [
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") \center-column { \line { Vivace } \line { Grave } }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Bold") { I }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Bold") { II }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Bold") { III }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { Ped. }'
        ),
    ),
]


def write_instrument_names(score):
    for voice_name, markup in zip(all_voice_names, all_instrument_names):
        trinton.attach(
            voice=score[voice_name],
            leaves=[0],
            attachment=markup,
        )


def write_short_instrument_names(score):
    for voice_name, markup in zip(all_voice_names, all_short_instrument_names):
        trinton.attach(
            voice=score[voice_name],
            leaves=[0],
            attachment=markup,
        )


# notation tools


def imbricate(
    pitches,
    name,
    selector=trinton.pleaves(),
):
    def imbricate(argument):
        selections = selector(argument)

        evans.imbricate(
            selections=selections,
            pitches=pitches,
            name=name,
            direction=abjad.UP,
            articulation=None,
            beam=False,
            secondary=True,
            allow_unused_pitches=False,
            by_pitch_class=False,
            by_index=False,
            cyclic_period=None,
            hocket=False,
            truncate_ties=False,
            direct_attachments=False,
            note_head="\lowest",
        )

    return imbricate


def reset_line_positions(score, voice_names):
    voices = [score[_] for _ in voice_names]

    reset = abjad.LilyPondLiteral(
        r"\once \revert Staff.StaffSymbol.line-positions", "before"
    )

    for voice in voices:
        shards = abjad.select.group_by_measure(voice)
        relevant_shards = []
        for shard in shards:
            if (
                all(isinstance(leaf, abjad.Rest) for leaf in shard)
                or all(isinstance(leaf, abjad.MultimeasureRest) for leaf in shard)
                or all(isinstance(leaf, abjad.Skip) for leaf in shard)
            ):
                relevant_shards.append(shard)

        for shard in relevant_shards:
            abjad.attach(reset, shard[0])


def change_staff(staves, selector=trinton.pleaves()):
    def change(argument):
        selections = selector(argument)

        for selection, staff in zip(selections, staves):
            abjad.attach(
                abjad.LilyPondLiteral(
                    rf'\change Staff = "{staff} staff"', "absolute_before"
                ),
                selection,
            )

    return change


def c_ornaments(
    selector=trinton.patterned_tie_index_selector(
        [0, 5, 7], 8, pitched=True, first=True
    ),
    rotation=0,
    direction=None,
):
    def ornaments(argument):
        selections = selector(argument)
        selections = abjad.select.logical_ties(selections, pitched=True)

        ornament_list = [
            "prall",
            "mordent",
            "turn",
            "prallup",
            "turn",
            "pralldown",
            "mordent",
            "upmordent",
            "prall",
            "downmordent",
            "prall",
            "turn",
            "mordent",
            "prallup",
            "downmordent",
            "turn",
        ]

        ornament_list = trinton.rotated_sequence(
            ornament_list, rotation % len(ornament_list)
        )

        for ornament, tie in zip(itertools.cycle(ornament_list), selections):
            abjad.attach(abjad.Articulation(ornament), tie[0], direction=direction)

    return ornaments


def beam_b_rhythm():
    def beam(argument):
        pleaves = abjad.select.leaves(argument, pitched=True, grace=False)

        non_anchors = []

        for leaf in pleaves:
            parentage = abjad.get.parentage(leaf)
            voice_name = parentage.logical_voice()["voice"]

            if voice_name[-7:] == "Anchor'":
                pass

            else:
                non_anchors.append(leaf)

        contiguous_groups = abjad.select.group_by_contiguity(non_anchors)

        for group in contiguous_groups:
            logical_ties = abjad.select.logical_ties(group)
            for tie, future_tie in zip(logical_ties, logical_ties[1:]):
                last_leaf = tie[-1]
                first_leaf = future_tie[0]

                if abjad.get.duration(last_leaf, preprolated=True) < abjad.Duration(
                    1, 4
                ) and abjad.get.duration(first_leaf, preprolated=True) < abjad.Duration(
                    1, 4
                ):
                    abjad.beam([last_leaf, first_leaf])

    return beam


def respell_tuplets(tuplets):
    for tuplet in tuplets:
        prolation = tuplet.implied_prolation
        if prolation.denominator == 3 and prolation.numerator % 2 == 0:
            rmakers.force_diminution(tuplet)
        if prolation.denominator == 5 and prolation.numerator % 3 == 0:
            rmakers.force_augmentation(tuplet)
        if prolation.denominator == 7 and prolation.numerator % 4 == 0:
            rmakers.force_augmentation(tuplet)
        if prolation.denominator == 7 and prolation.numerator % 5 == 0:
            rmakers.force_augmentation(tuplet)
        if prolation.denominator == 7 and prolation.numerator % 6 == 0:
            rmakers.force_diminution(tuplet)
        if prolation.denominator == 9 and prolation.numerator % 5 == 0:
            rmakers.force_augmentation(tuplet)
        if prolation.denominator == 9 and prolation.numerator % 7 == 0:
            rmakers.force_diminution(tuplet)
        if prolation.denominator % 9 == 0 and prolation.numerator % 11 == 0:
            rmakers.force_augmentation(tuplet)
            tuplet.denominator = 11
        if prolation.denominator % 10 == 0 and prolation.numerator % 11 == 0:
            rmakers.force_augmentation(tuplet)
        if prolation.denominator == 15 and prolation.numerator % 2 == 0:
            rmakers.force_augmentation(tuplet)


# pitch


def double_octave_up(selector=trinton.pleaves()):
    def octave(argument):
        selections = selector(argument)
        for selection in selections:
            if isinstance(selection, abjad.NoteHead):
                current_pitch = selection.written_pitch
                current_numbered_pitch = current_pitch.number
                new_pitch = abjad.NumberedPitch(current_numbered_pitch + 24)
                new_pitch_name = new_pitch.name
                selection.written_pitch = new_pitch_name
            else:
                abjad.mutate.transpose(selection, 24)

    return octave


def octave_up(selector=trinton.pleaves()):
    def octave(argument):
        selections = selector(argument)
        for selection in selections:
            if isinstance(selection, abjad.NoteHead):
                current_pitch = selection.written_pitch
                current_numbered_pitch = current_pitch.number
                new_pitch = abjad.NumberedPitch(current_numbered_pitch + 12)
                new_pitch_name = new_pitch.name
                selection.written_pitch = new_pitch_name
            else:
                abjad.mutate.transpose(selection, 12)

    return octave


def octave_down(selector=trinton.pleaves()):
    def octave(argument):
        selections = selector(argument)
        for selection in selections:
            if isinstance(selection, abjad.NoteHead):
                current_pitch = selection.written_pitch
                current_numbered_pitch = current_pitch.number
                new_pitch = abjad.NumberedPitch(current_numbered_pitch - 12)
                new_pitch_name = new_pitch.name
                selection.written_pitch = new_pitch_name
            else:
                abjad.mutate.transpose(selection, -12)

    return octave


def double_octave_down(selector=trinton.pleaves()):
    def octave(argument):
        selections = selector(argument)
        for selection in selections:
            if isinstance(selection, abjad.NoteHead):
                current_pitch = selection.written_pitch
                current_numbered_pitch = current_pitch.number
                new_pitch = abjad.NumberedPitch(current_numbered_pitch - 24)
                new_pitch_name = new_pitch.name
                selection.written_pitch = new_pitch_name
            else:
                abjad.mutate.transpose(selection, -24)

    return octave


def pitch_morpheme_b(stage=1, selector=trinton.pleaves(), rotation=0):
    def pitch_morpheme(argument):
        selections = selector(argument)
        pties = abjad.select.logical_ties(selections, pitched=True, grace=False)

        handler = handler = evans.PitchHandler(["ef'", "df'"])
        handler(pties)

        if stage > 1:
            graces = abjad.select.logical_ties(selections, pitched=True, grace=True)
            grace_groups = abjad.select.group_by_contiguity(graces)
            tuplets = abjad.select.tuplets(argument)

            moments, labels = pitch.partition_moments()
            morpheme_b_moments = []

            for moment in moments:
                if len(moment) == 5:
                    morpheme_b_moments.append(moment)

            morpheme_b_moments = trinton.rotated_sequence(
                morpheme_b_moments, rotation % len(morpheme_b_moments)
            )

            for grace_group, moment in zip(
                grace_groups, itertools.cycle(morpheme_b_moments)
            ):
                pitch_list = [_.number for _ in moment]
                fundamental = abjad.select.with_next_leaf(grace_group[-1][0])[-1]
                pitch_list.insert(0, fundamental.written_pitch.name)
                handler = evans.PitchHandler(pitch_list)
                handler(grace_group)

            for tuplet, moment in zip(tuplets, itertools.cycle(morpheme_b_moments)):
                tuplet_parent = abjad.get.parentage(tuplet).parent
                if isinstance(tuplet_parent, abjad.Tuplet):
                    pitch_list = [_.number for _ in moment]
                    handler = evans.PitchHandler(pitch_list)
                    handler(tuplet)

        trill_ties = []

        pties = abjad.select.logical_ties(argument, pitched=True, grace=False)

        for tie in pties:
            tie_duration = abjad.get.duration(tie, preprolated=True)
            if tie_duration >= abjad.Duration(1, 4):
                trill_ties.append(tie)

        pre_grace_ties = []

        for i, tie in enumerate(trill_ties):
            if i % 3 == 0:
                start_trill = abjad.StartTrillSpan(interval=abjad.NamedInterval("M2"))
            if i % 3 == 1:
                start_trill = abjad.StartTrillSpan(interval=abjad.NamedInterval("-d5"))
            if i % 3 == 2:
                start_trill = abjad.StartTrillSpan(interval=abjad.NamedInterval("m2"))

            abjad.attach(start_trill, tie[0])

            next_leaf = abjad.select.with_next_leaf(tie[-1])[-1]
            next_leaf_parent = abjad.get.parentage(next_leaf).parent
            abjad.attach(abjad.StopTrillSpan(), next_leaf)

            if isinstance(next_leaf_parent, abjad.OnBeatGraceContainer):
                pre_grace_ties.append(tie)

            else:
                abjad.attach(abjad.StopTrillSpan(), next_leaf)

        for pre_grace_tie in pre_grace_ties:
            if len(pre_grace_tie) > 1:
                after_grace_container = abjad.AfterGraceContainer("s16")
                abjad.attach(
                    abjad.StopTrillSpan(), abjad.select.leaf(after_grace_container, 0)
                )
                abjad.attach(after_grace_container, pre_grace_tie[-1])
            else:
                indicators = abjad.get.indicators(pre_grace_tie[0])
                new_note = abjad.Note(abjad.select.leaf(pre_grace_tie, 0))
                for indicator in indicators:
                    abjad.attach(indicator, new_note)
                skip = abjad.Skip(1, multiplier=(0, 64))
                abjad.attach(abjad.StopTrillSpan(), skip)
                components = [new_note, skip]
                abjad.mutate.replace(pre_grace_tie, components)

    return pitch_morpheme


# rhythm


def aftergrace(notes_string="c'16", selector=trinton.pleaves()):
    def grace(argument):
        selections = selector(argument)

        ties = abjad.select.logical_ties(selections)

        containers = [abjad.AfterGraceContainer(notes_string) for _ in ties]

        for container in containers:
            literal = abjad.LilyPondLiteral(
                r'\once \override Flag.stroke-style = #"grace"',
            )

            abjad.attach(literal, container[0])

        for container, tie in zip(containers, ties):
            abjad.attach(container, tie[-1])

    return grace


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
    score,
    voice_name,
    measures,
    fuse_groups,
    stage=1,
    cycle_order=1,
    rotation=0,
    voice_number=1,
):
    logistic_map = [_ for _ in trinton.logistic_map(x=4, r=3.57, n=9) if _ > 2]
    logistic_map = trinton.rotated_sequence(logistic_map, rotation % len(logistic_map))

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
        trinton.rewrite_meter_command(),
        evans.IntermittentVoiceHandler(
            rhythm_handler=evans.RhythmHandler(evans.talea([-100], 4)),
            voice_name=f"morpheme a outer voice {voice_number}",
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
        trinton.rewrite_meter_command(),
        beam_outer_voice_a(),
        voice=score[f"morpheme a outer voice {voice_number}"],
        preprocessor=trinton.fuse_preprocessor(fuse_groups),
    )


def b_rhythm(
    stage=1,
    rotation=0,
    manual="single",
    rests=False,
):
    def rhythm(durations):
        logistic_map = trinton.logistic_map(x=2, r=3.57, n=9)
        talea_counts = [_ for _ in logistic_map if _ > 0]
        talea_counts = trinton.rotated_sequence(
            talea_counts, rotation % len(talea_counts)
        )
        extra_counts = [_ for _ in logistic_map if _ < 5 and _ != 3]
        extra_counts = trinton.rotated_sequence(
            extra_counts, rotation % len(extra_counts)
        )

        nested_music = rmakers.talea(
            durations, talea_counts, 16, extra_counts=extra_counts
        )

        components = abjad.Container(nested_music)

        rmakers.rewrite_dots(components)

        if rests is True:
            patterned_tie_selector = trinton.patterned_tie_index_selector([2], 3)
            rest_selections = patterned_tie_selector(components)
            for tie in rest_selections:
                rmakers.force_rest(tie)

        if stage == 3:
            subdivisions = [_ for _ in logistic_map if _ > 4 and _ < 8]
            subdivisions = trinton.rotated_sequence(
                subdivisions, rotation % len(subdivisions)
            )
            pties = abjad.select.logical_ties(components, pitched=True, grace=False)
            relevant_ties = [
                _
                for _ in pties
                if abjad.get.duration(_, preprolated=True) < abjad.Duration(1, 4)
            ]
            for tie, subdivision in zip(relevant_ties, subdivisions):
                tie_duration = abjad.get.duration(tie, preprolated=True)
                tuplet = [1 for _ in range(subdivision)]
                tuplet = tuple(tuplet)
                nested_music = rmakers.tuplet([tie_duration], [tuplet])
                container = abjad.Container(nested_music)

                tuplets = abjad.mutate.eject_contents(container)

                abjad.mutate.replace(tie[0], tuplets)

        if manual != "single":
            upper_components = abjad.mutate.copy(components)
            lower_components = abjad.mutate.copy(components)
            upper_component_ties = abjad.select.logical_ties(upper_components)
            lower_component_tuplets = abjad.select.tuplets(lower_components)

            for tie in upper_component_ties:
                tie_duration = abjad.get.duration(tie, preprolated=True)
                if tie_duration > abjad.Duration(1, 4):
                    rmakers.force_rest(tie)

            for tuplet in lower_component_tuplets:
                tuplet_parent = abjad.get.parentage(tuplet).parent
                if isinstance(tuplet_parent, abjad.Tuplet):
                    tuplet_duration = abjad.get.duration(tuplet, preprolated=True)
                    replacement_leaf = abjad.Note("c'", tuplet_duration)
                    abjad.mutate.replace(tuplet, replacement_leaf)

            lower_component_ties = abjad.select.logical_ties(lower_components)
            for tie in lower_component_ties:
                tie_duration = abjad.get.duration(tie, preprolated=True)

                if tie_duration < abjad.Duration(1, 4):
                    rmakers.force_rest(tie)

            components = [upper_components, lower_components]

        else:
            components = [components]

        def manage_tuplets(items):
            for item in items:
                rmakers.trivialize(item)
                rmakers.rewrite_sustained(item)
                rmakers.extract_trivial(item)
                rmakers.rewrite_dots(item)
                tuplets = abjad.select.tuplets(item)
                respell_tuplets(tuplets)
                for tuplet in tuplets:
                    if stage != 2:
                        tuplet_parent = abjad.get.parentage(tuplet).parent
                        if isinstance(tuplet_parent, abjad.Tuplet):
                            pass
                        else:
                            contiguous_groups = abjad.select.group_by_contiguity(
                                abjad.select.leaves(tuplet, pitched=True)
                            )
                            for group in contiguous_groups:
                                abjad.beam(group)

        manage_tuplets(components)

        if manual == "upper" or manual == "single":
            components = abjad.mutate.eject_contents(components[0])

        if manual == "lower":
            components = abjad.mutate.eject_contents(components[-1])

        return components

    return rhythm


def b_rhythm_graces(selector=None, counter=1):
    def graces(argument):
        pties = abjad.select.logical_ties(argument, pitched=True, grace=False)

        if selector is not None:
            relevant_ties = selector(pties)

        else:
            relevant_ties = [
                _
                for _ in pties
                if abjad.get.duration(_, preprolated=True) < abjad.Duration(1, 4)
            ]

        name_count = counter

        for i, tie in enumerate(relevant_ties):
            grace_name = f"graces {name_count}"
            first_leaf_of_tie_duration = abjad.get.duration(tie[0])

            if i % 2 == 0:
                durations = [abjad.Duration(1, 64) for _ in range(6)]

            else:
                durations = [abjad.Duration(1, 64) for _ in range(5)]

            nested_music = rmakers.note(durations)
            nested_music_logical_ties = abjad.select.logical_ties(nested_music)
            leaf_denominator = len(nested_music_logical_ties)
            leaf_duration = first_leaf_of_tie_duration / leaf_denominator
            grace_components = abjad.Container(nested_music)
            grace_components = abjad.mutate.eject_contents(grace_components)

            container = trinton.on_beat_grace_container(
                contents=grace_components,
                anchor_voice_selection=tie,
                leaf_duration=leaf_duration,
                do_not_slur=False,
                name=grace_name,
            )

            name_count += 1

    return graces


def morpheme_b_rhythm(
    voice,
    measures,
    fuse_groups,
    stage=1,
    rotation=0,
    manual="single",
    rests=False,
    counter=1,
):

    trinton.make_music(
        lambda _: trinton.select_target(_, measures),
        evans.RhythmHandler(
            b_rhythm(stage=stage, rotation=rotation, manual=manual, rests=rests)
        ),
        trinton.notehead_bracket_command(),
        voice=voice,
        preprocessor=trinton.fuse_preprocessor(fuse_groups),
    )

    if stage == 2:
        trinton.make_music(
            lambda _: trinton.select_target(_, measures),
            b_rhythm_graces(counter=counter),
            beam_b_rhythm(),
            voice=voice,
        )


def c_rhythm(register, stage=1, rotation=0):
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


def morpheme_c_intermittent_rhythm(
    score,
    voice_name,
    measures,
    fuse_groups,
    stage=(1, 1),
    rotation=(0, 0),
    voice_number=1,
):
    if isinstance(stage, tuple):
        pass

    else:
        raise Exception(
            "Stage must be a tuple wherein the first item corresponds to the upper voice and the second to the lower."
        )

    if isinstance(rotation, tuple):
        pass

    else:
        raise Exception(
            "Rotation must be a tuple wherein the first item corresponds to the upper voice and the second to the lower."
        )

    trinton.make_music(
        lambda _: trinton.select_target(_, measures),
        evans.RhythmHandler(
            c_rhythm(register="upper", rotation=rotation[0], stage=stage[0]),
        ),
        evans.IntermittentVoiceHandler(
            rhythm_handler=evans.RhythmHandler(evans.talea([-100], 4)),
            voice_name=f"morpheme c lower voice {voice_number}",
            direction=abjad.DOWN,
        ),
        trinton.notehead_bracket_command(),
        voice=score[voice_name],
        preprocessor=trinton.fuse_preprocessor(fuse_groups),
    )

    trinton.make_music(
        lambda _: trinton.select_target(_, measures),
        evans.RhythmHandler(
            c_rhythm(register="lower", rotation=rotation[-1], stage=stage[-1]),
        ),
        trinton.notehead_bracket_command(),
        voice=score[f"morpheme c lower voice {voice_number}"],
        preprocessor=trinton.fuse_preprocessor(fuse_groups),
    )


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


# tempi

metronome_marks = {
    "48": abjad.MetronomeMark.make_tempo_equation_markup((1, 8), 48),
    "80": abjad.MetronomeMark.make_tempo_equation_markup((1, 8), 80),
    "120": abjad.MetronomeMark.make_tempo_equation_markup((1, 8), 120),
    # slower
    "4.=8": abjad.MetricModulation(
        left_rhythm=abjad.Note("c4."), right_rhythm=abjad.Note("c8")
    ),
    "3:5(8)=8": abjad.MetricModulation(
        left_rhythm=abjad.Tuplet("3:5", "c8"),
        right_rhythm=abjad.Note("c8"),
    ),
    "2:5(8)=8": abjad.MetricModulation(
        left_rhythm=abjad.Tuplet("2:5", "c8"),
        right_rhythm=abjad.Note("c8"),
    ),
    # faster
    "5:2(8)=8": abjad.MetricModulation(
        left_rhythm=abjad.Tuplet("5:2", "c8"),
        right_rhythm=abjad.Note("c8"),
    ),
    "5:3(8)=8": abjad.MetricModulation(
        left_rhythm=abjad.Tuplet("5:3", "c8"),
        right_rhythm=abjad.Note("c8"),
    ),
    "3:2(8)=8": abjad.MetricModulation(
        left_rhythm=abjad.Tuplet("3:2", "c8"),
        right_rhythm=abjad.Note("c8"),
    ),
}


def metronome_markups(
    met_string, mod_string=None, string_only=False, parenthesis=False, padding=1
):
    if parenthesis is False:
        if string_only is False:
            if mod_string is None:
                mark = abjad.LilyPondLiteral(
                    [
                        r"^ \markup {",
                        rf"  \raise #{padding} \with-dimensions-from \null",
                        r"  \override #'(font-size . 3.5)",
                        r"  \concat {",
                        f"      {met_string.string[8:]}",
                        r"  }",
                        r"}",
                    ],
                    site="after",
                )
            else:
                mark = abjad.LilyPondLiteral(
                    [
                        r"^ \markup {",
                        rf"  \raise #{padding} \with-dimensions-from \null",
                        r"  \override #'(font-size . 3.5)",
                        r"  \concat {",
                        f"      {met_string.string[8:]}",
                        f"      [{abjad.lilypond(mod_string)[8:]}]",
                        r"  }",
                        r"}",
                    ],
                    site="after",
                )
        else:
            if mod_string is not None:
                mark = f"\markup {{ \override #'(font-size . 3.5) \concat {{ {met_string.string[8:]} [{abjad.lilypond(mod_string)[8:]}] }} }}"
            else:
                mark = f"\markup {{ \override #'(font-size . 3.5) \concat {{ {met_string.string[8:]} }} }}"
    else:
        mark = f"\markup {{ \override #'(font-size . 3.5) \concat {{ ( {met_string.string[8:]} ) }} }}"

    return mark
