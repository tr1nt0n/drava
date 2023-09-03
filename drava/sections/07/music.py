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

score = library.drava_score(time_signatures=ts.second_motion_time_signatures[16:28])

# music commands

# tempo

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 12)),
    evans.RhythmHandler(
        evans.talea(
            [
                4,
                2,
                6,
                4,
                2,
                6,
                4,
                4,
                4,
                4,
                4,
                14,
                2,
                1,
                1,
                1,
                1,
                6,
                3,
                1,
                6,
                8,
                6,
                4,
                2,
                2,
                1,
                2,
                1,
                2,
                1,
                2,
                1,
                7,
                1,
                6,
                3,
                1,
                12,
                7,
                1,
                7,
                1,
                -1000,
            ],
            32,
        ),
    ),
    evans.PitchHandler(
        [
            2,
            2,
            5,
            5,
            5,
            4,
            7,
            4,
            9,
            5,
            11,
            2,
            14,
            7,
            14,
            7,
            14,
            11,
            11,
            11,
            14,
            14,
            14,
            14,
            14,
            16,
            9,
            12,
            5,
            12,
            5,
            9,
            2,
            5,
            5,
            9,
            9,
            9,
            9,
            11,
            14,
            15,
            19,
        ]
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Glissando(zero_padding=True),
        ],
        selector=trinton.pleaves(exclude=[-1]),
    ),
    abjad.beam,
    voice=score["piano 1 voice"],
    preprocessor=trinton.fuse_preprocessor((12,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 8)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin("--"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                -1,
                -1,
            ]
        ),
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12,)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                -1,
            ]
        ),
    ),
    voice=score["piano 1 voice"],
)

# manual 1

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 9)),
    trinton.ottava_command(octave=-1, selector=trinton.select_leaves_by_index([0, -1])),
    voice=score["piano 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 12)),
    evans.RhythmHandler(library.c_rhythm(register="lower", rotation=10, stage=3)),
    evans.PitchHandler(pitch.return_morpheme_c_pitch_list(rotation=63)),
    library.octave_down(),
    library.octave_down(
        selector=trinton.select_leaves_by_index(
            [2, 5, 6, 7, 10, 12, 13, 14, 15], pitched=True
        )
    ),
    library.c_ornaments(
        selector=trinton.patterned_tie_index_selector(
            [0, 5, 7], 8, pitched=True, first=True
        ),
        rotation=4,
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ]
        ),
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 2 voice"],
    preprocessor=trinton.fuse_preprocessor((2, 1)),
)

