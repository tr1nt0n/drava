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

time_signatures = ts.third_motion_time_signatures[0:21]

time_signatures.insert(0, (1, 8))

time_signatures.append((1, 4))

score = library.drava_score(time_signatures=time_signatures)

# fermate

trinton.fermata_measures(
    score=score,
    measures=[23],
    fermata="ufermata",
    font_size="30",
    clef_whitespace=False,
)

# music commands

# manual 1

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(rmakers.note),
    evans.PitchHandler(
        [["f'", "a'", "fs''", "d''", "c''", "g''", "cs'''", "ds'''", "b'''"]],
    ),
    trinton.ottava_command(selector=trinton.select_leaves_by_index([0, 0])),
    trinton.linear_attachment_command(
        attachments=[trinton.make_custom_dynamic("fffff"), abjad.BreathMark()],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    ),
    voice=score["piano 2 voice"],
)

library.morpheme_a_intermittent_rhythm(
    score=score,
    voice_name="piano 2 voice",
    measures=(2, 5),
    fuse_groups=(1,),
    stage=2,
    cycle_order=0,
    rotation=11,
    voice_number=1,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 5)),
    evans.PitchHandler(pitch.return_morpheme_a_pitch_lists(rotation=20)[1]),
    library.octave_down(),
    library.double_octave_up(selector=trinton.select_leaves_by_index([0])),
    library.octave_down(selector=trinton.select_logical_ties_by_index([10])),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")], selector=trinton.select_leaves_by_index([0])
    ),
    voice=score["piano 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 5)),
    evans.PitchHandler(pitch.return_morpheme_a_pitch_lists(rotation=6)[0]),
    library.octave_up(
        selector=trinton.notehead_selector(
            [
                0,
                1,
                2,
                3,
                4,
                5,
                6,
                7,
                8,
            ],
            [
                [0],
                [0],
                [0],
                [0],
                [0],
                [0],
                [0],
                [0],
                [0],
            ],
        )
    ),
    library.octave_down(),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("ff")], selector=trinton.select_leaves_by_index([0])
    ),
    voice=score["morpheme a outer voice 1"],
)

library.morpheme_c_intermittent_rhythm(
    score=score,
    voice_name="piano 2 voice",
    measures=(6, 15),
    fuse_groups=(1, 1, 1, 2, 1, 2, 1, 1),
    stage=(3, 2),
    rotation=(10, 12),
    voice_number=1,
)

# trinton.make_music(
#     lambda _: trinton.select_target(_, (6, 15)),
#
#     voice=score["piano 2 voice"]
# )

# manual 2

library.morpheme_b_rhythm(
    voice=score["piano 3 voice"],
    measures=(2, 8),
    fuse_groups=(3, 1, 1, 2),
    stage=3,
    rotation=6,
    manual="single",
    rests=False,
    counter=1,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 8)),
    library.pitch_morpheme_b(stage=3, rotation=31),
    library.octave_up(),
    library.octave_up(selector=trinton.select_logical_ties_by_index([11, -3, -2, -1])),
    library.octave_up(
        selector=trinton.select_logical_ties_by_index([-7, -6, -5, -4, -3, -2, -1])
    ),
    library.octave_down(
        selector=trinton.select_logical_ties_by_index(
            [
                2,
                1,
                8,
            ]
        )
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartTrillSpan(interval=abjad.NamedInterval("+M2")),
            abjad.StopTrillSpan(),
        ],
        selector=trinton.select_logical_ties_by_index([10, 11], first=True),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_logical_ties_by_index([2, 6, 12, 18], first=True),
    ),
    library.imbricate(
        pitches=[10, 14, 13, 15, 20, 24, 25, 32, 31, 37, 36, 37],
        name="piano 3 imbrication 1",
        selector=trinton.pleaves(),
        note_head=None,
        direction=abjad.DOWN,
    ),
    trinton.ottava_command(
        selector=trinton.select_logical_ties_by_index([11, 18], first=True)
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("f")],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.DOWN,
    ),
    voice=score["piano 3 voice"],
)

# pedals

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(rmakers.note),
    evans.PitchHandler(
        [
            ["e,,", "gs,", "as,"],
        ],
    ),
    trinton.ottava_command(octave=-1, selector=trinton.select_leaves_by_index([0, 0])),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass"), trinton.make_custom_dynamic("fffff")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
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

for measure in [2, 3, 7, 9, 12]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.linear_attachment_command(
            attachments=[
                abjad.LilyPondLiteral(r"\noBreak", site="absolute_after"),
            ],
            selector=trinton.select_leaves_by_index(
                [
                    0,
                ]
            ),
        ),
        voice=score["Global Context"],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                met_string=library.metronome_marks["48"],
                mod_string=library.metronome_marks["2:5(8)=8"],
                padding=12.5,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                met_string=library.metronome_marks["80"],
                mod_string=library.metronome_marks["5:3(8)=8"],
                padding=7,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

trinton.remove_redundant_time_signatures(score=score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/drava/drava/sections/09",
    build_path="/Users/trintonprater/scores/drava/drava/build",
    segment_name="09",
    includes=[
        "/Users/trintonprater/scores/drava/drava/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
