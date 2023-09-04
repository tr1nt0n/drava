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

time_signatures = [(1, 4), (19, 32), (1, 4)]

for _ in ts.second_motion_time_signatures[0:4]:
    time_signatures.append(_)

time_signatures.insert(6, (7, 16))

for index in [4, 7, 9]:
    time_signatures.insert(index, (1, 4))

time_signatures.append((1, 4))

score = library.drava_score(time_signatures=time_signatures)

# fermate

trinton.fermata_measures(
    score=score,
    measures=[1, 3, 10, 12],
    fermata="ufermata",
    font_size="30",
    clef_whitespace=False,
)

trinton.fermata_measures(
    score=score,
    measures=[5],
    fermata="ulongfermata",
    font_size="30",
    clef_whitespace=False,
)

trinton.fermata_measures(
    score=score,
    measures=[8],
    fermata="uverylongfermata",
    font_size="30",
    clef_whitespace=False,
)

# music commands

# tempo

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(evans.talea([16, 3, 1], 64)),
    evans.PitchHandler([11, 7, 7]),
    trinton.attachment_command(
        attachments=[
            abjad.Glissando(zero_padding=True),
        ],
        selector=trinton.pleaves(exclude=[-1]),
    ),
    abjad.beam,
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 7)),
    evans.RhythmHandler(evans.talea([8, 8, 4, 3, 1, 8, 7, 1], 64)),
    evans.PitchHandler([7, 4, 4, 11, 4, 4, 12, 5]),
    trinton.attachment_command(
        attachments=[
            abjad.Glissando(zero_padding=True),
        ],
        selector=trinton.pleaves(exclude=[-1]),
    ),
    abjad.beam,
    voice=score["piano 1 voice"],
)

# manual 1

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 3)),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("ff"), abjad.StartHairpin(">"), abjad.Dynamic("pp")],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
        direction=abjad.UP,
    ),
    voice=score["piano 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9,)),
    evans.RhythmHandler(rmakers.note),
    evans.PitchHandler(
        [["f'", "a'", "fs''", "d''", "c''", "g''", "cs'''", "ds'''", "b'''"]],
    ),
    trinton.ottava_command(selector=trinton.select_leaves_by_index([0, 0])),
    trinton.attachment_command(
        attachments=[trinton.make_custom_dynamic("fffff")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    voice=score["piano 2 voice"],
)

# manual 2

library.morpheme_b_rhythm(
    voice=score["piano 3 voice"],
    measures=(11,),
    fuse_groups=(1,),
    stage=3,
    rotation=8,
    manual="single",
    rests=False,
    counter=1,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11,)),
    trinton.pitch_with_selector_command(
        pitch_list=["df'", "ef'"], selector=trinton.select_tuplets_by_index([0])
    ),
    trinton.pitch_with_selector_command(
        pitch_list=pitch.return_morpheme_b_pitch_lists(rotation=11),
        selector=trinton.select_tuplets_by_index([-1]),
    ),
    library.octave_down(),
    library.octave_down(selector=trinton.select_leaves_by_index([7])),
    trinton.ottava_command(
        octave=-1, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("pp")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index([0, 6, 7, -1]),
    ),
    voice=score["piano 3 voice"],
)

# manual 3

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(evans.talea([1], 32)),
    evans.PitchHandler(
        [2, 1, 7, 0, 3, 11, 4, 8, 10, 5, 9, 6, 8, 10, 5, 9, 6, 0, 3, 11, 4],
    ),
    library.double_octave_down(),
    library.octave_up(trinton.select_leaves_by_index([1, 2, 3, 4, 5])),
    library.double_octave_up(trinton.select_leaves_by_index([6, 7, 8, 9, 10])),
    library.double_octave_up(
        trinton.select_leaves_by_index(
            [
                11,
                12,
                13,
                14,
                15,
            ]
        )
    ),
    library.octave_up(
        trinton.select_leaves_by_index(
            [
                11,
                12,
                13,
                14,
                15,
            ]
        )
    ),
    library.double_octave_up(trinton.select_leaves_by_index([-1, -2, -3])),
    library.double_octave_up(trinton.select_leaves_by_index([-1, -2, -3])),
    library.octave_up(trinton.select_leaves_by_index([-1, -2])),
    library.change_staff(
        staves=["piano 2", "piano 3", "piano 4"],
        selector=trinton.select_leaves_by_index([0, 9, 14]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\override Stem.direction = #DOWN", site="before"),
            abjad.LilyPondLiteral(r"\revert Stem.direction", site="after"),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    abjad.beam,
    trinton.ottava_command(octave=-1, selector=trinton.select_leaves_by_index([0, 8])),
    trinton.ottava_command(selector=trinton.select_leaves_by_index([14, -1])),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("mf"), abjad.Dynamic("p")],
        selector=trinton.select_leaves_by_index([9, 14]),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartSlur(), abjad.StopSlur()],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        direction=abjad.DOWN,
    ),
    voice=score["piano 4 voice"],
)

