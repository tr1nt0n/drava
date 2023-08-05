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

        if len(segment) == 4:
            new_labels.append(f"transform i tetrachord {tetra_counter}")
            tetra_counter += 1

        if len(segment) == 5:
            new_labels.append(f"transform i pentachord {penta_counter}")
            penta_counter += 1

    return segments, new_labels


def transform_ii():
    segments, labels = transform_i()

    new_segments = []

    for segment in segments:
        if (
            segment[0].number == 0
            or segment[0].number == 2
            or segment[0].number == 4
            or segment[0].number == 5
            or segment[0].number == 6
            or segment[0].number == 8
        ):
            pass
        else:
            new_segments.append(segment)

    tri_counter = 1
    tetra_counter = 1
    penta_counter = 1

    new_labels = []

    for segment in new_segments:
        if len(segment) == 3:
            new_labels.append(f"transform ii trichord {tri_counter}")
            tri_counter += 1

        if len(segment) == 4:
            new_labels.append(f"transform ii tetrachord {tetra_counter}")
            tetra_counter += 1

        if len(segment) == 5:
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

    for segment in new_segments:
        if len(segment) == 3:
            new_labels.append(f"transform iii trichord {tri_counter}")
            tri_counter += 1

        if len(segment) == 4:
            new_labels.append(f"transform iii tetrachord {tetra_counter}")
            tetra_counter += 1

        if len(segment) == 5:
            new_labels.append(f"transform iii pentachord {penta_counter}")
            penta_counter += 1

        if len(segment) > 5:
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

    for segment in new_segments:
        if len(segment) == 3:
            new_labels.append(f"transform iv trichord {tri_counter}")
            tri_counter += 1

        if len(segment) == 4:
            new_labels.append(f"transform iv tetrachord {tetra_counter}")
            tetra_counter += 1

        if len(segment) == 5:
            new_labels.append(f"transform iv pentachord {penta_counter}")
            penta_counter += 1

    return new_segments, new_labels


def transform_v():
    segments, labels = transform_iv()

    new_segments = []

    for segment in segments:
        if segments.index(segment) % 3 == 0:
            new_segment = evans.Sequence(segment).alpha(category=1)
            new_segment = trinton.remove_adjacent(new_segment)
            new_segment = abjad.PitchClassSegment(new_segment)
            new_segments.append(new_segment)

        if segments.index(segment) % 3 == 1:
            new_segment = evans.Sequence(segment).alpha(category=2)
            new_segment = trinton.remove_adjacent(new_segment)
            new_segment = abjad.PitchClassSegment(new_segment)
            new_segments.append(new_segment)

        else:
            new_segment = segment.transpose(n=6)
            new_segment = [_.number for _ in new_segment]
            new_segment = trinton.remove_adjacent(new_segment)
            new_segment = abjad.PitchClassSegment(new_segment)
            new_segments.append(new_segment)

    tri_counter = 1
    tetra_counter = 1
    penta_counter = 1

    new_labels = []

    for segment in new_segments:
        if len(segment) == 3:
            new_labels.append(f"transform v trichord {tri_counter}")
            tri_counter += 1

        if len(segment) == 4:
            new_labels.append(f"transform v tetrachord {tetra_counter}")
            tetra_counter += 1

        if len(segment) == 5:
            new_labels.append(f"transform v pentachord {penta_counter}")
            penta_counter += 1

    return new_segments, new_labels


# moments


def package_moments():
    segments, labels = transform_v()

    center_index = trinton.return_middle_index(segments)

    center_index = trinton.correct_redundant_floats(center_index)

    beginning = segments[:center_index]

    ending = segments[center_index + 1 :]

    moments = []

    for beginning_segment, ending_segment in zip(beginning, ending):
        if beginning.index(beginning_segment) % 2 == 0:
            beginning_segment = beginning_segment.transpose(6)
            ending_segment = ending_segment.transpose(-3)
            new_segment = []
            for _ in beginning_segment:
                new_segment.append(_.number)

            for _ in ending_segment:
                new_segment.append(_.number)

            new_segment = trinton.remove_adjacent(new_segment)
            new_segment = abjad.PitchClassSegment(new_segment)
            moments.append(new_segment)

        else:
            new_segment = []
            for _ in ending_segment:
                new_segment.append(_.number)

            for _ in beginning_segment:
                new_segment.append(_.number)

            new_segment = trinton.remove_adjacent(new_segment)
            new_segment = abjad.PitchClassSegment(new_segment)
            moments.append(new_segment)

    moment_counter = 1
    moment_labels = []

    for moment in moments:
        moment_labels.append(rf"moment {moment_counter}")
        moment_counter += 1

    return moments, moment_labels


def partition_moments():
    moments, labels = package_moments()

    flat_pitch_class_list = []

    for moment in moments:
        for pitch_class in moment:
            flat_pitch_class_list.append(pitch_class)

    partitions = abjad.sequence.partition_by_counts(
        flat_pitch_class_list, [5, 5, 3, 10], cyclic=True, overhang=True
    )

    moments = []

    for partition in partitions:
        moments.append(abjad.PitchClassSegment(partition))

    moment_counter = 1
    moment_labels = []

    for moment in moments:
        moment_labels.append(rf"partitioned moment {moment_counter}")
        moment_counter += 1

    return moments, moment_labels
