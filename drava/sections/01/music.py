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

score = library.drava_score(ts.first_motion_time_signatures[:13])

# music commands

# manual 1

trinton.make_music(
    lambda _: trinton.select_target(_, (12,)),
    evans.RhythmHandler(evans.talea([-1, 30, -1], 128)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("sff"),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r'\markup \center-column {{ \abs-fontsize #12 \musicglyph "scripts.ushortfermata" }}'
            )
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
        direction=abjad.UP,
    ),
    library.b_rhythm_graces(),
    library.pitch_morpheme_b(stage=2, selector=trinton.pleaves(), rotation=7),
    voice=score["piano 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12,)),
    library.octave_up(selector=trinton.select_leaves_by_index([1])),
    library.double_octave_up(selector=trinton.select_leaves_by_index([2, 5])),
    library.change_staff(
        selector=trinton.select_leaves_by_index([1, 2, 3, 5]),
        staves=["piano 3", "piano 2", "piano 4", "piano 2"],
    ),
    trinton.ottava_command(selector=trinton.select_leaves_by_index([2, 5]), octave=2),
    voice=score["graces 1"],
)

# manual 2

library.morpheme_b_rhythm(
    voice=score["piano 3 voice"],
    measures=(3,),
    fuse_groups=(1,),
    stage=1,
    rotation=0,
    manual="single",
    rests=True,
    counter=1,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    library.pitch_morpheme_b(stage=2, rotation=0),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("pp")], selector=trinton.select_leaves_by_index([0])
    ),
    voice=score["piano 3 voice"],
)


# manual 3

library.morpheme_a_intermittent_rhythm(
    score=score,
    voice_name="piano 4 voice",
    measures=(6, 11),
    fuse_groups=(4, 1, 1),
    stage=1,
    cycle_order=0,
    rotation=0,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 11)),
    evans.PitchHandler(pitch.return_morpheme_a_pitch_lists(rotation=0)[1]),
    library.double_octave_up(),
    trinton.beam_groups(
        selector=trinton.ranged_selector(ranges=[range(2, 4)], nested=True)
    ),
    trinton.ottava_command(selector=trinton.select_leaves_by_index([0, -1])),
    voice=score["piano 4 voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 11)),
    evans.PitchHandler(pitch.return_morpheme_a_pitch_lists(rotation=0)[0]),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("ppp")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    library.double_octave_up(),
    voice=score["morpheme a outer voice 1"],
)

library.morpheme_a_intermittent_rhythm(
    score=score,
    voice_name="piano 4 voice",
    measures=(13,),
    fuse_groups=(1,),
    stage=1,
    cycle_order=0,
    rotation=0,
    voice_number=2,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13,)),
    evans.PitchHandler(pitch.return_morpheme_a_pitch_lists(rotation=2)[1]),
    trinton.force_accidentals_command(selector=trinton.select_leaves_by_index([0])),
    library.double_octave_up(),
    trinton.ottava_command(selector=trinton.select_leaves_by_index([0, -1])),
    voice=score["piano 4 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13,)),
    evans.PitchHandler(pitch.return_morpheme_a_pitch_lists(rotation=1)[0]),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("ppp")],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.DOWN,
    ),
    library.double_octave_up(),
    voice=score["morpheme a outer voice 2"],
)

# pedal

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.talea([3, -1], 16)),
    evans.PitchHandler([["c,", "df,"]]),
    trinton.attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Dynamic("pppp"),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.change_notehead_command(notehead="lowest"),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r'\markup \center-column {{ \abs-fontsize #12 \musicglyph "scripts.uverylongfermata" }}'
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["piano 5 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            5,
            11,
        ),
    ),
    evans.RhythmHandler(evans.talea([1000], 16)),
    trinton.rewrite_meter_command(),
    evans.PitchHandler([["c,", "df,"]]),
    trinton.attachment_command(
        attachments=[
            abjad.Dynamic("pppp"),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    abjad.beam,
    trinton.change_notehead_command(notehead="lowest"),
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
                met_string=library.metronome_marks["48"],
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                met_string=library.metronome_marks["120"],
                mod_string=library.metronome_marks["5:2(8)=8"],
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                met_string=library.metronome_marks["48"],
                mod_string=library.metronome_marks["2:5(8)=8"],
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                met_string=library.metronome_marks["80"],
                mod_string=library.metronome_marks["5:3(8)=8"],
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12,)),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                met_string=library.metronome_marks["120"],
                mod_string=library.metronome_marks["3:2(8)=8"],
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13,)),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                met_string=library.metronome_marks["48"],
                mod_string=library.metronome_marks["2:5(8)=8"],
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

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
    segment_path="/Users/trintonprater/scores/drava/drava/sections/01",
    build_path="/Users/trintonprater/scores/drava/drava/build",
    segment_name="01",
    includes=[
        "/Users/trintonprater/scores/drava/drava/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