library.morpheme_c_intermittent_rhythm(
    score=score,
    voice_name="piano 4 voice",
    measures=(4,),
    fuse_groups=(1,),
    stage=(1, 1),
    rotation=(6, 6),
    voice_number=1,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.PitchHandler(
        [
            "ef''''",
            "ef''''",
            "ef''''",
            "df''''",
        ]
    ),
    trinton.ottava_command(
        octave=2, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("pp")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.DOWN,
    ),
    voice=score["piano 4 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.PitchHandler(pitch.return_morpheme_c_pitch_list(rotation=30)),
    library.double_octave_up(),
    # library.octave_up(selector=trinton.select_leaves_by_index([1], pitched=True)),
    voice=score["morpheme c lower voice 1"],
)

library.morpheme_c_intermittent_rhythm(
    score=score,
    voice_name="piano 4 voice",
    measures=(6, 7),
    fuse_groups=(2,),
    stage=(1, 1),
    rotation=(7, 8),
    voice_number=2,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 7)),
    evans.PitchHandler(["df''''", "ef''''", "ef''''"]),
    voice=score["piano 4 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 7)),
    evans.PitchHandler(pitch.return_morpheme_c_pitch_list(rotation=33)),
    library.double_octave_up(),
    library.octave_down(
        selector=trinton.select_leaves_by_index([0, -2, -1], pitched=True)
    ),
    trinton.ottava_command(
        octave=2, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Articulation("turn"), abjad.Articulation("mordent")],
        selector=trinton.select_leaves_by_index([-2, -1], pitched=True),
    ),
    voice=score["morpheme c lower voice 2"],
)

# pedals

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(evans.talea([9, -3, -2, -3, -2], 32)),
    evans.PitchHandler([["c,", "df,"]]),
    trinton.attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Dynamic("mf"),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.change_notehead_command(notehead="lowest"),
    voice=score["piano 5 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9,)),
    evans.RhythmHandler(rmakers.note),
    evans.PitchHandler(
        [
            ["e,,", "gs,", "as,"],
        ],
    ),
    trinton.ottava_command(octave=-1, selector=trinton.select_leaves_by_index([0, 0])),
    trinton.attachment_command(
        attachments=[trinton.make_custom_dynamic("fffff")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
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
    lambda _: trinton.select_target(_, (6,)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\noBreak", site="absolute_after"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ]
        ),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                met_string=library.metronome_marks["120"],
                mod_string=library.metronome_marks["3:2(8)=8"],
            ),
            abjad.BarLine("||", site="absolute_after"),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 5)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r'\tweak text "×3" \startMeasureSpanner', "absolute_before"
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
            abjad.LilyPondLiteral(
                r"""\set Score.repeatCommands = #'((volta "1 - 2"))""",
                site="before",
            ),
        ],
        selector=trinton.select_leaves_by_index([-1]),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"""\set Score.repeatCommands = #'((volta "3"))""",
                site="before",
            ),
            abjad.LilyPondLiteral(
                r"""\set Score.repeatCommands = #'((volta #f))""",
                site="absolute_after",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9,)),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                met_string=library.metronome_marks["48"],
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

# trinton.make_music(
#     lambda _: trinton.select_target(_, (3, 9)),
#     trinton.spanner_command(
#         strings=[
#             library.metronome_markups(
#                 met_string=library.metronome_marks["120"],
#                 string_only=True,
#                 parenthesis=True,
#             ),
#             library.metronome_markups(
#                 met_string=library.metronome_marks["48"],
#                 mod_string=library.metronome_marks["2:5(8)=8"],
#                 string_only=True,
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0, -1]),
#         style="solid-line-with-arrow",
#         padding=2,
#         full_string=True,
#     ),
#     voice=score["Global Context"],
# )

trinton.remove_redundant_time_signatures(score=score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/drava/drava/sections/05",
    build_path="/Users/trintonprater/scores/drava/drava/build",
    segment_name="05",
    includes=[
        "/Users/trintonprater/scores/drava/drava/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
