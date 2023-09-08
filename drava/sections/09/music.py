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
    fermata="ushortfermata",
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
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.StartSlur(),
                abjad.StopSlur(),
            ],
        ),
        selector=trinton.select_leaves_by_index([1, 11, 12, 16]),
        direction=abjad.UP,
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
    stage=(2, 3),
    rotation=(10, 12),
    voice_number=1,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 15)),
    evans.PitchHandler(["ef'"]),
    trinton.pitch_with_selector_command(
        pitch_list=["df'"],
        selector=trinton.patterned_tie_index_selector(
            [2, 6, 11, 13, 15], 16, pitched=True
        ),
    ),
    library.octave_down(selector=trinton.ranged_selector(ranges=[range(24, 44)])),
    library.octave_up(selector=trinton.ranged_selector(ranges=[range(63, 72)])),
    library.double_octave_up(selector=trinton.ranged_selector(ranges=[range(72, 93)])),
    library.c_ornaments(),
    voice=score["piano 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 15)),
    evans.PitchHandler(pitch.return_morpheme_c_pitch_list(rotation=51)),
    library.octave_down(
        selector=trinton.pleaves(
            exclude=[
                0,
                1,
                7,
                13,
            ]
        )
    ),
    library.octave_down(selector=trinton.ranged_selector(ranges=[range(24, 35)])),
    library.octave_up(selector=trinton.select_leaves_by_index([26, 33, 49])),
    library.octave_up(
        selector=trinton.ranged_selector(
            ranges=[
                range(42, 76),
            ]
        )
    ),
    library.octave_up(
        selector=trinton.ranged_selector(
            ranges=[
                range(48, 76),
            ]
        )
    ),
    library.octave_up(
        selector=trinton.ranged_selector(
            ranges=[
                range(60, 76),
            ]
        )
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble")],
        selector=trinton.select_leaves_by_index([44]),
    ),
    voice=score["morpheme c lower voice 1"],
)

library.morpheme_a_intermittent_rhythm(
    score=score,
    voice_name="piano 2 voice",
    measures=(16, 22),
    fuse_groups=(1, 1, 2, 1, 2),
    stage=3,
    cycle_order=1,
    rotation=21,
    voice_number=3,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (16, 22)),
    evans.PitchHandler(pitch.return_morpheme_a_pitch_lists(rotation=37)[1]),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")],
        selector=trinton.select_logical_ties_by_index([0], first=True),
    ),
    library.octave_down(selector=trinton.select_logical_ties_by_index([0, 1, 2, 5])),
    library.octave_up(
        selector=trinton.select_logical_ties_by_index(
            [
                4,
                13,
                19,
                21,
                22,
            ]
        )
    ),
    library.double_octave_up(
        selector=trinton.select_logical_ties_by_index([15, 16, 17, 20, 23, 24])
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [abjad.StartSlur(), abjad.StopSlur()],
        ),
        selector=trinton.select_leaves_by_index(
            [2, 4, 5, 9, 10, 16, 17, 18, 19, 25, 26, 29]
        ),
        direction=abjad.UP,
    ),
    voice=score["piano 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (16, 22)),
    evans.PitchHandler(pitch.return_morpheme_a_pitch_lists(rotation=9)[0]),
    library.octave_up(
        selector=trinton.notehead_selector(
            [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15],
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
                [0],
                [0],
                [0],
                [0],
                [0],
            ],
        )
    ),
    library.octave_down(selector=trinton.select_logical_ties_by_index([0])),
    library.octave_up(selector=trinton.select_logical_ties_by_index([2])),
    library.double_octave_up(selector=trinton.select_logical_ties_by_index([3])),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble")],
        selector=trinton.select_logical_ties_by_index([2], first=True),
    ),
    voice=score["morpheme a outer voice 3"],
)

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

