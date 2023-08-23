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

time_signatures = [ts.first_motion_time_signatures[28]]

time_signatures.insert(0, (1, 4))

time_signatures.append((1, 4))

score = library.drava_score(time_signatures=time_signatures)

# music commands

# tempo

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(evans.talea([7, 1], 32)),
    evans.PitchHandler([2, 19]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Glissando(zero_padding=True),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fff"),
        ],
        selector=trinton.select_leaves_by_index(
            [0, 0, 0, -1],
            pitched=True,
        ),
    ),
    abjad.beam,
    voice=score["piano 1 voice"],
)

# manual 1

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(library.c_rhythm(register="lower", rotation=3, stage=3)),
    trinton.call_rmaker(
        rmaker=rmakers.force_augmentation, selector=trinton.select_tuplets_by_index([0])
    ),
    evans.PitchHandler(pitch.return_morpheme_c_pitch_list(rotation=24)),
    library.octave_down(selector=trinton.select_leaves_by_index([0], pitched=True)),
    library.octave_up(selector=trinton.select_leaves_by_index([4, 5], pitched=True)),
    library.c_ornaments(
        selector=trinton.select_leaves_by_index([2, 4, 5], pitched=True),
        rotation=9,
        direction=abjad.UP,
    ),
    library.change_staff(
        staves=[
            "piano 4",
            "piano 2",
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                3,
            ],
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\once \override Beam.damping = #2", site="before"),
            abjad.LilyPondLiteral(r"\override Stem.direction = #UP", site="before"),
            abjad.LilyPondLiteral(r"\revert Stem.direction", site="after"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 2 voice"],
)

# manual 3

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(library.c_rhythm(register="upper", rotation=5, stage=3)),
    evans.PitchHandler(["ef", "ef", "ef'", "df''", "ef'''"]),
    library.c_ornaments(
        selector=trinton.select_leaves_by_index([1, 3], pitched=True),
        rotation=12,
        direction=abjad.DOWN,
    ),
    library.change_staff(
        staves=[
            "piano 3",
            "piano 2",
            "piano 4",
        ],
        selector=trinton.select_leaves_by_index(
            [
                2,
                6,
                7,
            ],
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\once \override Beam.damping = #2", site="before"),
            abjad.LilyPondLiteral(r"\override Stem.direction = #DOWN", site="before"),
            abjad.LilyPondLiteral(r"\revert Stem.direction", site="after"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 4 voice"],
)

# pedals

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(evans.talea([-4, 4], 32)),
    evans.PitchHandler([["ef,,", "df,,"]]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\override Stem.direction = #DOWN", site="before"),
            abjad.LilyPondLiteral(r"\revert Stem.direction", site="after"),
            abjad.Clef("bass"),
        ],
        selector=trinton.select_leaves_by_index([0, -1, -1]),
    ),
    trinton.ottava_command(
        octave=-1, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    abjad.beam,
    voice=score["piano 5 voice"],
)

# globals

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

trinton.fermata_measures(
    score=score,
    measures=[1, 3],
    fermata="ulongfermata",
    font_size="30",
    clef_whitespace=False,
)

library.reset_line_positions(score=score, voice_names=["piano 1 voice"])

trinton.whiteout_empty_staves(
    score=score,
    voice_names=["piano 1 voice"],
    cutaway="blank",
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
    segment_path="/Users/trintonprater/scores/drava/drava/sections/03",
    build_path="/Users/trintonprater/scores/drava/drava/build",
    segment_name="03",
    includes=[
        "/Users/trintonprater/scores/drava/drava/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
