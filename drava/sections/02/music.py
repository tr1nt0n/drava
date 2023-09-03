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

score = library.drava_score(ts.first_motion_time_signatures[13:27])

# music commands

# tempo

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.RhythmHandler(evans.talea([3, 1, 7, 3, 1, 4, 2, 1], 16)),
    evans.PitchHandler([11, 9, 14, 5, 11, 11, 19, 19]),
    trinton.attachment_command(
        attachments=[abjad.Glissando(zero_padding=True)],
        selector=trinton.pleaves(exclude=[-1]),
    ),
    abjad.beam,
    voice=score["piano 1 voice"],
    preprocessor=trinton.fuse_preprocessor((3,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 14)),
    evans.RhythmHandler(
        evans.talea(
            [7, 7, 6, 2, 3, 3, 3, 4, 1, 3, 3, 6, 12, 8, 2, 12, 2, 3, 1, 3, 1], 32
        )
    ),
    evans.PitchHandler(
        [
            19,
            19,
            7,
            19,
            16,
            16,
            7,
            7,
            11,
            7,
            9,
            15,
            19,
            15,
            15,
            4,
            4,
            2,
            2,
            4,
            4,
        ]
    ),
    trinton.attachment_command(
        attachments=[abjad.Glissando(zero_padding=True)],
        selector=trinton.pleaves(exclude=[-1]),
    ),
    abjad.beam,
    voice=score["piano 1 voice"],
    preprocessor=trinton.fuse_preprocessor((3,)),
)

# manual 1

library.morpheme_c_intermittent_rhythm(
    score=score,
    voice_name="piano 2 voice",
    measures=(1, 3),
    fuse_groups=(1,),
    stage=(3, 3),
    rotation=(1, 6),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.PitchHandler(["ef''"]),
    trinton.pitch_with_selector_command(
        pitch_list=["df''"],
        selector=trinton.patterned_tie_index_selector([5, 13], 18, pitched=True),
    ),
    library.octave_down(),
    library.c_ornaments(
        selector=trinton.patterned_tie_index_selector(
            [
                0,
                1,
                6,
            ],
            8,
            pitched=True,
            first=True,
        ),
        rotation=8,
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 2 voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.PitchHandler(pitch.return_morpheme_c_pitch_list(rotation=0)),
    library.octave_down(
        selector=trinton.select_leaves_by_index([0, 4, 14, 16, -1], pitched=True)
    ),
    library.octave_up(
        selector=trinton.select_leaves_by_index([3, 6, 8, 9, 11, 17], pitched=True)
    ),
    trinton.attachment_command(
        attachments=[
            trinton.make_custom_dynamic("fffff"),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    library.c_ornaments(
        selector=trinton.patterned_tie_index_selector(
            [2, 5, 7], 8, pitched=True, first=True
        ),
        rotation=1,
    ),
    trinton.notehead_bracket_command(),
    voice=score["morpheme c lower voice 1"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 8)),
    evans.RhythmHandler(library.c_rhythm(register="lower", rotation=0, stage=1)),
    trinton.call_rmaker(
        rmaker=rmakers.force_diminution, selector=trinton.select_tuplets_by_index([0])
    ),
    evans.PitchHandler(pitch.return_morpheme_c_pitch_list(rotation=17)),
    library.octave_up(
        selector=trinton.select_leaves_by_index(
            [
                0,
                3,
            ],
            pitched=True,
        )
    ),
    library.double_octave_up(
        selector=trinton.select_leaves_by_index(
            [
                5,
            ],
            pitched=True,
        )
    ),
    library.octave_down(
        selector=trinton.select_leaves_by_index([2, -2, -1], pitched=True)
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Dynamic("fff"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ],
            pitched=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("p")],
        selector=trinton.select_leaves_by_index([-3], pitched=True),
    ),
    library.c_ornaments(
        selector=trinton.patterned_tie_index_selector(
            [
                2,
                3,
                6,
            ],
            8,
            pitched=True,
            first=True,
        ),
        rotation=3,
    ),
    library.change_staff(
        staves=[
            "piano 3",
            "piano 2",
            "piano 3",
            "piano 2",
            "piano 4",
            "piano 2",
            "piano 4",
        ],
        selector=trinton.select_leaves_by_index(
            [
                7,
                8,
                9,
                10,
                -5,
                -4,
                -1,
            ],
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\override Staff.Stem.direction = #UP", site="before"
            ),
            abjad.LilyPondLiteral(r"\revert Staff.Stem.direction", site="after"),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    trinton.ottava_command(
        selector=trinton.select_leaves_by_index([5, 5], pitched=True)
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 2 voice"],
    preprocessor=trinton.fuse_preprocessor((1, 3)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9,)),
    library.change_staff(
        staves=[
            "piano 2",
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ],
        ),
    ),
    voice=score["piano 2 voice"],
)

# manual 2

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 10)),
    evans.RhythmHandler(library.c_rhythm(register="upper", rotation=0, stage=2)),
    evans.PitchHandler(["ef''"]),
    trinton.pitch_with_selector_command(
        pitch_list=["df''"],
        selector=trinton.patterned_tie_index_selector([2, 10], 18, pitched=True),
    ),
    library.octave_up(selector=trinton.ranged_selector(ranges=[range(0, 16)])),
    library.c_ornaments(
        selector=trinton.patterned_tie_index_selector(
            [2, 7],
            8,
            pitched=True,
            first=True,
        ),
        rotation=0,
    ),
    trinton.notehead_bracket_command(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\override Staff.Stem.direction = #UP", site="before"
            ),
            abjad.LilyPondLiteral(r"\revert Staff.Stem.direction", site="after"),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    library.change_staff(
        staves=[
            "piano 4",
            "piano 3",
            "piano 4",
            "piano 3",
            "piano 4",
            "piano 3",
        ],
        selector=trinton.select_leaves_by_index(
            [
                -8,
                -7,
                -4,
                -3,
                -2,
                -1,
            ],
        ),
    ),
    voice=score["piano 3 voice"],
    preprocessor=trinton.fuse_preprocessor(
        (
            3,
            1,
            2,
            1,
        )
    ),
)

