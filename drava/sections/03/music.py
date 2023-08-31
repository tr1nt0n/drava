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

time_signatures = list(ts.first_motion_time_signatures[28:36])

time_signatures.insert(0, (1, 4))

time_signatures.insert(2, (1, 4))

score = library.drava_score(time_signatures=time_signatures)

# music commands

# tempo

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(evans.talea([7, 1], 32)),
    evans.PitchHandler([2, 19]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Glissando(zero_padding=True),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fff"),
        ],
        selector=trinton.select_leaves_by_index(
            [0, 0, 0, -1],
            pitched=True,
        ),
    ),
    abjad.beam,
    voice=score["piano 1 voice"],
)

# manual 1

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(library.c_rhythm(register="lower", rotation=3, stage=3)),
    trinton.call_rmaker(
        rmaker=rmakers.force_augmentation, selector=trinton.select_tuplets_by_index([0])
    ),
    evans.PitchHandler(pitch.return_morpheme_c_pitch_list(rotation=30)),
    library.octave_down(selector=trinton.select_leaves_by_index([0], pitched=True)),
    library.octave_up(selector=trinton.select_leaves_by_index([4, 5], pitched=True)),
    library.c_ornaments(
        selector=trinton.select_leaves_by_index([2, 4, 5], pitched=True),
        rotation=9,
        direction=abjad.UP,
    ),
    library.change_staff(
        staves=[
            "piano 4",
            "piano 2",
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                3,
            ],
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\once \override Beam.damping = #2", site="before"),
            abjad.LilyPondLiteral(r"\override Stem.direction = #UP", site="before"),
            abjad.LilyPondLiteral(r"\revert Stem.direction", site="after"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 2 voice"],
)

library.morpheme_b_rhythm(
    voice=score["piano 2 voice"],
    measures=(7, 9),
    fuse_groups=(3,),
    stage=2,
    rotation=15,
    manual="upper",
    rests=True,
    counter=2,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 9)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\once \override TupletBracket.direction = #DOWN",
                    r"\once \override TupletBracket.padding = 6",
                ],
                site="before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("ff")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    library.pitch_morpheme_b(stage=2, rotation=7),
    voice=score["piano 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 9)),
    library.octave_up(selector=trinton.select_leaves_by_index([3, 4, 5])),
    voice=score["graces 2"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10,)),
    evans.RhythmHandler(evans.talea([3], 32)),
    library.b_rhythm_graces(counter=4),
    library.pitch_morpheme_b(stage=2, rotation=15),
    voice=score["piano 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10,)),
    library.octave_up(selector=trinton.select_leaves_by_index([2, 4, 5])),
    library.double_octave_up(selector=trinton.select_leaves_by_index([3])),
    voice=score["graces 4"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10,)),
    library.octave_up(selector=trinton.pleaves(exclude=[0])),
    library.octave_up(selector=trinton.select_leaves_by_index([3, 4])),
    voice=score["graces 5"],
)

# manual 2

library.morpheme_b_rhythm(
    voice=score["piano 3 voice"],
    measures=(5, 6),
    fuse_groups=(2,),
    stage=1,
    rotation=8,
    manual="single",
    rests=True,
    counter=1,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 6)),
    library.pitch_morpheme_b(stage=1, rotation=0),
    library.octave_up(),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("mp")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartSlur(), abjad.StopSlur()],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    ),
    voice=score["piano 3 voice"],
)

library.morpheme_b_rhythm(
    voice=score["piano 3 voice"],
    measures=(7, 9),
    fuse_groups=(3,),
    stage=2,
    rotation=7,
    manual="single",
    rests=True,
    counter=1,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 9)),
    library.pitch_morpheme_b(stage=2, rotation=0),
    library.octave_up(),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("mf")],
        selector=trinton.select_leaves_by_index([1], pitched=True),
    ),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 9)),
    library.octave_up(selector=trinton.select_leaves_by_index([1])),
    voice=score["graces 1"],
)

library.morpheme_b_rhythm(
    voice=score["piano 3 voice"],
    measures=(10,),
    fuse_groups=(1,),
    stage=2,
    rotation=10,
    manual="single",
    counter=3,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10,)),
    library.pitch_morpheme_b(stage=2, rotation=10),
    library.octave_up(),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("f")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    voice=score["piano 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10,)),
    library.octave_up(selector=trinton.pleaves(exclude=[0])),
    library.octave_up(selector=trinton.select_leaves_by_index([3])),
    trinton.ottava_command(selector=trinton.select_leaves_by_index([1, -1])),
    voice=score["graces 3"],
)

