import abjad
import baca
import evans
import trinton
from abjadext import rmakers
import itertools
import fractions
import quicktions

# score

# sketch functions


def add_segments_to_score(voice, function):
    segments, labels = function

    for segment, label in zip(segments, labels):
        tuplet = [1 for _ in range(len(segment))]
        tuplet = tuple(tuplet)
        nested_music = rmakers.tuplet([(1, 1)], [tuplet])
        container = abjad.Container(nested_music)

        pitch_list = [_.number for _ in segment]
        handler = evans.PitchHandler(pitch_list)
        handler(container)

        abjad.attach(
            abjad.Markup(rf'\markup "{label}"'),
            abjad.select.leaf(container, 0),
            direction=abjad.UP,
        )

        if len(abjad.select.leaves(container)) > 10:
            abjad.attach(
                abjad.LilyPondLiteral(
                    r"\set suggestAccidentals = ##t", "absolute_before"
                ),
                abjad.select.leaf(container, 0),
            )

            abjad.attach(
                abjad.LilyPondLiteral(
                    r"\set suggestAccidentals = ##f", "absolute_after"
                ),
                abjad.select.leaf(container, -1),
            )

        selections = abjad.mutate.eject_contents(container)

        voice.extend(selections)


def label_time_signature_sketch(voice, ts_pair_list, motion):
    signatures = [abjad.TimeSignature(_) for _ in ts_pair_list]

    measure_number_counter = 1

    for signature in signatures:
        skip = abjad.Skip((1, 1), multiplier=signature.duration)

        abjad.attach(signature, skip)

        abjad.attach(
            abjad.Markup(
                rf'\markup {{ "{motion} motion measure {measure_number_counter}" }}'
            ),
            skip,
            direction=abjad.UP,
        )

        voice.append(skip)

        measure_number_counter += 1

    abjad.attach(
        abjad.LilyPondLiteral(
            r"\once \override Staff.BarLine.transparent = ##f", site="after"
        ),
        abjad.select.leaf(voice, -1),
    )

    abjad.attach(abjad.BarLine("|.", site="after"), abjad.select.leaf(voice, -1))
