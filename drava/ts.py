import abjad
import baca
import evans
import trinton
import itertools
import fractions
import quicktions

# first motion

seed_durations = [
    # Deepchandi Taal
    (4, 16),
    (3, 16),
    (7, 16),
    # Roopak Taal
    (2, 16),
    (2, 16),
    (3, 16),
    # Jhap Taal
    (5, 16),
    # Roopak Taal
    (4, 16),
    (3, 16),
    # Ek Taal
    (12, 16),
    # Jhap Taal
    (5, 16),
]

partitioned_durations = abjad.sequence.partition_by_counts(
    seed_durations, [6, 3, 2], cyclic=True, overhang=False
)

helianthated_durations = baca.sequence.helianthate(partitioned_durations, -1, -1)

first_motion_time_signatures = evans.Sequence(helianthated_durations).flatten()

# second motion

durations = [abjad.Duration(_) for _ in first_motion_time_signatures]

durations.reverse()

durations = [_ + abjad.Duration(1, 16) for _ in durations]

second_motion_pairs = [_.pair for _ in durations]

second_motion_time_signatures = []

for pair in second_motion_pairs:
    if pair == (1, 4):
        second_motion_time_signatures.append((2, 8))

    elif pair == (1, 2):
        second_motion_time_signatures.append((4, 8))

    else:
        second_motion_time_signatures.append(pair)

# third motion

durations = [abjad.Duration(_) for _ in second_motion_time_signatures]

durations.reverse()

durations = [_ + abjad.Duration(1, 16) for _ in durations]

third_motion_pairs = [_.pair for _ in durations]

third_motion_time_signatures = []

for pair in third_motion_pairs:
    if pair == (1, 4):
        third_motion_time_signatures.append((2, 8))

    else:
        third_motion_time_signatures.append(pair)
