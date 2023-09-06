    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 1/8
            s1 * 1/8
            ^ \markup {
              \raise #12.5 \with-dimensions-from \null
              \override #'(font-size . 3.5)
              \concat {
                  \abjad-metronome-mark-markup #3 #0 #1 #"48"
                  [\abjad-metric-modulation-tuplet-lhs #3 #0 #5 #2 #3 #0 #'(1 . 1)]
              }
            }
            \time 3/8
            s1 * 3/8
            ^ \markup {
              \raise #7 \with-dimensions-from \null
              \override #'(font-size . 3.5)
              \concat {
                  \abjad-metronome-mark-markup #3 #0 #1 #"80"
                  [\abjad-metric-modulation-tuplet-lhs #3 #0 #3 #5 #3 #0 #'(1 . 1)]
              }
            }
            \noBreak
            \time 5/16
            s1 * 5/16
            \noBreak
            \time 9/16
            s1 * 9/16
            \time 2/8
            s1 * 1/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 2/8
            s1 * 1/4
            \time 5/16
            s1 * 5/16
            \noBreak
            \time 7/16
            s1 * 7/16
            \time 3/8
            s1 * 3/8
            \noBreak
            \time 5/16
            s1 * 5/16
            \time 7/8
            s1 * 7/8
            \time 7/16
            s1 * 7/16
            \noBreak
            \time 3/8
            s1 * 3/8
            \time 5/16
            s1 * 5/16
            \time 7/16
            s1 * 7/16
            \once \override Score.TimeSignature.stencil = ##f
            \time 7/16
            s1 * 7/16
            \time 7/8
            s1 * 7/8
            \time 5/16
            s1 * 5/16
            \time 9/16
            s1 * 9/16
            \time 2/8
            s1 * 1/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 2/8
            s1 * 1/4
            \time 5/16
            s1 * 5/16
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            _ \markup \center-column { \abs-fontsize #30 \musicglyph "scripts.ufermata" }
            \once \override Score.BarLine.transparent = ##f
        }
        \context StaffGroup = "Staff Group"
        <<
            \context TempoStaff = "piano 1 staff"
            {
                \context Voice = "piano 1 voice"
                {
                      %! +SCORE
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") \center-column { \line { Vivace } \line { Grave } }
                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") \center-column { \line { Vivace } \line { Grave } }
                      %! +SCORE
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                    \once \override Staff.TimeSignature.transparent = ##t
                      %! +SCORE
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1/8
                      %! +SCORE
                    \stopStaff \startStaff
                      %! +SCORE
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                      %! +SCORE
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                    \once \override Staff.TimeSignature.transparent = ##t
                      %! +SCORE
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 3/8
                      %! +SCORE
                    \stopStaff \startStaff
                      %! +SCORE
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                      %! +SCORE
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                    \once \override Staff.TimeSignature.transparent = ##t
                      %! +SCORE
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 5/16
                      %! +SCORE
                    \stopStaff \startStaff
                      %! +SCORE
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                      %! +SCORE
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                    \once \override Staff.TimeSignature.transparent = ##t
                      %! +SCORE
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 9/16
                      %! +SCORE
                    \stopStaff \startStaff
                      %! +SCORE
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                      %! +SCORE
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                    \once \override Staff.TimeSignature.transparent = ##t
                      %! +SCORE
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1/4
                      %! +SCORE
                    \stopStaff \startStaff
                      %! +SCORE
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                      %! +SCORE
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                    \once \override Staff.TimeSignature.transparent = ##t
                      %! +SCORE
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1/4
                      %! +SCORE
                    \stopStaff \startStaff
                      %! +SCORE
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                      %! +SCORE
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                    \once \override Staff.TimeSignature.transparent = ##t
                      %! +SCORE
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 5/16
                      %! +SCORE
                    \stopStaff \startStaff
                      %! +SCORE
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                      %! +SCORE
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                    \once \override Staff.TimeSignature.transparent = ##t
                      %! +SCORE
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 7/16
                      %! +SCORE
                    \stopStaff \startStaff
                      %! +SCORE
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                      %! +SCORE
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                    \once \override Staff.TimeSignature.transparent = ##t
                      %! +SCORE
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 3/8
                      %! +SCORE
                    \stopStaff \startStaff
                      %! +SCORE
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                      %! +SCORE
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                    \once \override Staff.TimeSignature.transparent = ##t
                      %! +SCORE
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 5/16
                      %! +SCORE
                    \stopStaff \startStaff
                      %! +SCORE
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                      %! +SCORE
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                    \once \override Staff.TimeSignature.transparent = ##t
                      %! +SCORE
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 7/8
                      %! +SCORE
                    \stopStaff \startStaff
                      %! +SCORE
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                      %! +SCORE
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                    \once \override Staff.TimeSignature.transparent = ##t
                      %! +SCORE
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 7/16
                      %! +SCORE
                    \stopStaff \startStaff
                      %! +SCORE
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                      %! +SCORE
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                    \once \override Staff.TimeSignature.transparent = ##t
                      %! +SCORE
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 3/8
                      %! +SCORE
                    \stopStaff \startStaff
                      %! +SCORE
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                      %! +SCORE
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                    \once \override Staff.TimeSignature.transparent = ##t
                      %! +SCORE
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 5/16
                      %! +SCORE
                    \stopStaff \startStaff
                      %! +SCORE
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                      %! +SCORE
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                    \once \override Staff.TimeSignature.transparent = ##t
                      %! +SCORE
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 7/16
                      %! +SCORE
                    \stopStaff \startStaff
                      %! +SCORE
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                      %! +SCORE
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                    \once \override Staff.TimeSignature.transparent = ##t
                      %! +SCORE
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 7/16
                      %! +SCORE
                    \stopStaff \startStaff
                      %! +SCORE
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                      %! +SCORE
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                    \once \override Staff.TimeSignature.transparent = ##t
                      %! +SCORE
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 7/8
                      %! +SCORE
                    \stopStaff \startStaff
                      %! +SCORE
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                      %! +SCORE
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                    \once \override Staff.TimeSignature.transparent = ##t
                      %! +SCORE
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 5/16
                      %! +SCORE
                    \stopStaff \startStaff
                      %! +SCORE
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                      %! +SCORE
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                    \once \override Staff.TimeSignature.transparent = ##t
                      %! +SCORE
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 9/16
                      %! +SCORE
                    \stopStaff \startStaff
                      %! +SCORE
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                      %! +SCORE
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                    \once \override Staff.TimeSignature.transparent = ##t
                      %! +SCORE
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1/4
                      %! +SCORE
                    \stopStaff \startStaff
                      %! +SCORE
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                      %! +SCORE
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                    \once \override Staff.TimeSignature.transparent = ##t
                      %! +SCORE
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1/4
                      %! +SCORE
                    \stopStaff \startStaff
                      %! +SCORE
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                      %! +SCORE
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                    \once \override Staff.TimeSignature.transparent = ##t
                      %! +SCORE
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 5/16
                      %! +SCORE
                    \stopStaff \startStaff
                      %! +SCORE
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                    \once \override Staff.TimeSignature.transparent = ##t
                      %! +SCORE
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1/4
                    \stopStaff \startStaff
                      %! +SCORE
                    \stopStaff \startStaff
                }
            }
            \context GrandStaff = "sub group 1"
            <<
                \context Staff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        \ottava 1
                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Bold") { I }
                        \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Bold") { I }
                        <f' a' c'' d'' fs'' g'' cs''' ds''' b'''>8
                            _ #(make-dynamic-script (markup #:whiteout #:italic "fffff"))
                        \breathe
                        \ottava 0
                        <<
                            \context Voice = "piano 2 voice temp"
                            {
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 4 0))
                                \times 6/5
                                {
                                    \clef "bass"
                                    \voiceOne
                                    d'8
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 6 0))
                                    \times 8/7
                                    {
                                        g64
                                        [
                                        f64
                                        b,64
                                        e64
                                        cs64
                                        b,64
                                        c64
                                        ]
                                    }
                                    af,16
                                    ~
                                }
                                af,8.
                                ~
                                af,8
                                ~
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 9) (ly:make-duration 4 0))
                                \times 9/7
                                {
                                    af,8.
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 4 0))
                                    \times 2/3
                                    {
                                        ef,16
                                        [
                                        af,16
                                        ef,16
                                        ]
                                    }
                                    e,8
                                    ~
                                }
                                e,4
                            }
                            \context Voice = "morpheme a outer voice 1"
                            {
                                \voiceTwo
                                <d ef>4.
                                \ff
                                ~
                                <d ef>8
                                ~
                                <d ef>32
                                [
                                <bf, cs>32
                                ]
                                ~
                                <bf, cs>8
                                ~
                                <bf, cs>4.
                                ~
                                <bf, cs>8.
                                ~
                                <bf, cs>8
                                [
                                <af, cs>8
                                ]
                                ~
                            }
                        >>
                        \oneVoice
                        <<
                            \context Voice = "piano 2 voice temp"
                            {
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 8) (ly:make-duration 5 0))
                                \times 8/9
                                {
                                    \voiceOne
                                    c'16
                                    [
                                    c'32
                                    c'16
                                    r32
                                    c'16
                                    r32
                                    ]
                                }
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 5) (ly:make-duration 4 0))
                                \times 20/24
                                {
                                    c'32.
                                    [
                                    r64
                                    c'32.
                                    r64
                                    c'32.
                                    c'64
                                    c'32.
                                    r64
                                    c'32.
                                    c'64
                                    c'32.
                                    c'64
                                    ]
                                }
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 7) (ly:make-duration 4 0))
                                \times 7/5
                                {
                                    c'32
                                    [
                                    r128
                                    c'32
                                    r128
                                    c'32
                                    r128
                                    c'32
                                    r128
                                    c'32
                                    c'128
                                    c'32
                                    r128
                                    c'32
                                    c'128
                                    c'32
                                    c'128
                                    ]
                                }
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 81 88) (ly:make-duration 7 0))
                                \times 88/81
                                {
                                    c'32...
                                    [
                                    r128.
                                    c'32...
                                    r128.
                                    c'32...
                                    r128.
                                    c'32...
                                    r128.
                                    c'32...
                                    c'128.
                                    c'32...
                                    r128.
                                    c'32...
                                    c'128.
                                    c'32...
                                    c'128.
                                    c'32...
                                    r128.
                                    ]
                                }
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 10 7) (ly:make-duration 3 0))
                                \times 14/20
                                {
                                    c'8.
                                    [
                                    r16
                                    c'8.
                                    r16
                                    c'8.
                                    r16
                                    c'8.
                                    c'16
                                    c'8.
                                    r16
                                    ]
                                }
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 20 13) (ly:make-duration 4 0))
                                \times 13/20
                                {
                                    c'8.
                                    [
                                    c'16
                                    c'8.
                                    c'16
                                    c'8.
                                    r16
                                    c'8.
                                    r16
                                    c'8.
                                    r16
                                    ]
                                }
                                c'32.
                                [
                                r64
                                c'32.
                                c'64
                                c'32.
                                r64
                                c'32.
                                c'64
                                c'32.
                                c'64
                                ]
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 12 7) (ly:make-duration 4 0))
                                \times 14/24
                                {
                                    c'16.
                                    [
                                    r32
                                    c'16.
                                    r32
                                    c'16.
                                    r32
                                    c'16.
                                    r32
                                    c'16.
                                    c'32
                                    c'16.
                                    r32
                                    ]
                                }
                            }
                            \context Voice = "morpheme c lower voice 1"
                            {
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 21 16) (ly:make-duration 6 0))
                                \times 16/21
                                {
                                    \voiceTwo
                                    c'32
                                    [
                                    r64
                                    c'32
                                    r64
                                    c'32
                                    r64
                                    c'32
                                    r64
                                    c'32
                                    r64
                                    c'32
                                    r64
                                    c'32
                                    r64
                                    ]
                                }
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 5) (ly:make-duration 4 0))
                                \times 15/18
                                {
                                    c'16
                                    [
                                    r16
                                    c'16
                                    r16
                                    c'16
                                    r16
                                    ]
                                }
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 15 28) (ly:make-duration 6 0))
                                \times 56/30
                                {
                                    c'64.
                                    [
                                    r64
                                    c'64.
                                    r64
                                    c'64.
                                    r64
                                    c'64.
                                    r64
                                    c'64.
                                    r64
                                    c'64.
                                    r64
                                    ]
                                }
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 12 11) (ly:make-duration 4 0))
                                \times 33/36
                                {
                                    c'8
                                    [
                                    r8
                                    c'8
                                    r8
                                    c'8
                                    r8
                                    ]
                                }
                                c'16..
                                [
                                r16..
                                c'16..
                                r16..
                                c'16..
                                r16..
                                c'16..
                                r16..
                                ]
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 12 13) (ly:make-duration 4 0))
                                \times 91/84
                                {
                                    c'8
                                    [
                                    r8
                                    c'8
                                    r8
                                    c'8
                                    r8
                                    ]
                                }
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 21 20) (ly:make-duration 6 0))
                                \times 60/63
                                {
                                    c'32
                                    [
                                    r64
                                    c'32
                                    r64
                                    c'32
                                    r64
                                    c'32
                                    r64
                                    c'32
                                    r64
                                    c'32
                                    r64
                                    c'32
                                    r64
                                    ]
                                }
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 25 14) (ly:make-duration 5 0))
                                \times 14/25
                                {
                                    c'16.
                                    [
                                    r16
                                    c'16.
                                    r16
                                    c'16.
                                    r16
                                    c'16.
                                    r16
                                    c'16.
                                    r16
                                    ]
                                }
                            }
                        >>
                        \oneVoice
                        s1 * 7/16
                        s1 * 7/8
                        s1 * 5/16
                        s1 * 9/16
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 5/16
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                    }
                }
                \context Staff = "piano 3 staff"
                {
                    \context Voice = "piano 3 voice"
                    {
                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Bold") { II }
                        \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Bold") { II }
                        s1 * 1/8
                        <<
                            \context Voice = "piano 3 voice temp"
                            {
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 5) (ly:make-duration 2 0))
                                \times 5/6
                                {
                                    \voiceThree \shiftOff
                                    \pitchedTrill
                                    ef''2
                                    _ \f
                                    \startTrillSpan f''
                                    \pitchedTrill
                                    df'4
                                    \stopTrillSpan
                                    \startTrillSpan g
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 5 0))
                                    \times 4/5
                                    {
                                        bf'32
                                        \stopTrillSpan
                                        [
                                        (
                                        d''32
                                        cs''32
                                        ef''32
                                        af''32
                                        )
                                        ]
                                    }
                                    \pitchedTrill
                                    df''4
                                    ~
                                    \startTrillSpan eff''
                                    df''16
                                    \pitchedTrill
                                    ef'4
                                    \stopTrillSpan
                                    ~
                                    \startTrillSpan f'
                                    ef'16
                                    ~
                                }
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                \times 2/3
                                {
                                    ef'4
                                    \pitchedTrill
                                    df''8
                                    \stopTrillSpan
                                    ~
                                    \startTrillSpan g'
                                }
                                df''8
                                \pitchedTrill
                                ef''8
                                \stopTrillSpan
                                ~
                                \startTrillSpan f''
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 13 12) (ly:make-duration 4 0))
                                \times 12/13
                                {
                                    ef''8.
                                    \ottava 1
                                    \pitchedTrill
                                    df'''2
                                    \stopTrillSpan
                                    ~
                                    \startTrillSpan eff'''
                                    df'''16
                                    [
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 7 0))
                                    \times 8/7
                                    {
                                        c'''128
                                        \stopTrillSpan
                                        (
                                        cs'''128
                                        af'''128
                                        g'''128
                                        cs''''128
                                        c''''128
                                        cs''''128
                                        )
                                        ]
                                        \ottava 0
                                    }
                                }
                            }
                            \context Voice = "piano 3 imbrication 1"
                            \with
                            {
                                \override TupletBracket.stencil = ##f
                                \override TupletNumber.stencil = ##f
                            }
                            {
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 5) (ly:make-duration 2 0))
                                \times 5/6
                                {
                                    \voiceFour \shiftOff
                                    s2
                                    s4
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 5 0))
                                    \times 4/5
                                    {
                                          %! rmakers.beam_groups()
                                        \set stemLeftBeamCount = 0
                                          %! rmakers.beam_groups()
                                        \set stemRightBeamCount = 3
                                        bf'32
                                        \stopTrillSpan
                                          %! rmakers.beam_groups()
                                        [
                                        (
                                          %! rmakers.beam_groups()
                                        \set stemLeftBeamCount = 3
                                          %! rmakers.beam_groups()
                                        \set stemRightBeamCount = 3
                                        d''32
                                          %! rmakers.beam_groups()
                                        \set stemLeftBeamCount = 3
                                          %! rmakers.beam_groups()
                                        \set stemRightBeamCount = 3
                                        cs''32
                                          %! rmakers.beam_groups()
                                        \set stemLeftBeamCount = 3
                                          %! rmakers.beam_groups()
                                        \set stemRightBeamCount = 3
                                        ef''32
                                          %! rmakers.beam_groups()
                                        \set stemLeftBeamCount = 3
                                          %! rmakers.beam_groups()
                                        \set stemRightBeamCount = 0
                                        af''32
                                        )
                                    }
                                    s4
                                    s16
                                    s4
                                    s16
                                }
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                \times 2/3
                                {
                                    s4
                                    s8
                                }
                                s8
                                s8
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 13 12) (ly:make-duration 4 0))
                                \times 12/13
                                {
                                    s8.
                                    s2
                                    s16
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 7 0))
                                    \times 8/7
                                    {
                                          %! rmakers.beam_groups()
                                        \set stemLeftBeamCount = 1
                                          %! rmakers.beam_groups()
                                        \set stemRightBeamCount = 5
                                        c'''128
                                        \stopTrillSpan
                                        (
                                          %! rmakers.beam_groups()
                                        \set stemLeftBeamCount = 5
                                          %! rmakers.beam_groups()
                                        \set stemRightBeamCount = 5
                                        cs'''128
                                          %! rmakers.beam_groups()
                                        \set stemLeftBeamCount = 5
                                          %! rmakers.beam_groups()
                                        \set stemRightBeamCount = 5
                                        af'''128
                                          %! rmakers.beam_groups()
                                        \set stemLeftBeamCount = 5
                                          %! rmakers.beam_groups()
                                        \set stemRightBeamCount = 5
                                        g'''128
                                          %! rmakers.beam_groups()
                                        \set stemLeftBeamCount = 5
                                          %! rmakers.beam_groups()
                                        \set stemRightBeamCount = 5
                                        cs''''128
                                          %! rmakers.beam_groups()
                                        \set stemLeftBeamCount = 5
                                          %! rmakers.beam_groups()
                                        \set stemRightBeamCount = 5
                                        c''''128
                                          %! rmakers.beam_groups()
                                        \set stemLeftBeamCount = 5
                                          %! rmakers.beam_groups()
                                        \set stemRightBeamCount = 0
                                        cs''''128
                                        )
                                          %! rmakers.beam_groups()
                                        ]
                                    }
                                }
                            }
                        >>
                        \oneVoice
                        s1 * 3/8
                        s1 * 5/16
                        s1 * 7/8
                        s1 * 7/16
                        s1 * 3/8
                        s1 * 5/16
                        s1 * 7/16
                        s1 * 7/16
                        s1 * 7/8
                        s1 * 5/16
                        s1 * 9/16
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 5/16
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                    }
                }
                \context Staff = "piano 4 staff"
                {
                    \context Voice = "piano 4 voice"
                    {
                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Bold") { III }
                        \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Bold") { III }
                        s1 * 1/8
                        s1 * 3/8
                        s1 * 5/16
                        s1 * 9/16
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 5/16
                        s1 * 7/16
                        s1 * 3/8
                        s1 * 5/16
                        s1 * 7/8
                        s1 * 7/16
                        s1 * 3/8
                        s1 * 5/16
                        s1 * 7/16
                        s1 * 7/16
                        s1 * 7/8
                        s1 * 5/16
                        s1 * 9/16
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 5/16
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                    }
                }
            >>
            \context Staff = "piano 5 staff"
            {
                \context Voice = "piano 5 voice"
                {
                    \ottava -1
                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Pedals }
                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Ped. }
                    \clef "bass"
                    <e,, gs, as,>8
                        _ #(make-dynamic-script (markup #:whiteout #:italic "fffff"))
                    \ottava 0
                    s1 * 3/8
                    s1 * 5/16
                    s1 * 9/16
                    s1 * 1/4
                    s1 * 1/4
                    s1 * 5/16
                    s1 * 7/16
                    s1 * 3/8
                    s1 * 5/16
                    s1 * 7/8
                    s1 * 7/16
                    s1 * 3/8
                    s1 * 5/16
                    s1 * 7/16
                    s1 * 7/16
                    s1 * 7/8
                    s1 * 5/16
                    s1 * 9/16
                    s1 * 1/4
                    s1 * 1/4
                    s1 * 5/16
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    s1 * 1/4
                    \stopStaff \startStaff
                }
            }
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
