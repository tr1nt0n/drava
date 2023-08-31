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

time_signatures = ts.second_motion_time_signatures[4:16]

time_signatures.append((1, 4))

score = library.drava_score(time_signatures=time_signatures)

# fermate

trinton.fermata_measures(
    score=score,
    measures=[13],
    fermata="ufermata",
    font_size="30",
    clef_whitespace=False,
)

# pedals

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 6)),
    evans.RhythmHandler(
        evans.talea(
            [24, 2, 14, 1, 3, 23, 6, 1, -100], 32, extra_counts=[0, 0, 1, 0, -1, 0]
        )
    ),
    trinton.rewrite_meter_command(),
    evans.PitchHandler(
        [["c,", "df,"], "cf,", ["c,", "df,"], "cf,", "cf,", ["c,", "df,"], "d", "e'"]
    ),
    trinton.change_notehead_command(
        notehead="lowest",
        selector=trinton.logical_ties(
            pitched=True,
            exclude=[
                -1,
                -2,
            ],
        ),
    ),
    trinton.change_notehead_command(
        notehead="highest", selector=trinton.select_leaves_by_index([-1], pitched=True)
    ),
    trinton.invisible_accidentals_command(
        selector=trinton.select_logical_ties_by_index([1, 3, 4], first=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BendAfter(10),
            abjad.BendAfter(13),
            abjad.BendAfter(11),
        ],
        selector=trinton.select_logical_ties_by_index([1, 3, 4], first=True),
    ),
    library.imbricate(
        pitches=[
            [-25, -25, -25],
        ],
        name="pedal imbrication",
        selector=trinton.pleaves(),
    ),
    trinton.beam_groups(
        selector=trinton.ranged_selector(
            ranges=[range(2, 4), range(7, 9), range(9, 11), range(10, 17)], nested=True
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin("<|"),
            abjad.Dynamic("fff"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
            abjad.StartHairpin("o<|"),
            trinton.make_custom_dynamic("ffffpp", direction=abjad.UP),
            abjad.StartHairpin("--"),
            abjad.StartHairpin("<"),
            trinton.make_custom_dynamic("fmf", direction=abjad.UP),
            abjad.StartHairpin("<|"),
            abjad.Dynamic("ffff"),
        ],
        selector=trinton.select_leaves_by_index(
            [0, 0, 1, 3, 4, 4, 7, 8, 9, 10, 10, 11, 14, 14, 16]
        ),
        direction=abjad.UP,
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(10, 12)], nested=True),
        no_ties=True,
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(
            ranges=[range(11, 15), range(14, 17)], nested=True
        ),
    ),
    trinton.notehead_bracket_command(),
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
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                met_string=library.metronome_marks["80"],
                mod_string=library.metronome_marks["5:3(8)=8"],
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 11)),
    trinton.spanner_command(
        strings=[
            library.metronome_markups(
                met_string=library.metronome_marks["48"],
                mod_string=library.metronome_marks["3:5(8)=8"],
                string_only=True,
            ),
            library.metronome_markups(
                met_string=library.metronome_marks["120"],
                mod_string=library.metronome_marks["5:2(8)=8"],
                string_only=True,
            ),
            library.metronome_markups(
                met_string=library.metronome_marks["48"],
                mod_string=library.metronome_marks["2:5(8)=8"],
                string_only=True,
            ),
        ],
        selector=trinton.select_leaves_by_index([0, 2, 2, -1]),
        style="solid-line-with-arrow",
        padding=2,
        full_string=True,
    ),
    voice=score["Global Context"],
)

# trinton.make_music(
#     lambda _: trinton.select_target(_, (8, 11)),
#     trinton.spanner_command(
#         strings=[
#             # library.metronome_markups(
#             #     met_string=library.metronome_marks["120"],
#             #     # mod_string=library.metronome_marks["3:5(8)=8"],
#             #     string_only=True,
#             #     parenthesis=True
#             # ),
#             r"\markup {}",
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
    segment_path="/Users/trintonprater/scores/drava/drava/sections/06",
    build_path="/Users/trintonprater/scores/drava/drava/build",
    segment_name="06",
    includes=[
        "/Users/trintonprater/scores/drava/drava/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
