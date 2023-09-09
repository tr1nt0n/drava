import abjad
import baca
import evans
import trinton
from abjadext import rmakers
import fractions
import itertools
import math
import quicktions
from drava import library
from drava import pitch
from drava import ts

# score

score = library.drava_score(
    time_signatures=([(1, 4), (1, 4), (1, 4), (37, 8), (1, 4), (1, 4)])
)

# fermate

trinton.fermata_measures(
    score=score,
    measures=[
        1,
    ],
    fermata="ulongfermata",
    font_size="30",
    clef_whitespace=False,
    blank=False,
)

trinton.fermata_measures(
    score=score,
    measures=[
        2,
    ],
    fermata="uverylongfermata",
    font_size="30",
    clef_whitespace=False,
    blank=False,
)

trinton.fermata_measures(
    score=score,
    measures=[
        3,
    ],
    fermata="ushortfermata",
    font_size="30",
    clef_whitespace=False,
)

trinton.fermata_measures(
    score=score,
    measures=[
        5,
    ],
    fermata="ulongfermata",
    font_size="30",
    clef_whitespace=False,
    blank=False,
)

trinton.fermata_measures(
    score=score,
    measures=[
        6,
    ],
    fermata="uverylongfermata",
    font_size="30",
    clef_whitespace=False,
    last_measure=True,
)

# music commands

# manual 1

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(rmakers.note),
    library.aftergrace(),
    evans.PitchHandler(
        [
            ["f", "a", "d'", "c'", "fs'", "g''", "cs'''", "ds'''", "b'''"],
            ["f", "a", "d'", "c'", "fs'", "g''", "cs'''", "ds'''", "b'''"],
            ["g", "c'", "d'", "a'", "f''", "fs''", "bf''", "ef'''", "f'''", "fs'''"],
            ["g", "c'", "d'", "a'", "f''", "fs''", "bf''", "ef'''", "f'''", "fs'''"],
        ],
    ),
    trinton.noteheads_only(),
    trinton.transparent_noteheads(selector=trinton.pleaves(grace=True)),
    trinton.linear_attachment_command(
        attachments=[
            trinton.make_custom_dynamic("fffff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Glissando(zero_padding=True)],
        selector=trinton.pleaves(grace=False),
    ),
    trinton.force_accidentals_command(
        selector=trinton.select_leaves_by_index([-1], grace=False)
    ),
    voice=score["piano 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 6)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ffff"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pppp"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 1, -1]),
        direction=abjad.UP,
    ),
    voice=score["piano 2 voice"],
)

# manual 2

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(library.last_measure_graces()),
    voice=score["piano 3 voice"],
)

measures = abjad.select.group_by_measure(score["piano 3 voice"])

measure_4 = measures[3]

measure_4_leaf_length = len(abjad.select.leaves(measure_4))

measure_4_half_length = math.floor(measure_4_leaf_length / 2)

double_octave_range = range(measure_4_half_length)

octave_range_begin = list(double_octave_range)[-1] + 1

octave_range_end = math.floor(measure_4_leaf_length / 3) + octave_range_begin

octave_range = range(octave_range_begin, octave_range_end)


def transpose_d_and_e():
    def transpose(argument):
        leaves = abjad.select.leaves(argument, pitched=True, grace=False)
        for leaf in leaves:
            if leaf.written_pitch == abjad.NamedPitch("d'"):
                abjad.mutate.transpose(leaf, -2)
            if leaf.written_pitch == abjad.NamedPitch("e'"):
                abjad.mutate.transpose(leaf, 2)

    return transpose


def contour_selector():
    def selector(argument):
        out = []

        for _ in abjad.select.leaves(argument, pitched=True, grace=False):
            if (
                _.written_pitch == abjad.NamedPitch("c'")
                or _.written_pitch == abjad.NamedPitch("cs'")
                or _.written_pitch == abjad.NamedPitch("ef'")
            ):
                out.append(_)

        return out

    return selector


def durational_next_leaf():
    def selector(argument):
        relevant_leaves = trinton.durational_selector(
            durations=[abjad.Duration((1, 16)), abjad.Duration((1, 8))]
        )(argument)

        next_leaves = []

        for leaf in relevant_leaves:
            leaf = leaf[0]
            next_leaf = abjad.select.with_next_leaf(leaf)[-1]
            if next_leaf.written_pitch == abjad.NamedPitch(
                "d'"
            ) or next_leaf.written_pitch == abjad.NamedPitch("e'"):
                pass
            else:
                next_leaves.append(next_leaf)

        return next_leaves

    return selector


def all_except_last_two():
    def selector(argument):
        out = []

        for leaf in abjad.select.leaves(argument):
            leaf_duration = abjad.get.duration(leaf, preprolated=True)
            if leaf_duration == abjad.Duration(
                (1, 16)
            ) or leaf_duration == abjad.Duration((1, 8)):
                out.append(leaf)

        out = out[0:-2]

        return out

    return selector