library.morpheme_a_intermittent_rhythm(
    score=score,
    voice_name="piano 3 voice",
    measures=(9, 12),
    fuse_groups=(1, 2),
    stage=2,
    cycle_order=1,
    rotation=13,
    voice_number=2,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 12)),
    evans.PitchHandler(pitch.return_morpheme_a_pitch_lists(rotation=32)[1]),
    library.double_octave_up(
        selector=trinton.select_logical_ties_by_index([0, 1]),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [abjad.StartSlur(), abjad.StopSlur()],
        ),
        selector=trinton.select_leaves_by_index([2, 7]),
        direction=abjad.UP,
    ),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 12)),
    evans.PitchHandler(pitch.return_morpheme_a_pitch_lists(rotation=8)[0]),
    library.octave_up(
        selector=trinton.notehead_selector(
            [
                0,
                -2,
                -1,
            ],
            [
                [0],
                [0],
                [0],
            ],
        )
    ),
    library.double_octave_up(
        selector=trinton.select_logical_ties_by_index([0]),
    ),
    library.octave_up(
        selector=trinton.select_logical_ties_by_index([-1]),
    ),
    voice=score["morpheme a outer voice 2"],
)

library.morpheme_b_rhythm(
    voice=score["piano 3 voice"],
    measures=(13, 19),
    fuse_groups=(3, 2, 1),
    stage=3,
    rotation=12,
    manual="single",
    rests=False,
    counter=2,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13, 19)),
    library.pitch_morpheme_b(stage=3, rotation=43),
    library.octave_down(selector=trinton.pleaves(exclude=[0, 1, 2, 3, 4, 5])),
    library.octave_down(
        selector=trinton.select_logical_ties_by_index([6, 7, 8, 9, 17])
    ),
    library.octave_up(
        selector=trinton.select_logical_ties_by_index([14, 20, 22, 23, 27])
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartTrillSpan(interval=abjad.NamedInterval("+m2")),
            abjad.StartTrillSpan(interval=abjad.NamedInterval("+m2")),
            abjad.StartTrillSpan(interval=abjad.NamedInterval("-d5")),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                29,
                -2,
                -1,
            ],
            first=True,
        ),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_logical_ties_by_index(
            [2, 8, 11, 15, 17, 28], first=True
        ),
    ),
    library.imbricate(
        pitches=[
            9,
            6,
            -5,
            -11,
            -16,
            -15,
            -18,
            -7,
            -10,
            -5,
            3,
            -6,
            -13,
            -8,
            -4,
            7,
            -3,
            0,
            4,
            -1,
            -2,
            -12,
            0,
            -8,
        ],
        name="piano 3 imbrication 2",
        selector=trinton.pleaves(),
        note_head=None,
        direction=abjad.DOWN,
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")],
        selector=trinton.select_logical_ties_by_index(
            [
                4,
            ],
            first=True,
        ),
    ),
    voice=score["piano 3 voice"],
)

library.morpheme_c_intermittent_rhythm(
    score=score,
    voice_name="piano 3 voice",
    measures=(20, 22),
    fuse_groups=(2, 1),
    stage=(2, 3),
    rotation=(2, 0),
    voice_number=2,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (20, 22)),
    evans.PitchHandler(["ef'''"]),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble"), abjad.StopTrillSpan()],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (20, 22)),
    evans.PitchHandler(pitch.return_morpheme_c_pitch_list(rotation=120)),
    library.octave_up(),
    library.octave_up(
        selector=trinton.select_logical_ties_by_index([0, 5, 7, 9, 11], pitched=True)
    ),
    library.c_ornaments(rotation=6),
    voice=score["morpheme c lower voice 2"],
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

trinton.make_music(
    lambda _: trinton.select_target(_, (17, 22)),
    evans.RhythmHandler(rmakers.note),
    trinton.rewrite_meter_command(),
    evans.PitchHandler(
        [
            ["ef,"],
        ],
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("fff")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    voice=score["piano 5 voice"],
    preprocessor=trinton.fuse_preprocessor((1, 5)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (18, 22)),
    evans.IntermittentVoiceHandler(
        rhythm_handler=evans.RhythmHandler(
            evans.talea(
                [
                    1,
                ],
                64,
            )
        ),
        voice_name="pedal intermittent voice",
        direction=abjad.UP,
    ),
    voice=score["piano 5 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (18, 22)),
    evans.PitchHandler(
        [
            "f,",
            "f,",
            "f,",
            "f,",
            "a,,",
            "a,,",
            "a,,",
            "gf,",
            "gf,",
            "gf,",
            "gf,",
            "gf,",
        ]
    ),
    abjad.beam,
    abjad.slur,
    voice=score["pedal intermittent voice"],
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

for measure in [2, 3, 7, 9, 10, 12, 13, 14, 16, 20]:
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
                padding=6.5,
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
                padding=0,
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