# manual 2

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 3)),
    evans.RhythmHandler(library.c_rhythm(register="lower", rotation=9, stage=1)),
    evans.PitchHandler(pitch.return_morpheme_c_pitch_list(rotation=38)),
    library.octave_up(selector=trinton.select_leaves_by_index([1], pitched=True)),
    trinton.notehead_bracket_command(),
    voice=score["piano 3 voice"],
    preprocessor=trinton.fuse_preprocessor((2,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 6)),
    evans.RhythmHandler(library.c_rhythm(register="lower", rotation=12, stage=2)),
    evans.PitchHandler(pitch.return_morpheme_c_pitch_list(rotation=41)),
    library.octave_down(selector=trinton.select_leaves_by_index([0, 7], pitched=True)),
    library.octave_up(selector=trinton.select_leaves_by_index([5], pitched=True)),
    library.change_staff(
        staves=["piano 2", "piano 3", "piano 2", "piano 3"],
        selector=trinton.select_leaves_by_index([10, 11, 18, 19]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\override Stem.direction = #DOWN", site="before"),
            abjad.LilyPondLiteral(r"\revert Stem.direction", site="after"),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Articulation("prallup"), abjad.Articulation("mordent")],
        selector=trinton.select_leaves_by_index([5, -1], pitched=True),
        direction=abjad.UP,
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 3 voice"],
    preprocessor=trinton.fuse_preprocessor((2, 1)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 9)),
    evans.RhythmHandler(library.c_rhythm(register="lower", rotation=10, stage=2)),
    trinton.call_rmaker(
        rmaker=rmakers.force_augmentation, selector=trinton.select_tuplets_by_index([0])
    ),
    evans.PitchHandler(pitch.return_morpheme_c_pitch_list(rotation=51)),
    library.octave_down(
        selector=trinton.select_leaves_by_index([2, 3, 5, 8, 9, 11], pitched=True)
    ),
    library.change_staff(
        staves=[
            "piano 2",
            "piano 3",
            "piano 2",
            "piano 3",
            "piano 2",
            "piano 3",
            "piano 2",
            "piano 3",
            "piano 2",
            "piano 3",
        ],
        selector=trinton.select_leaves_by_index([6, 7, 10, 11, 16, 17, 20, 21, 22, 23]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\override Stem.direction = #DOWN", site="before"),
            abjad.LilyPondLiteral(r"\revert Stem.direction", site="after"),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    library.c_ornaments(
        selector=trinton.select_leaves_by_index([3, 5, 8, 10], pitched=True),
        rotation=0,
        direction=abjad.UP,
    ),
    trinton.ottava_command(
        octave=-1, selector=trinton.select_leaves_by_index([2, 2, 9, 9], pitched=True)
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 3 voice"],
    preprocessor=trinton.fuse_preprocessor((1, 2)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 12)),
    evans.RhythmHandler(library.c_rhythm(register="upper", rotation=15, stage=2)),
    trinton.call_rmaker(
        rmaker=rmakers.force_augmentation,
        selector=trinton.select_tuplets_by_index([-1]),
    ),
    evans.PitchHandler(["ef''"]),
    trinton.pitch_with_selector_command(
        pitch_list=["df''"],
        selector=trinton.patterned_tie_index_selector([3, 5], 8, pitched=True),
    ),
    library.octave_up(),
    library.octave_up(selector=trinton.select_tuplets_by_index([-1])),
    library.c_ornaments(
        selector=trinton.patterned_tie_index_selector(
            [1, 6, 8], 9, pitched=True, first=True
        ),
        rotation=10,
    ),
    trinton.ottava_command(
        selector=trinton.select_leaves_by_index([3, -1], pitched=True)
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 3 voice"],
    preprocessor=trinton.fuse_preprocessor((1, 2)),
)

# manual 3

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.RhythmHandler(library.c_rhythm(register="upper", rotation=11, stage=1)),
    trinton.call_rmaker(
        rmaker=rmakers.force_diminution, selector=trinton.select_tuplets_by_index([-1])
    ),
    evans.PitchHandler(["ef''"]),
    trinton.pitch_with_selector_command(
        pitch_list=["df''"],
        selector=trinton.patterned_tie_index_selector([5, 13], 18, pitched=True),
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 4 voice"],
    preprocessor=trinton.fuse_preprocessor(
        (
            2,
            1,
        )
    ),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 6)),
    evans.RhythmHandler(library.c_rhythm(register="upper", rotation=12, stage=1)),
    trinton.call_rmaker(
        rmaker=rmakers.force_diminution, selector=trinton.select_tuplets_by_index([-1])
    ),
    evans.PitchHandler(["ef''"]),
    trinton.pitch_with_selector_command(
        pitch_list=["df''"],
        selector=trinton.patterned_tie_index_selector([1, 11], 18, pitched=True),
    ),
    library.octave_up(selector=trinton.select_leaves_by_index([6, 11], pitched=True)),
    library.change_staff(
        staves=["piano 3", "piano 4", "piano 3", "piano 4"],
        selector=trinton.select_leaves_by_index([13, 14, 23, 24]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\override Stem.direction = #DOWN", site="before"),
            abjad.LilyPondLiteral(r"\revert Stem.direction", site="after"),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Articulation("mordent"), abjad.Articulation("prallup")],
        selector=trinton.select_leaves_by_index([6, 11], pitched=True),
        direction=abjad.UP,
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 4 voice"],
    preprocessor=trinton.fuse_preprocessor((1, 2)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 9)),
    evans.RhythmHandler(library.c_rhythm(register="upper", rotation=14, stage=2)),
    evans.PitchHandler(["ef''"]),
    trinton.pitch_with_selector_command(
        pitch_list=["df''"],
        selector=trinton.patterned_tie_index_selector([4, 14], 18, pitched=True),
    ),
    library.octave_up(
        selector=trinton.select_logical_ties_by_index(
            [3, 5, 7, 10, 13, 16], pitched=True
        )
    ),
    library.change_staff(
        staves=[
            "piano 3",
            "piano 4",
            "piano 3",
            "piano 4",
            "piano 3",
            "piano 4",
            "piano 3",
            "piano 4",
            "piano 3",
            "piano 4",
            "piano 3",
            "piano 4",
        ],
        selector=trinton.select_leaves_by_index(
            [6, 7, 10, 11, 14, 15, 22, 24, 31, 33, 40, 42]
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\override Stem.direction = #DOWN", site="before"),
            abjad.LilyPondLiteral(r"\revert Stem.direction", site="after"),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    library.c_ornaments(
        selector=trinton.select_logical_ties_by_index(
            [3, 5, 7, 10, 13, 16], pitched=True, first=True
        ),
        rotation=4,
        direction=abjad.UP,
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 4 voice"],
    preprocessor=trinton.fuse_preprocessor((2, 1)),
)

# pedal

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 12)),
    evans.RhythmHandler(evans.talea([-6, 6, -4, 4, -5, 5, -6, 6, -8, 8], 32)),
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
            abjad.Dynamic("ffff"),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.ottava_command(
        octave=-1, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.beam_groups(
        selector=trinton.ranged_selector(ranges=[range(1, 10)], nested=True),
        beam_rests=True,
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

trinton.remove_redundant_time_signatures(score=score)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 12)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\break", site="before"),
            abjad.LilyPondLiteral(r"\noBreak", site="after"),
        ],
        selector=trinton.select_leaves_by_index([0, 7]),
    ),
    voice=score["Global Context"],
)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/drava/drava/sections/07",
    build_path="/Users/trintonprater/scores/drava/drava/build",
    segment_name="07",
    includes=[
        "/Users/trintonprater/scores/drava/drava/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
