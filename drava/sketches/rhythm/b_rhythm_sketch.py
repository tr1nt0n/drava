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
    time_signatures=ts.third_motion_time_signatures[0:7],
)

# b rhythm sketch

library.morpheme_b_rhythm(
    voice=score["piano voice"],
    measures=(1, 7),
    fuse_groups=(2, 1),
    stage=2,
    rotation=2,
    manual="single",
    rests=False,
    counter=1,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 7)),
    library.pitch_morpheme_b(stage=2, rotation=0),
    voice=score["piano voice"],
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
