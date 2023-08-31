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

score = library.drava_score(time_signatures=ts.first_motion_time_signatures[36:52])

# music commands

# manual 1

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(evans.talea([-8, 3, -9, 7, -1], 64)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.b_rhythm_graces(counter=1),
    library.pitch_morpheme_b(stage=2, rotation=24),
    library.double_octave_up(
        selector=trinton.select_leaves_by_index([0, 1, 2, 3, 4, 5, 6], pitched=True)
    ),
    library.octave_up(
        selector=trinton.select_leaves_by_index([7, 8, 9, 10, 11, 12], pitched=True)
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("ffff")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.ottava_command(
        selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    voice=score["piano 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    library.octave_up(selector=trinton.select_leaves_by_index([3])),
    voice=score["graces 1"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    library.octave_up(selector=trinton.select_leaves_by_index([2, 3])),
    library.double_octave_up(selector=trinton.select_leaves_by_index([4])),
    voice=score["graces 2"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 9)),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin(">"), abjad.Dynamic("pp")],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    voice=score["piano 2 voice"],
)

# manual 2

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(evans.talea([7, -1, 3, -1, 7, -1, 7, -1], 64)),
    evans.PitchHandler(["ef''", "df''"]),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("ffff")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.StartTrillSpan(interval=abjad.NamedInterval("-d5")),
                abjad.StartTrillSpan(interval=abjad.NamedInterval("M2")),
                abjad.StartTrillSpan(interval=abjad.NamedInterval("m2")),
            ]
        ),
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.StopTrillSpan(),
        ],
        selector=trinton.logical_ties(pitched=False, first=True),
    ),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 9)),
    evans.RhythmHandler(
        evans.talea(
            [
                11,
                -1,
                7,
                -1,
                7,
                -1,
                11,
                -1,
                7,
                -1,
                7,
                -1,
                7,
                -1,
                11,
                -1,
                11,
                -1,
                7,
                -1,
                11,
                -1,
                11,
                -1,
                11,
                -1,
                11,
                -1,
                7,
                -1,
                7,
                -1,
            ],
            64,
        ),
    ),
    library.b_rhythm_graces(
        selector=trinton.patterned_tie_index_selector([1], 2, pitched=True), counter=3
    ),
    library.pitch_morpheme_b(stage=2, rotation=33),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.StartTrillSpan(interval=abjad.NamedInterval("-d5")),
                abjad.StartTrillSpan(interval=abjad.NamedInterval("M2")),
                abjad.StartTrillSpan(interval=abjad.NamedInterval("m2")),
            ]
        ),
        selector=trinton.patterned_tie_index_selector(
            [0], 2, pitched=True, first=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.StopTrillSpan(),
        ],
        selector=trinton.logical_ties(pitched=False, first=True),
    ),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 6)),
    library.octave_up(),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 9)),
    library.octave_up(selector=trinton.select_leaves_by_index([3])),
    voice=score["graces 3"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 9)),
    library.octave_up(selector=trinton.select_leaves_by_index([2, 4])),
    voice=score["graces 4"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 9)),
    library.octave_up(selector=trinton.select_leaves_by_index([3, 4])),
    voice=score["graces 6"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 9)),
    library.octave_up(selector=trinton.select_leaves_by_index([2, 3, 4])),
    voice=score["graces 8"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 9)),
    library.octave_down(selector=trinton.select_leaves_by_index([3, 4, 5])),
    voice=score["graces 9"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 9)),
    library.octave_down(
        selector=trinton.select_leaves_by_index(
            [
                1,
            ]
        )
    ),
    voice=score["graces 10"],
)

for voice_name in ["piano 3 voice", "piano 5 voice"]:
    for measure in [11, 12, 14]:
        trinton.make_music(
            lambda _: trinton.select_target(_, (measure,)),
            evans.RhythmHandler(evans.talea([7, -100], 64)),
            evans.RewriteMeterCommand(boundary_depth=-2),
            voice=score[voice_name],
        )

for measure in [11, 14]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        evans.PitchHandler(["ef'"]),
        trinton.linear_attachment_command(
            attachments=[
                abjad.Dynamic("ff"),
                abjad.StartTrillSpan(interval=abjad.NamedInterval("+m2")),
                abjad.StopTrillSpan(),
            ],
            selector=trinton.select_leaves_by_index([0, 0, 1]),
        ),
        voice=score["piano 3 voice"],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (12,)),
    evans.PitchHandler(["df'"]),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("ff")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    library.b_rhythm_graces(counter=11),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12,)),
    library.pitch_morpheme_b(stage=2, rotation=65),
    library.octave_down(selector=trinton.select_leaves_by_index([1, 2, 4])),
    library.double_octave_down(selector=trinton.select_leaves_by_index([3, 5])),
    trinton.ottava_command(
        octave=-1, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    voice=score["graces 11"],
)

# manual 3

library.morpheme_a_intermittent_rhythm(
    score=score,
    voice_name="piano 4 voice",
    measures=(3, 10),
    fuse_groups=(2, 1),
    stage=1,
    cycle_order=1,
    rotation=10,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 10)),
    evans.PitchHandler(pitch.return_morpheme_a_pitch_lists(rotation=4)[1]),
    library.double_octave_up(),
    trinton.ottava_command(selector=trinton.select_leaves_by_index([0, -1])),
    voice=score["piano 4 voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 10)),
    evans.PitchHandler(pitch.return_morpheme_a_pitch_lists(rotation=5)[0]),
    library.double_octave_up(),
    voice=score["morpheme a outer voice 1"],
)

