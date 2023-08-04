import abjad
import baca
import evans
import trinton
import fractions
import itertools
import quicktions
from drava import library
from drava import pitch

# score

score = trinton.make_empty_score(
    instruments=[
        abjad.Piano(),
    ],
    groups=[
        1,
    ],
    time_signatures=[(4, 4) for _ in range(10000)],
    filler=abjad.Skip,
)

# show pitch segments


# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/drava/drava/sketches",
    build_path="/Users/trintonprater/scores/drava/drava/build",
    segment_name="pitch_segments",
    includes=[
        "/Users/trintonprater/scores/drava/drava/build/pitch-sketch-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
