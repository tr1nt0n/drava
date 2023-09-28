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

time_signatures = ts.second_motion_time_signatures[28:41]

time_signatures.insert(5, (1, 4))

time_signatures.insert(6, (19, 32))

time_signatures.insert(7, (1, 4))

time_signatures.insert(12, (9, 32))

time_signatures.insert(13, (10, 32))

time_signatures.append((1, 4))

score = library.drava_score(time_signatures=time_signatures)

# fermate

trinton.fermata_measures(
    score=score,
    measures=[6, 8],
    fermata="ushortfermata",
    font_size="30",
    clef_whitespace=False,
)

trinton.fermata_measures(
    score=score,
    measures=[19],
    fermata="ufermata",
    font_size="30",
    clef_whitespace=False,
)

# music commands

# monolith

trinton.make_music(
    lambda _: trinton.select_target(_, (7,)),
    evans.RhythmHandler(evans.talea([1], 32)),
    evans.PitchHandler(
        [2, 1, 7, 0, 3, 11, 4, 8, 10, 5, 9, 6, 8, 10, 5, 9, 6, 0, 3, 11, 4],
    ),
    library.double_octave_down(),
    library.octave_up(trinton.select_leaves_by_index([1, 2, 3, 4, 5])),
    library.double_octave_up(trinton.select_leaves_by_index([6, 7, 8, 9, 10])),
    library.double_octave_up(
        trinton.select_leaves_by_index(
            [
                11,
                12,
                13,
                14,
                15,
            ]
        )
    ),
    library.octave_up(
        trinton.select_leaves_by_index(
            [
                11,
                12,
                13,
                14,
                15,
            ]
        )
    ),
    library.double_octave_up(trinton.select_leaves_by_index([-1, -2, -3])),
    library.double_octave_up(trinton.select_leaves_by_index([-1, -2, -3])),
    library.octave_up(trinton.select_leaves_by_index([-1, -2])),
    library.change_staff(
        staves=["piano 2", "piano 3", "piano 4"],
        selector=trinton.select_leaves_by_index([0, 9, 14]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\override Stem.direction = #DOWN", site="before"),
            abjad.LilyPondLiteral(r"\revert Stem.direction", site="after"),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    abjad.beam,
    trinton.ottava_command(octave=-1, selector=trinton.select_leaves_by_index([0, 8])),
    trinton.ottava_command(selector=trinton.select_leaves_by_index([14, -1])),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("mf"), abjad.Dynamic("p")],
        selector=trinton.select_leaves_by_index([9, 14]),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartSlur(), abjad.StopSlur()],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        direction=abjad.DOWN,
    ),
    voice=score["piano 4 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 8)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pp")
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
        direction=abjad.UP
    ),
    voice=score["piano 2 voice"]
)

# manual 1