library.morpheme_a_intermittent_rhythm(
    score=score,
    voice_name="piano 4 voice",
    measures=(11, 12),
    fuse_groups=(1,),
    stage=1,
    cycle_order=1,
    rotation=8,
    voice_number=2,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 12)),
    evans.PitchHandler(pitch.return_morpheme_a_pitch_lists(rotation=7)[1]),
    library.octave_up(),
    voice=score["piano 4 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 12)),
    evans.PitchHandler(pitch.return_morpheme_a_pitch_lists(rotation=8)[0]),
    library.octave_up(),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("pp")], selector=trinton.select_leaves_by_index([0])
    ),
    voice=score["morpheme a outer voice 2"],
)

library.morpheme_a_intermittent_rhythm(
    score=score,
    voice_name="piano 4 voice",
    measures=(13, 16),
    fuse_groups=(4,),
    stage=2,
    cycle_order=0,
    rotation=2,
    voice_number=3,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13, 16)),
    evans.PitchHandler(pitch.return_morpheme_a_pitch_lists(rotation=8)[1]),
    library.octave_up(),
    library.octave_up(selector=trinton.select_leaves_by_index([0])),
    trinton.linear_attachment_command(
        attachments=[abjad.StartSlur(), abjad.StopSlur()],
        selector=trinton.select_leaves_by_index([1, 5]),
        # direction=abjad.DOWN
    ),
    voice=score["piano 4 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13, 16)),
    evans.PitchHandler(pitch.return_morpheme_a_pitch_lists(rotation=9)[0]),
    library.octave_up(),
    trinton.force_accidentals_command(selector=trinton.select_leaves_by_index([0])),
    voice=score["morpheme a outer voice 3"],
)

# pedals

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(evans.talea([7, -1, 3, -1, 7, -1, 7, -1], 64)),
    library.aftergrace(),
    evans.PitchHandler(["f,", "c,"]),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass"), abjad.Dynamic("ffff")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.glissando_command(
        selector=trinton.group_selections(
            selector=trinton.logical_ties(pitched=True), groups=[2 for _ in range(100)]
        )
    ),
    trinton.attachment_command(
        attachments=[
            abjad.StartSlur(),
        ],
        selector=trinton.logical_ties(grace=False, pitched=True, first=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.StopSlur()],
        selector=trinton.pleaves(grace=True),
    ),
    voice=score["piano 5 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 9)),
    evans.RhythmHandler(
        evans.talea(
            [
                11,
                -1,
                7,
                -1,
                7,
                -1,
                11,
                -1,
                7,
                -1,
                7,
                -1,
                7,
                -1,
                11,
                -1,
                11,
                -1,
                7,
                -1,
                11,
                -1,
                11,
                -1,
                11,
                -1,
                11,
                -1,
                7,
                -1,
                7,
                -1,
            ],
            64,
        ),
    ),
    library.aftergrace(),
    evans.PitchHandler(["f,", "c,"]),
    trinton.glissando_command(
        selector=trinton.group_selections(
            selector=trinton.logical_ties(pitched=True), groups=[2 for _ in range(100)]
        )
    ),
    trinton.attachment_command(
        attachments=[
            abjad.StartSlur(),
        ],
        selector=trinton.logical_ties(grace=False, pitched=True, first=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.StopSlur()],
        selector=trinton.pleaves(grace=True),
    ),
    voice=score["piano 5 voice"],
)

for measure in [11, 12, 14]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        library.aftergrace(),
        evans.PitchHandler(["f,", "c,"]),
        trinton.attachment_command(
            attachments=[
                abjad.Dynamic("ff"),
                abjad.Glissando(),
                abjad.StartSlur(),
            ],
            selector=trinton.logical_ties(grace=False, pitched=True, first=True),
        ),
        trinton.attachment_command(
            attachments=[abjad.StopSlur()],
            selector=trinton.pleaves(grace=True),
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
    lambda _: trinton.select_target(_, (1, 2)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r'\tweak text "×7" \startMeasureSpanner', "absolute_before"
            ),
            abjad.BarLine(".|:", site="before"),
            abjad.LilyPondLiteral(
                r"\once \override Score.BarLine.transparent = ##f", "before"
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.BarLine(":|."),
            abjad.LilyPondLiteral(
                r"\once \override Score.BarLine.transparent = ##f", "absolute_after"
            ),
            abjad.LilyPondLiteral(r"\stopMeasureSpanner", "absolute_after"),
        ],
        selector=trinton.select_leaves_by_index([-1]),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13,)),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                met_string=library.metronome_marks["80"],
                mod_string=library.metronome_marks["5:3(8)=8"],
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 9)),
    trinton.spanner_command(
        strings=[
            library.metronome_markups(
                met_string=library.metronome_marks["120"],
                string_only=True,
                parenthesis=True,
            ),
            library.metronome_markups(
                met_string=library.metronome_marks["48"],
                mod_string=library.metronome_marks["2:5(8)=8"],
                string_only=True,
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
        style="solid-line-with-arrow",
        padding=2,
        full_string=True,
    ),
    voice=score["Global Context"],
)

trinton.remove_redundant_time_signatures(score=score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/drava/drava/sections/04",
    build_path="/Users/trintonprater/scores/drava/drava/build",
    segment_name="04",
    includes=[
        "/Users/trintonprater/scores/drava/drava/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
