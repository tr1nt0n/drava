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

library.morpheme_a_intermittent_rhythm(
    score=score,
    voice_name="piano voice",
    measures=(1, 7),
    fuse_groups=(3, 2, 2),
    cycle_order=0,
    map_index=0,
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