trinton.make_music(
    lambda _: trinton.select_target(_, (7,)),
    trinton.attachment_command(
        attachments=[
            abjad.Clef("treble"),
            abjad.LilyPondLiteral(
                [
                    r"\once \override Staff.Clef.X-extent = ##f",
                    r"\once \override Staff.Clef.extra-offset = #'(-2.75 . 0)",
                ],
                site="before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["piano 2 voice"],
)

library.morpheme_b_rhythm(
    voice=score["piano 2 voice"],
    measures=(14,),
    fuse_groups=(1,),
    stage=3,
    rotation=0,
    manual="single",
    rests=False,
    counter=1,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (14,)),
    library.pitch_morpheme_b(stage=3, rotation=19),
    library.octave_down(
        selector=trinton.select_logical_ties_by_index([8, 9], pitched=True),
    ),
    library.octave_up(
        selector=trinton.select_logical_ties_by_index([3, 4, 5, -1], pitched=True),
    ),
    library.double_octave_up(
        selector=trinton.select_logical_ties_by_index([0, 1, 2], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index([0, 6, 8, -1], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\override Stem.direction = #DOWN", site="before"),
            abjad.LilyPondLiteral(r"\revert Stem.direction", site="before"),
        ],
        selector=trinton.select_leaves_by_index([0, 7]),
    ),
    voice=score["piano 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13, 14)),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("mp"), abjad.StartHairpin("<"), abjad.Dynamic("f")],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
        direction=abjad.UP,
    ),
    voice=score["piano 2 voice"],
)

logistic_map = [_ for _ in trinton.logistic_map(x=4, r=3.57, n=9) if _ > 2]
logistic_map = trinton.rotated_sequence(logistic_map, 14 % len(logistic_map))

trinton.make_music(
    lambda _: trinton.select_target(_, (15, 18)),
    evans.RhythmHandler(
        library.a_inner_voice_rhythm(
            stage=3,
            divisions=logistic_map,
            subdivisions=logistic_map[1:],
            cycle_order=0,
        ),
    ),
    trinton.rewrite_meter_command(),
    evans.PitchHandler(pitch.return_morpheme_a_pitch_lists(rotation=9)[1]),
    library.double_octave_up(
        selector=trinton.select_logical_ties_by_index([1, 2, -1], pitched=True),
    ),
    library.octave_up(
        selector=trinton.select_logical_ties_by_index([3, -2], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fff"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
        direction=abjad.UP,
    ),
    trinton.beam_groups(
        selector=trinton.group_selections(
            selector=trinton.logical_ties(), groups=[2, 8, 1]
        )
    ),
    abjad.slur,
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\override Stem.direction = #DOWN", site="before"),
            abjad.LilyPondLiteral(r"\revert Stem.direction", site="before"),
            abjad.LilyPondLiteral(r"\override Stem.direction = #DOWN", site="before"),
            abjad.LilyPondLiteral(r"\revert Stem.direction", site="after"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                3,
                -1,
                -1,
            ]
        ),
    ),
    voice=score["piano 2 voice"],
    preprocessor=trinton.fuse_preprocessor((4,)),
)

# manual 2

library.morpheme_b_rhythm(
    voice=score["piano 3 voice"],
    measures=(13, 14),
    fuse_groups=(2,),
    stage=3,
    rotation=3,
    manual="lower",
    rests=False,
    counter=1,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13, 14)),
    library.pitch_morpheme_b(stage=3, rotation=0),
    library.octave_down(),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (15, 18)),
    evans.RhythmHandler(
        library.a_outer_voice_rhythm(cycle_order=1),
    ),
    trinton.rewrite_meter_command(),
    evans.PitchHandler(pitch.return_morpheme_a_pitch_lists(rotation=4)[0]),
    library.octave_up(
        selector=trinton.notehead_selector(
            [
                0,
                1,
                2,
                3,
            ],
            [
                [0],
                [0],
                [0],
                [0],
            ],
        ),
    ),
    library.octave_down(selector=trinton.select_logical_ties_by_index([-1])),
    library.beam_outer_voice_a(),
    trinton.detach_command(
        detachments=[abjad.StartBeam, abjad.StopBeam, abjad.Tie],
        selector=trinton.select_leaves_by_index([-1]),
    ),
    trinton.ottava_command(
        octave=-1, selector=trinton.select_leaves_by_index([-3, -1])
    ),
    voice=score["piano 3 voice"],
    preprocessor=trinton.fuse_preprocessor((4,)),
)

# manual 3

library.morpheme_a_intermittent_rhythm(
    score=score,
    voice_name="piano 4 voice",
    measures=(1, 5),
    fuse_groups=(1, 2, 2),
    stage=1,
    cycle_order=1,
    rotation=9,
    voice_number=1,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    evans.PitchHandler(pitch.return_morpheme_a_pitch_lists(rotation=0)[1]),
    library.double_octave_up(),
    trinton.ottava_command(
        selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    voice=score["piano 4 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    evans.PitchHandler(pitch.return_morpheme_a_pitch_lists(rotation=0)[0]),
    library.double_octave_up(),
    trinton.attachment_command(
        attachments=[
            abjad.Dynamic("ppp"),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    voice=score["morpheme a outer voice 1"],
)

library.morpheme_a_intermittent_rhythm(
    score=score,
    voice_name="piano 4 voice",
    measures=(9, 12),
    fuse_groups=(1, 2),
    stage=2,
    cycle_order=1,
    rotation=10,
    voice_number=2,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 12)),
    evans.PitchHandler(pitch.return_morpheme_a_pitch_lists(rotation=2)[1]),
    library.double_octave_up(),
    library.octave_down(selector=trinton.select_logical_ties_by_index([4, 5, 6])),
    trinton.ottava_command(
        selector=trinton.select_logical_ties_by_index([0, 3], pitched=True, first=True)
    ),
    library.change_staff(
        staves=[
            "piano 2",
        ],
        selector=trinton.select_logical_ties_by_index([4], first=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\once \override TupletBracket.padding = -72",
                ],
                site="before",
            ),
            abjad.LilyPondLiteral(
                [
                    r"\once \override TupletBracket.direction = #DOWN",
                    r"\once \override TupletBracket.padding = -9",
                ],
                site="before",
            ),
        ],
        selector=trinton.select_tuplets_by_index([0, 1]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ppp"),
            abjad.Dynamic("mf"),
        ],
        selector=trinton.select_logical_ties_by_index([0, 4], first=True),
        direction=abjad.DOWN,
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index([3, 9]),
        direction=abjad.UP,
    ),
    voice=score["piano 4 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r'\change Staff = "piano 4 staff"', site="absolute_after"
            ),
        ],
        selector=trinton.select_leaves_by_index([9]),
    ),
    voice=score["piano 4 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 12)),
    evans.PitchHandler(pitch.return_morpheme_a_pitch_lists(rotation=2)[0]),
    library.double_octave_up(selector=trinton.select_logical_ties_by_index([0])),
    library.octave_up(selector=trinton.select_logical_ties_by_index([1])),
    library.octave_up(
        selector=trinton.notehead_selector(chord_indices=[-1], head_indices_lists=[[0]])
    ),
    library.change_staff(
        staves=[
            "piano 3",
        ],
        selector=trinton.select_logical_ties_by_index([-1], first=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
        ],
        selector=trinton.select_logical_ties_by_index([-1], first=True),
        direction=abjad.UP,
    ),
    voice=score["morpheme a outer voice 2"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r'\change Staff = "piano 4 staff"', site="absolute_after"
            ),
        ],
        selector=trinton.select_leaves_by_index([-1]),
    ),
    voice=score["morpheme a outer voice 2"],
)

