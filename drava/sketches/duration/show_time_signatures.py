import abjad
import baca
import evans
import trinton
from abjadext import rmakers
import fractions
import itertools
import quicktions
from drava import library
from drava import ts

# score

score = trinton.make_score_template(
    instruments=[abjad.Piano()],
    groups=[1],
)

# append transforms

library.label_time_signature_sketch(
    voice=score["piano voice"],
    ts_pair_list=ts.first_motion_time_signatures,
    motion="first",
)

library.label_time_signature_sketch(
    voice=score["piano voice"],
    ts_pair_list=ts.second_motion_time_signatures,
    motion="second",
)

library.label_time_signature_sketch(
    voice=score["piano voice"],
    ts_pair_list=ts.third_motion_time_signatures,
    motion="third",
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
