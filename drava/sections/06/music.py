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

# tempo

trinton.make_music(
    lambda _: trinton.select_target(_, (12,)),
    evans.RhythmHandler(evans.talea([3, 4, 1], 32)),
    evans.PitchHandler([19, 5, 2]),
    trinton.attachment_command(
        attachments=[
            abjad.Glissando(zero_padding=True),
        ],
        selector=trinton.pleaves(exclude=[-1]),
    ),
    abjad.beam,
    voice=score["piano 1 voice"],
)

# manual 3

library.morpheme_b_rhythm(
    voice=score["piano 4 voice"],
    measures=(8, 9),
    fuse_groups=(2,),
    stage=3,
    rotation=10,
    manual="single",
    rests=False,
    counter=1,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 9)),
    library.pitch_morpheme_b(stage=3, rotation=24),
    library.octave_up(selector=trinton.select_leaves_by_index([3])),
    library.double_octave_up(selector=trinton.select_logical_ties_by_index([0])),
    library.octave_up(selector=trinton.pleaves(exclude=[0, 1])),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.StartSlur(),
                abjad.StopSlur(),
            ]
        ),
        selector=trinton.select_logical_ties_by_index([1, -1], first=True),
    ),
    voice=score["piano 4 voice"],
)

library.morpheme_c_intermittent_rhythm(
    score=score,
    voice_name="piano 4 voice",
    measures=(12,),
    fuse_groups=(1,),
    stage=(1, 2),
    rotation=(7, 7),
    voice_number=1,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12,)),
    evans.PitchHandler(["ef'''"]),
    voice=score["piano 4 voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12,)),
    evans.PitchHandler(pitch.return_morpheme_c_pitch_list(rotation=33)),
    library.octave_up(selector=trinton.select_leaves_by_index([0, 1, 2], pitched=True)),
    library.octave_down(selector=trinton.select_leaves_by_index([-1], pitched=True)),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("pp"), abjad.Articulation("turn")],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    ),
    voice=score["morpheme c lower voice 1"],
)

# manual 2

library.morpheme_b_rhythm(
    voice=score["piano 3 voice"],
    measures=(7, 11),
    fuse_groups=(
        2,
        1,
    ),
    stage=3,
    rotation=3,
    manual="single",
    rests=False,
    counter=1,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 11)),
    library.pitch_morpheme_b(stage=3, rotation=65),
    library.octave_down(
        selector=trinton.select_leaves_by_index([1, 2, 10, 11, 12, 13, 14])
    ),
    library.octave_up(selector=trinton.select_leaves_by_index([-6, -5, -4])),
    library.double_octave_up(selector=trinton.ranged_selector(ranges=[range(0, 15)])),
    library.octave_up(selector=trinton.ranged_selector(ranges=[range(15, 25)])),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.StartSlur(),
                abjad.StopSlur(),
            ]
        ),
        selector=trinton.select_logical_ties_by_index([1, 14, 17, 21], first=True),
    ),
    voice=score["piano 3 voice"],
)

# manual 1

library.morpheme_b_rhythm(
    voice=score["piano 2 voice"],
    measures=(10, 11),
    fuse_groups=(1,),
    stage=3,
    rotation=14,
    manual="single",
    rests=False,
    counter=1,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 11)),
    library.pitch_morpheme_b(stage=3, rotation=29),
    library.octave_up(
        selector=trinton.select_leaves_by_index([0, 1, 2, 3, 4, -2, -3, -4, -5, -6])
    ),
    library.double_octave_up(selector=trinton.select_leaves_by_index([-1])),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.StartSlur(),
                abjad.StopSlur(),
            ]
        ),
        selector=trinton.select_logical_ties_by_index([0, 4, 6, -1], first=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartTrillSpan(interval=abjad.NamedInterval("+m2")),
            abjad.StopTrillSpan(),
        ],
        selector=trinton.select_logical_ties_by_index([5, 6], first=True),
    ),
    voice=score["piano 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 11)),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("p"), abjad.StartHairpin("<"), abjad.Dynamic("ff")],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
        direction=abjad.UP,
    ),
    voice=score["piano 2 voice"],
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

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 11)),
    evans.RhythmHandler(evans.talea([-5, 100], 32)),
    trinton.rewrite_meter_command(),
    evans.PitchHandler(pitch_list=[["c,", "df"]]),
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
        selector=trinton.select_leaves_by_index([0, 3, 3, -1]),
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