# manual 3

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(library.c_rhythm(register="upper", rotation=5, stage=3)),
    evans.PitchHandler(["ef", "ef", "ef'", "df''", "ef'''"]),
    library.c_ornaments(
        selector=trinton.select_leaves_by_index([1, 3], pitched=True),
        rotation=12,
        direction=abjad.DOWN,
    ),
    library.change_staff(
        staves=[
            "piano 3",
            "piano 2",
            "piano 4",
        ],
        selector=trinton.select_leaves_by_index(
            [
                2,
                6,
                7,
            ],
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\once \override Beam.damping = #2", site="before"),
            abjad.LilyPondLiteral(r"\override Stem.direction = #DOWN", site="before"),
            abjad.LilyPondLiteral(r"\revert Stem.direction", site="after"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 4 voice"],
)

library.morpheme_b_rhythm(
    voice=score["piano 4 voice"],
    measures=(4, 6),
    fuse_groups=(3,),
    stage=1,
    rotation=4,
    manual="single",
    rests=True,
    counter=1,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 6)),
    library.pitch_morpheme_b(stage=1, rotation=0),
    library.double_octave_up(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("p"),
            abjad.StartTrillSpan(interval=abjad.NamedInterval("-d5")),
            abjad.StartTrillSpan(interval=abjad.NamedInterval("+m2")),
            abjad.StopTrillSpan(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 1, 2]),
    ),
    voice=score["piano 4 voice"],
)

library.morpheme_b_rhythm(
    voice=score["piano 4 voice"],
    measures=(7, 9),
    fuse_groups=(3,),
    stage=2,
    rotation=15,
    manual="lower",
    rests=True,
    counter=2,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 9)),
    library.pitch_morpheme_b(stage=2, rotation=7),
    library.double_octave_up(),
    voice=score["piano 4 voice"],
)

# pedals

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(evans.talea([-4, 4], 32)),
    evans.PitchHandler([["ef,,", "df,,"]]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\override Stem.direction = #DOWN", site="before"),
            abjad.LilyPondLiteral(r"\revert Stem.direction", site="after"),
            abjad.Clef("bass"),
        ],
        selector=trinton.select_leaves_by_index([0, -1, -1]),
    ),
    trinton.ottava_command(
        octave=-1, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    abjad.beam,
    voice=score["piano 5 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 10)),
    evans.RhythmHandler(evans.talea([43, 1], 64)),
    evans.PitchHandler(["f", "df,"]),
    trinton.noteheads_only(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("p"),
            abjad.LilyPondLiteral(
                r"\once \override Glissando.style = #'trill", site="before"
            ),
            abjad.LilyPondLiteral(r"\override Tie.transparent = ##t", site="before"),
            abjad.LilyPondLiteral(
                r"\override NoteHead.transparent = ##t", site="before"
            ),
            abjad.LilyPondLiteral(
                r"\override NoteHead.transparent = ##t", site="before"
            ),
            abjad.LilyPondLiteral(
                r"\override NoteHead.transparent = ##f", site="before"
            ),
            abjad.LilyPondLiteral(r"\override Tie.transparent = ##f", site="before"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 1, 2, -1, -1]),
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 4)], nested=True),
    ),
    voice=score["piano 5 voice"],
    preprocessor=trinton.fuse_preprocessor((4,)),
)

# globals

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

trinton.fermata_measures(
    score=score,
    measures=[1, 3],
    fermata="ulongfermata",
    font_size="30",
    clef_whitespace=False,
)

library.reset_line_positions(score=score, voice_names=["piano 1 voice"])

trinton.whiteout_empty_staves(
    score=score,
    voice_names=["piano 1 voice"],
    cutaway="blank",
)

# trinton.make_music(
#     lambda _: trinton.select_target(_, (1,)),
#     trinton.attachment_command(
#         attachments=[
#             library.metronome_markups(
#                 met_string=library.metronome_marks["80"],
#                 mod_string=library.metronome_marks["5:3(8)=8"],
#             )
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#     ),
#     voice=score["Global Context"],
# )

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 10)),
    trinton.spanner_command(
        strings=[
            library.metronome_markups(
                met_string=library.metronome_marks["48"],
                string_only=True,
            ),
            library.metronome_markups(
                met_string=library.metronome_marks["120"],
                mod_string=library.metronome_marks["5:2(8)=8"],
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

trinton.remove_redundant_time_signatures(score=score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/drava/drava/sections/03",
    build_path="/Users/trintonprater/scores/drava/drava/build",
    segment_name="03",
    includes=[
        "/Users/trintonprater/scores/drava/drava/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
