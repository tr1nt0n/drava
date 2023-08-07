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
    instruments=[abjad.Piano()],
    groups=[
        1,
    ],
    time_signatures=ts.first_motion_time_signatures[0:7],
)

# a rhythm sketch

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 7)),
    evans.RhythmHandler(
        library.a_inner_voice_rhythm(
            stage=3,
            divisions=[
                5,
                3,
            ],
            subdivisions=[3, 5],
            cycle_order=1,
        ),
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.beam_a_rhythm(),
    trinton.notehead_bracket_command(),
    voice=score["piano voice"],
    preprocessor=trinton.fuse_preprocessor((2, 1, 2)),
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
