import abjad
import baca
import evans
import trinton
import itertools
import fractions
import quicktions

# segments


def start():

    trichord = abjad.PitchClassSegment([2, 1, 7])
    tetrachord = abjad.PitchClassSegment([0, 3, 11, 4])
    pentachord = abjad.PitchClassSegment([8, 10, 5, 9, 6])

    chords = [trichord, tetrachord, pentachord]
    labels = ["seed trichord", "seed tetrachord", "seed pentachord"]

    return chords, labels


def transform_i():

    chords, labels = start()

    segments = baca.sequence.helianthate(chords, -1, 1)

    tri_counter = 1
    tetra_counter = 1
    penta_counter = 1

    new_labels = []

    for segment in segments:
        if len(segment) == 3:
            new_labels.append(f"transform i trichord {tri_counter}")
            tri_counter += 1

        elif len(segment) == 4:
            new_labels.append(f"transform i tetrachord {tetra_counter}")
            tetra_counter += 1

        else:
            new_labels.append(f"transform i pentachord {penta_counter}")
            penta_counter += 1

    return segments, new_labels


def transform_ii():
    segments, labels = transform_i()

    new_segments = []

    for i, segment in enumerate(segments):
        interval = segment[0].number - segment[-1].number
        if interval > 0:
            interval = interval
        else:
            interval = interval * -1

        if (
            interval == 1
            or interval == 2
            or interval == 4
            or interval == 5
            or interval == 6
        ):
            pass
        else:
            if i % 2 == 0:
                new_segments.append(segment.retrograde())
            else:
                new_segments.append(segment)

    tri_counter = 1
    tetra_counter = 1
    penta_counter = 1

    new_labels = []

    for segment in segments:
        if len(segment) == 3:
            new_labels.append(f"transform ii trichord {tri_counter}")
            tri_counter += 1

        elif len(segment) == 4:
            new_labels.append(f"transform ii tetrachord {tetra_counter}")
            tetra_counter += 1

        else:
            new_labels.append(f"transform ii pentachord {penta_counter}")
            penta_counter += 1

    return new_segments, new_labels


def transform_iii():
    segments, labels = transform_ii()

    groups = abjad.sequence.partition_by_counts(
        segments, [5, 7], cyclic=True, overhang=True
    )
    segments_ = []
    for i, group in enumerate(groups):
        if i % 2 == 0:
            segments_.extend(group)
        else:
            segment = abjad.sequence.join(group)[0]
            segments_.append(segment)

    new_segments = []

    for segment in segments_:
        if len(segment) > 5:
            half = len(segment) / 2
            half = int(half)

            first_half = abjad.PitchClassSegment(segment[:half])
            second_half = abjad.PitchClassSegment(segment[half + 1 :])

            first_half = first_half.invert()
            second_half = second_half.retrograde()

            new_pitch_classes = []

            for _ in first_half:
                new_pitch_classes.append(_)

            for _ in second_half:
                new_pitch_classes.append(_)

            new_segment = abjad.PitchClassSegment(new_pitch_classes)

            new_segments.append(new_segment)

        else:
            new_segments.append(segment)

    tri_counter = 1
    tetra_counter = 1
    penta_counter = 1
    extend_counter = 1

    new_labels = []

    for segment in segments:
        if len(segment) == 3:
            new_labels.append(f"transform iii trichord {tri_counter}")
            tri_counter += 1

        elif len(segment) == 4:
            new_labels.append(f"transform iii tetrachord {tetra_counter}")
            tetra_counter += 1

        elif len(segment) == 5:
            new_labels.append(f"transform iii pentachord {penta_counter}")
            penta_counter += 1

        else:
            new_labels.append(f"transform iii extension {extend_counter}")
            extend_counter += 1

    return new_segments, new_labels


def transform_iv():
    segments, labels = transform_iii()

    new_segments = []

    for segment in segments:
        if len(segment) > 5:
            pitch_classes = [_ for _ in segment]

            groups = abjad.sequence.partition_by_counts(
                pitch_classes, [3, 4, 5], cyclic=True, overhang=True
            )

            for group in groups:
                if len(group) < 3:
                    pass
                elif len(group) == 3:
                    new_segment = abjad.PitchClassSegment(group).invert()
                    new_segments.append(new_segment)
                elif len(group) == 4:
                    new_segment = abjad.PitchClassSegment(group).retrograde()
                    new_segments.append(new_segment)
                elif len(group) == 5:
                    new_segment = abjad.PitchClassSegment(group).transpose(1)
                    new_segments.append(new_segment)

        else:
            new_segments.append(segment)

    tri_counter = 1
    tetra_counter = 1
    penta_counter = 1

    new_labels = []

    for segment in segments:
        if len(segment) == 3:
            new_labels.append(f"transform iv trichord {tri_counter}")
            tri_counter += 1

        elif len(segment) == 4:
            new_labels.append(f"transform iv tetrachord {tetra_counter}")
            tetra_counter += 1

        else:
            new_labels.append(f"transform iv pentachord {penta_counter}")
            penta_counter += 1

    return new_segments, new_labels


def transform_v():
    segments, labels = transform_iv()

    new_segments = []

    for segment in segments:
        if segments.index(segment) % 3 == 0:
            new_segment = evans.Sequence(segment).alpha(category=1)
            new_segment = abjad.PitchClassSegment(new_segment)
            new_segments.append(new_segment)

        elif segments.index(segment) % 3 == 1:
            new_segment = evans.Sequence(segment).alpha(category=2)
            new_segment = abjad.PitchClassSegment(new_segment)
            new_segments.append(new_segment)

        else:
            new_segment = segment.transpose(n=6)
            new_segments.append(new_segment)

    tri_counter = 1
    tetra_counter = 1
    penta_counter = 1

    new_labels = []

    for segment in segments:
        if len(segment) == 3:
            new_labels.append(f"transform v trichord {tri_counter}")
            tri_counter += 1

        elif len(segment) == 4:
            new_labels.append(f"transform v tetrachord {tetra_counter}")
            tetra_counter += 1

        else:
            new_labels.append(f"transform v pentachord {penta_counter}")
            penta_counter += 1

    return new_segments, new_labels
