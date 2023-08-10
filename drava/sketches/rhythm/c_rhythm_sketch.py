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

score = trinton.make_empty_score(
    instruments=[abjad.Piano(), abjad.Piano()],
    groups=[
        2,
    ],
    time_signatures=ts.second_motion_time_signatures[0:7],
)

# c rhythm sketch

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 7)),
    evans.RhythmHandler(library.c_rhythm(register="upper", rotation=10, stage=1)),
    evans.PitchHandler(["ef''"]),
    trinton.pitch_with_selector_command(
        pitch_list=["df''"],
        selector=trinton.patterned_tie_index_selector([5, 13], 18, pitched=True),
    ),
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
    voice=score["piano 1 voice"],
    preprocessor=trinton.fuse_preprocessor(
        (
            2,
            1,
        )
    ),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 7)),
    evans.RhythmHandler(library.c_rhythm(register="lower", rotation=12, stage=3)),
    evans.PitchHandler(pitch.return_morpheme_c_pitch_list(rotation=24)),
    # evans.RewriteMeterCommand(boundary_depth=-2),
    library.c_ornaments(
        selector=trinton.patterned_tie_index_selector(
            [0, 5, 7], 8, pitched=True, first=True
        ),
        rotation=1,
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 2 voice"],
    preprocessor=trinton.fuse_preprocessor((2,)),
)

# show music

score_block = abjad.Block(name="score")
score_block.items.append(score)
lilypond_file = abjad.LilyPondFile(
    items=[
        '\include "/Users/trintonprater/scores/drava/drava/build/section-stylesheet.ily"',
        '\include "/Users/trintonprater/abjad/abjad/scm/abjad.ily"',
        score_block,
    ],
)

abjad.show(lilypond_file)

# trinton.render_file(
#     score=score,
#     segment_path="/Users/trintonprater/scores/drava/drava/sketches/rhythm",
#     build_path="/Users/trintonprater/scores/drava/drava/build",
#     segment_name="test",
#     includes=[
#         "/Users/trintonprater/scores/drava/drava/build/section-stylesheet.ily",
#         "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
#     ],
# )
