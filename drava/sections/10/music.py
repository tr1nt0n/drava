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

score = library.drava_score(
    time_signatures=([(1, 4), (1, 4), (1, 4), (37, 8), (1, 4), (1, 4)])
)

# fermate

trinton.fermata_measures(
    score=score,
    measures=[
        1,
    ],
    fermata="ulongfermata",
    font_size="30",
    clef_whitespace=False,
    blank=False,
)

trinton.fermata_measures(
    score=score,
    measures=[
        2,
    ],
    fermata="uverylongfermata",
    font_size="30",
    clef_whitespace=False,
    blank=False,
)

trinton.fermata_measures(
    score=score,
    measures=[
        3,
    ],
    fermata="ushortfermata",
    font_size="30",
    clef_whitespace=False,
)

trinton.fermata_measures(
    score=score,
    measures=[
        5,
    ],
    fermata="ulongfermata",
    font_size="30",
    clef_whitespace=False,
    blank=False,
)

trinton.fermata_measures(
    score=score,
    measures=[
        6,
    ],
    fermata="uverylongfermata",
    font_size="30",
    clef_whitespace=False,
    last_measure=True,
)

# music commands

# manual 1

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(rmakers.note),
    library.aftergrace(),
    evans.PitchHandler(
        [
            ["f", "a", "d'", "c'", "fs'", "g''", "cs'''", "ds'''", "b'''"],
            ["f", "a", "d'", "c'", "fs'", "g''", "cs'''", "ds'''", "b'''"],
            ["g", "c'", "d'", "a'", "f''", "fs''", "bf''", "ef'''", "f'''", "fs'''"],
            ["g", "c'", "d'", "a'", "f''", "fs''", "bf''", "ef'''", "f'''", "fs'''"],
        ],
    ),
    trinton.noteheads_only(),
    trinton.transparent_noteheads(selector=trinton.pleaves(grace=True)),
    trinton.linear_attachment_command(
        attachments=[
            trinton.make_custom_dynamic("fffff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Glissando(zero_padding=True)],
        selector=trinton.pleaves(grace=False),
    ),
    trinton.force_accidentals_command(
        selector=trinton.select_leaves_by_index([-1], grace=False)
    ),
    voice=score["piano 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(library.last_measure_graces()),
    voice=score["piano 2 voice"],
)

# pedals

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(rmakers.note),
    library.aftergrace(),
    evans.PitchHandler(
        [["e,,", "gs,", "as,"], ["e,,", "gs,", "as,"], ["d,,", "ef,"], ["d,,", "ef,"]],
    ),
    trinton.ottava_command(
        octave=-1,
        selector=trinton.pleaves(),
    ),
    trinton.noteheads_only(),
    trinton.transparent_noteheads(selector=trinton.pleaves(grace=True)),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Glissando(zero_padding=True)],
        selector=trinton.pleaves(grace=False),
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

# for measure in [2, 3, 7, 9, 10, 12, 13, 14, 16, 20]:
#     trinton.make_music(
#         lambda _: trinton.select_target(_, (measure,)),
#         trinton.linear_attachment_command(
#             attachments=[
#                 abjad.LilyPondLiteral(r"\noBreak", site="absolute_after"),
#             ],
#             selector=trinton.select_leaves_by_index(
#                 [
#                     0,
#                 ]
#             ),
#         ),
#         voice=score["Global Context"],
#     )

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                met_string=library.metronome_marks["60"],
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    trinton.attachment_command(
        attachments=[abjad.BarLine("|.", site="after")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

trinton.remove_redundant_time_signatures(score=score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/drava/drava/sections/10",
    build_path="/Users/trintonprater/scores/drava/drava/build",
    segment_name="10",
    includes=[
        "/Users/trintonprater/scores/drava/drava/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