# manual 3

library.morpheme_a_intermittent_rhythm(
    score=score,
    voice_name="piano 4 voice",
    measures=(1, 3),
    fuse_groups=(3,),
    stage=1,
    cycle_order=1,
    rotation=3,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.PitchHandler(pitch.return_morpheme_a_pitch_lists(rotation=3)[1]),
    library.double_octave_up(),
    trinton.ottava_command(selector=trinton.select_leaves_by_index([0, -1])),
    voice=score["piano 4 voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.PitchHandler(pitch.return_morpheme_a_pitch_lists(rotation=1)[0]),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("ppp")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    library.double_octave_up(),
    voice=score["morpheme a outer voice 1"],
)

library.morpheme_a_intermittent_rhythm(
    score=score,
    voice_name="piano 4 voice",
    measures=(9, 10),
    fuse_groups=(1,),
    stage=2,
    cycle_order=0,
    rotation=5,
    voice_number=2,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 10)),
    evans.PitchHandler(pitch.return_morpheme_a_pitch_lists(rotation=4)[1]),
    library.double_octave_up(),
    library.double_octave_up(selector=trinton.select_leaves_by_index([4])),
    library.octave_up(selector=trinton.select_leaves_by_index([3, 6, 7])),
    trinton.ottava_command(selector=trinton.select_leaves_by_index([0, -1])),
    trinton.linear_attachment_command(
        attachments=[abjad.StartSlur(), abjad.StopSlur()],
        selector=trinton.select_leaves_by_index([1, 7]),
    ),
    voice=score["piano 4 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 10)),
    evans.PitchHandler(pitch.return_morpheme_a_pitch_lists(rotation=3)[0]),
    library.double_octave_up(),
    voice=score["morpheme a outer voice 2"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 14)),
    evans.RhythmHandler(library.c_rhythm(register="upper", rotation=3, stage=1)),
    evans.PitchHandler(["ef''"]),
    trinton.pitch_with_selector_command(
        pitch_list=["df''"],
        selector=trinton.patterned_tie_index_selector([2, 10], 18, pitched=True),
    ),
    library.octave_down(selector=trinton.select_tuplets_by_index([-1])),
    trinton.notehead_bracket_command(),
    voice=score["piano 4 voice"],
    preprocessor=trinton.fuse_preprocessor(
        (
            1,
            3,
        )
    ),
)

# pedal

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.RhythmHandler(evans.talea([5, -5, 5, -5, 12, -12], 32)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(
        [
            ["ef,,", "df,,"],
            ["gf,,", "df,,"],
            ["c,,", "df,,"],
            ["d,,", "df,,"],
        ]
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Clef("bass"),
            trinton.make_custom_dynamic("fffff"),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.ottava_command(
        octave=-1, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    abjad.beam,
    voice=score["piano 5 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(evans.talea([-1, 22, -1], 128)),
    trinton.rewrite_meter_command(),
    evans.PitchHandler([["c,", "df,"]]),
    trinton.attachment_command(
        attachments=[
            abjad.Dynamic("pppp"),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.change_notehead_command(notehead="lowest"),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r'\markup \center-column {{ \abs-fontsize #12 \musicglyph "scripts.uverylongfermata" }}'
            )
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r'\markup \center-column {{ \abs-fontsize #12 \musicglyph "scripts.ushortfermata" }}'
            )
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
        direction=abjad.UP,
    ),
    voice=score["piano 5 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 9)),
    evans.RhythmHandler(evans.talea([7, -7, 2, -2, 2, -2, 3, -3, 4, -4], 32)),
    trinton.rewrite_meter_command(),
    evans.PitchHandler(
        [
            ["d,,", "df,,"],
            ["ef,,", "df,,"],
            ["gf,,", "df,,"],
            ["c,,", "df,,"],
        ]
    ),
    trinton.attachment_command(
        attachments=[
            trinton.make_custom_dynamic("fffff"),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.ottava_command(
        octave=-1, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    abjad.beam,
    trinton.force_accidentals_command(selector=trinton.select_leaves_by_index([0])),
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
    lambda _: trinton.select_target(_, (6, 10)),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\noBreak", site="after")],
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                3,
            ]
        ),
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
#     lambda _: trinton.select_target(_, (2, 4)),
#     trinton.spanner_command(
#         strings=[
#             library.metronome_markups(
#                 met_string=library.metronome_marks["80"],
#                 string_only=True,
#                 parenthesis=True,
#             ),
#             library.metronome_markups(
#                 met_string=library.metronome_marks["48"],
#                 mod_string=library.metronome_marks["3:5(8)=8"],
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
    segment_path="/Users/trintonprater/scores/drava/drava/sections/02",
    build_path="/Users/trintonprater/scores/drava/drava/build",
    segment_name="02",
    includes=[
        "/Users/trintonprater/scores/drava/drava/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