trinton.make_music(
    lambda _: trinton.select_target(_, (4, 5)),
    evans.PitchHandler(pitch.return_final_measure_pitches()),
    transpose_d_and_e(),
    library.octave_up(selector=contour_selector()),
    trinton.pitch_with_selector_command(
        pitch_list=["e'", "d'"],
        selector=trinton.durational_selector(durations=[abjad.Duration((1, 16))]),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["d'", "e'"],
        selector=trinton.durational_selector(durations=[abjad.Duration((1, 8))]),
    ),
    library.change_staff(
        staves=["piano 2" for _ in range(28)], selector=all_except_last_two()
    ),
    library.change_staff(
        staves=["piano 3" for _ in range(28)], selector=durational_next_leaf()
    ),
    library.double_octave_up(
        selector=trinton.ranged_selector(
            ranges=[
                double_octave_range,
            ]
        )
    ),
    library.octave_up(selector=trinton.ranged_selector(ranges=[octave_range])),
    library.octave_up(
        selector=trinton.select_leaves_by_index(
            [
                -7,
            ],
            pitched=True,
        )
    ),
    library.octave_down(
        selector=trinton.select_leaves_by_index([54, 91, -3], pitched=True)
    ),
    library.double_octave_down(
        selector=trinton.select_leaves_by_index([-5, -1], pitched=True)
    ),
    trinton.ottava_command(
        octave=2, selector=trinton.select_leaves_by_index([0, 53], pitched=True)
    ),
    trinton.ottava_command(
        octave=2, selector=trinton.select_leaves_by_index([2, 52], pitched=True)
    ),
    trinton.ottava_command(
        selector=trinton.select_leaves_by_index([54, 90], pitched=True)
    ),
    trinton.ottava_command(
        selector=trinton.select_leaves_by_index([55, 89], pitched=True)
    ),
    library.imbricate_ending(),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    library.slur_ending(),
    trinton.pitch_with_selector_command(
        pitch_list=[
            [
                "c'''",
            ],
            [
                "ef''",
                "c'''",
            ],
            [
                "d",
                "ef''",
                "c'''",
            ],
            [
                "d",
                "ef''",
                "fs''",
                "c'''",
            ],
            [
                "d",
                "e'",
                "ef''",
                "fs''",
                "c'''",
            ],
            [
                "d",
                "e'",
                "cs''",
                "ef''",
                "fs''",
                "c'''",
            ],
            [
                "d",
                "g",
                "e'",
                "cs''",
                "ef''",
                "fs''",
                "c'''",
            ],
        ],
        selector=trinton.select_leaves_by_index([-7, -6, -5, -4, -3, -2, -1]),
    ),
    trinton.attachment_command(
        attachments=[abjad.Tie()],
        selector=trinton.select_leaves_by_index(
            [
                -7,
                -6,
                -5,
                -4,
                -3,
                -2,
            ]
        ),
    ),
    voice=score["piano 3 voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    evans.RhythmHandler(rmakers.note),
    library.aftergrace(selector=trinton.select_leaves_by_index([-1])),
    evans.PitchHandler(
        [
            [
                "d",
                "g",
                "e'",
                "cs''",
                "ef''",
                "fs''",
                "c'''",
            ]
        ],
    ),
    trinton.noteheads_only(),
    trinton.transparent_noteheads(selector=trinton.grace_selector()),
    voice=score["piano 3 voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 5)),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(110, 113)], nested=True),
        zero_padding=True,
    ),
    voice=score["piano 3 voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    library.c_ornaments(rotation=3, selector=trinton.pleaves()),
    voice=score["final measure imbrication"],
)

# manual 3

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(evans.talea([33, -100], 8)),
    library.aftergrace(),
    evans.PitchHandler(
        [["g''", "cs'''", "ds'''", "b'''"]],
    ),
    trinton.invisible_rests(),
    trinton.noteheads_only(),
    trinton.transparent_noteheads(selector=trinton.pleaves(exclude=[0])),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 3)], nested=True),
        zero_padding=True,
    ),
    voice=score["piano 4 voice"],
)

# pedals

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(rmakers.note),
    library.aftergrace(),
    evans.PitchHandler(
        [["e,,", "gs,", "as,"], ["e,,", "gs,", "as,"], ["d,,", "ef,"], ["d,,", "ef,"]],
    ),
    trinton.ottava_command(
        octave=-1,
        selector=trinton.pleaves(),
    ),
    trinton.noteheads_only(),
    trinton.transparent_noteheads(selector=trinton.pleaves(grace=True)),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Glissando(zero_padding=True)],
        selector=trinton.pleaves(grace=False),
    ),
    voice=score["piano 5 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 5)),
    evans.RhythmHandler(rmakers.note),
    library.aftergrace(),
    evans.PitchHandler(
        [["e,,", "gs,", "as,"], ["e,,", "gs,", "as,"], ["d,,", "ef,"], ["d,,", "ef,"]],
    ),
    trinton.ottava_command(
        octave=-1, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.noteheads_only(),
    trinton.transparent_noteheads(selector=trinton.pleaves(grace=True)),
    trinton.glissando_command(
        selector=trinton.ranged_selector(
            ranges=[range(0, 4), range(4, 6)], nested=True
        ),
        zero_padding=True,
    ),
    voice=score["piano 5 voice"],
)

# globals

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

library.reset_line_positions(score=score, voice_names=["piano 1 voice"])

trinton.whiteout_empty_staves(
    score=score,
    voice_names=["piano 1 voice"],
    cutaway="blank",
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                met_string=library.metronome_marks["60"], padding=3
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    trinton.attachment_command(
        attachments=[abjad.BarLine("|.", site="after")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

trinton.remove_redundant_time_signatures(score=score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/drava/drava/sections/10",
    build_path="/Users/trintonprater/scores/drava/drava/build",
    segment_name="10",
    includes=[
        "/Users/trintonprater/scores/drava/drava/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
