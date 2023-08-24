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

score = library.drava_score(time_signatures=ts.first_motion_time_signatures[36:38])

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
        selector=trinton.ranged_selector(ranges=[range(6, 9)], nested=True)
    ),
    trinton.attachment_command(
        attachments=[abjad.Glissando()],
        selector=trinton.pleaves(exclude=[2, 3], grace=False),
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

# trinton.make_music(
#     lambda _: trinton.select_target(_, (1,)),
#     trinton.attachment_command(
#         attachments=[
#             library.metronome_markups(
#                 met_string=library.metronome_marks["80"],
#                 mod_string=library.metronome_marks["5:3(8)=8"],
#             )
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#     ),
#     voice=score["Global Context"],
# )

# trinton.make_music(
#     lambda _: trinton.select_target(_, (4, 10)),
#     trinton.spanner_command(
#         strings=[
#             library.metronome_markups(
#                 met_string=library.metronome_marks["48"],
#                 string_only=True,
#             ),
#             library.metronome_markups(
#                 met_string=library.metronome_marks["120"],
#                 mod_string=library.metronome_marks["5:2(8)=8"],
#                 string_only=True,
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0, -1]),
#         style="solid-line-with-arrow",
#         padding=2,
#         full_string=True
#     ),
#     voice=score["Global Context"]
# )

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