library.morpheme_b_rhythm(
    voice=score["piano 4 voice"],
    measures=(13, 14),
    fuse_groups=(2,),
    stage=3,
    rotation=3,
    manual="upper",
    rests=False,
    counter=1,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13, 14)),
    library.pitch_morpheme_b(stage=3, rotation=0),
    library.octave_down(
        selector=trinton.select_logical_ties_by_index([0, 1], pitched=True),
    ),
    library.octave_up(
        selector=trinton.select_logical_ties_by_index(
            [3, 4, 5, 6, 7, 8, 9, 11, 12, 18], pitched=True
        ),
    ),
    library.double_octave_up(
        selector=trinton.select_logical_ties_by_index(
            [
                10,
                13,
                14,
                15,
                16,
                17,
                18,
            ],
            pitched=True,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    ),
    voice=score["piano 4 voice"],
)

# pedals

trinton.make_music(
    lambda _: trinton.select_target(_, (7,)),
    evans.RhythmHandler(evans.talea([9, -3, -2, -3, -2], 32)),
    evans.PitchHandler([["c,", "df,"]]),
    trinton.attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Dynamic("mf"),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.change_notehead_command(notehead="lowest"),
    voice=score["piano 5 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13, 14)),
    evans.RhythmHandler(evans.tuplet([(-15, 6)])),
    evans.PitchHandler(pitch_list=[["c,", "df"]]),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 5 voice"],
    preprocessor=trinton.fuse_preprocessor((2,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (16, 18)),
    evans.RhythmHandler(rmakers.note),
    trinton.rewrite_meter_command(),
    evans.PitchHandler([["c,", "df,"]]),
    trinton.change_notehead_command(notehead="lowest"),
    voice=score["piano 5 voice"],
    preprocessor=trinton.fuse_preprocessor((3,)),
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

for measure in [
    2,
    10,
    13,
]:
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
                met_string=library.metronome_marks["80"],
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7,)),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                met_string=library.metronome_marks["120"],
                mod_string=library.metronome_marks["3:2(8)=8"],
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9,)),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                met_string=library.metronome_marks["80"],
                mod_string=library.metronome_marks["4.=8"],
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 13)),
    trinton.spanner_command(
        strings=[
            library.metronome_markups(
                met_string=library.metronome_marks["48"],
                mod_string=library.metronome_marks["3:5(8)=8"],
                string_only=True,
            ),
            library.metronome_markups(
                met_string=library.metronome_marks["80"],
                mod_string=library.metronome_marks["5:3(8)=8"],
                string_only=True,
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
        style="solid-line-with-arrow",
        padding=2,
        full_string=True,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (15, 17)),
    trinton.spanner_command(
        strings=[
            library.metronome_markups(
                met_string=library.metronome_marks["80"],
                string_only=True,
                parenthesis=True,
            ),
            library.metronome_markups(
                met_string=library.metronome_marks["120"],
                mod_string=library.metronome_marks["3:2(8)=8"],
                string_only=True,
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
        style="solid-line-with-arrow",
        padding=2,
        full_string=True,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (18,)),
    trinton.attachment_command(
        attachments=[abjad.BarLine("||", site="after")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

trinton.remove_redundant_time_signatures(score=score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/drava/drava/sections/08",
    build_path="/Users/trintonprater/scores/drava/drava/build",
    segment_name="08",
    includes=[
        "/Users/trintonprater/scores/drava/drava/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
