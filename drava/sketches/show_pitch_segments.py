import abjad
import baca
import evans
import trinton
from abjadext import rmakers
import fractions
import itertools
import quicktions
from drava import library
from drava import pitch

# score

score = trinton.make_score_template(
    instruments=[abjad.Piano()],
    groups=[1],
)

# append transforms

# library.add_segments_to_score(voice=score["piano voice"], function=pitch.start())
# library.add_segments_to_score(voice=score["piano voice"], function=pitch.transform_i())
# library.add_segments_to_score(voice=score["piano voice"], function=pitch.transform_ii())
# library.add_segments_to_score(voice=score["piano voice"], function=pitch.transform_iii())
# library.add_segments_to_score(voice=score["piano voice"], function=pitch.transform_iv())
# library.add_segments_to_score(voice=score["piano voice"], function=pitch.transform_v())
# library.add_segments_to_score(voice=score["piano voice"], function=pitch.package_moments())
library.add_segments_to_score(
    voice=score["piano voice"], function=pitch.partition_moments()
)

# show music

score_block = abjad.Block(name="score")
score_block.items.append(score)
lilypond_file = abjad.LilyPondFile(
    items=[
        '\include "/Users/trintonprater/scores/drava/drava/build/pitch-sketch-stylesheet.ily"',
        '\include "/Users/trintonprater/abjad/abjad/scm/abjad.ily"',
        score_block,
    ],
)
abjad.show(lilypond_file)
