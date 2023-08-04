import abjad
import baca
import evans
import trinton
import itertools
import fractions
import quicktions

# score

# sketch functions


def show_pitch_segments(voice, function, measure_counter):
    segments, labels = function

    counter = measure_counter

    for segment, label in zip(segments, labels):
        tuplet = [1 for _ in range(len(segment))]
        tuplet = tuple(tuplet)

        pitch_list = [_.number for _ in segment]

        trinton.make_music(
            lambda _: trinton.select_target(_, (counter,)),
            evans.RhythmHandler(evans.tuplet([tuplet])),
            evans.PitchHandler(pitch_list),
            trinton.attachment_command(
                attachments=[abjad.Markup(rf'\markup {{ "{label}" }}')],
                selector=trinton.select_leaves_by_index([0]),
                direction=abjad.UP,
            ),
            voice=voice,
        )

        counter += 1
