    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 1/8
            s1 * 1/8
            ^ \markup {
              \raise #6.5 \with-dimensions-from \null
              \override #'(font-size . 3.5)
              \concat {
                  \abjad-metronome-mark-markup #3 #0 #1 #"48"
                  [\abjad-metric-modulation-tuplet-lhs #3 #0 #5 #2 #3 #0 #'(1 . 1)]
              }
            }
            \time 3/8
            s1 * 3/8
            ^ \markup {
              \raise #1 \with-dimensions-from \null
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
            \noBreak
            \time 7/8
            s1 * 7/8
            \time 7/16
            s1 * 7/16
            \noBreak
            \time 3/8
            s1 * 3/8
            \noBreak
            \time 5/16
            s1 * 5/16
            \noBreak
            \time 7/16
            s1 * 7/16
            \once \override Score.TimeSignature.stencil = ##f
            \time 7/16
            s1 * 7/16
            \noBreak
            \time 7/8
            s1 * 7/8
            \time 5/16
            s1 * 5/16
            \time 9/16
            s1 * 9/16
            \time 2/8
            s1 * 1/4
            \noBreak
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
            _ \markup \center-column { \abs-fontsize #30 \musicglyph "scripts.ushortfermata" }
            \once \override Score.BarLine.transparent = ##f
        }
        \context StaffGroup = "Staff Group"
        <<
            \context TempoStaff = "piano 1 staff"
            {
                \context Voice = "piano 1 voice"
                {
                      %! +SCORE
                %%% \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") \center-column { \line { Vivace } \line { Grave } }
                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") \center-column { \line { Vivace } \line { Grave } }
                      %! +SCORE
                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                %%% \once \override Staff.TimeSignature.transparent = ##t
                      %! +SCORE
                %%% \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1/8
                      %! +SCORE
                %%% \stopStaff \startStaff
                      %! +SCORE
                %%% \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                      %! +SCORE
                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                %%% \once \override Staff.TimeSignature.transparent = ##t
                      %! +SCORE
                %%% \once \override MultiMeasureRest.transparent = ##t
                    R1 * 3/8
                      %! +SCORE
                %%% \stopStaff \startStaff
                      %! +SCORE
                %%% \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                      %! +SCORE
                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                %%% \once \override Staff.TimeSignature.transparent = ##t
                      %! +SCORE
                %%% \once \override MultiMeasureRest.transparent = ##t
                    R1 * 5/16
                      %! +SCORE
                %%% \stopStaff \startStaff
                      %! +SCORE
                %%% \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                      %! +SCORE
                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                %%% \once \override Staff.TimeSignature.transparent = ##t
                      %! +SCORE
                %%% \once \override MultiMeasureRest.transparent = ##t
                    R1 * 9/16
                      %! +SCORE
                %%% \stopStaff \startStaff
                      %! +SCORE
                %%% \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                      %! +SCORE
                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                %%% \once \override Staff.TimeSignature.transparent = ##t
                      %! +SCORE
                %%% \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1/4
                      %! +SCORE
                %%% \stopStaff \startStaff
                      %! +SCORE
                %%% \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                      %! +SCORE
                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                %%% \once \override Staff.TimeSignature.transparent = ##t
                      %! +SCORE
                %%% \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1/4
                      %! +SCORE
                %%% \stopStaff \startStaff
                      %! +SCORE
                %%% \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                      %! +SCORE
                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                %%% \once \override Staff.TimeSignature.transparent = ##t
                      %! +SCORE
                %%% \once \override MultiMeasureRest.transparent = ##t
                    R1 * 5/16
                      %! +SCORE
                %%% \stopStaff \startStaff
                      %! +SCORE
                %%% \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                      %! +SCORE
                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                %%% \once \override Staff.TimeSignature.transparent = ##t
                      %! +SCORE
                %%% \once \override MultiMeasureRest.transparent = ##t
                    R1 * 7/16
                      %! +SCORE
                %%% \stopStaff \startStaff
                      %! +SCORE
                %%% \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                      %! +SCORE
                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                %%% \once \override Staff.TimeSignature.transparent = ##t
                      %! +SCORE
                %%% \once \override MultiMeasureRest.transparent = ##t
                    R1 * 3/8
                      %! +SCORE
                %%% \stopStaff \startStaff
                      %! +SCORE
                %%% \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                      %! +SCORE
                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                %%% \once \override Staff.TimeSignature.transparent = ##t
                      %! +SCORE
                %%% \once \override MultiMeasureRest.transparent = ##t
                    R1 * 5/16
                      %! +SCORE
                %%% \stopStaff \startStaff
                      %! +SCORE
                %%% \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                      %! +SCORE
                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                %%% \once \override Staff.TimeSignature.transparent = ##t
                      %! +SCORE
                %%% \once \override MultiMeasureRest.transparent = ##t
                    R1 * 7/8
                      %! +SCORE
                %%% \stopStaff \startStaff
                      %! +SCORE
                %%% \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                      %! +SCORE
                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                %%% \once \override Staff.TimeSignature.transparent = ##t
                      %! +SCORE
                %%% \once \override MultiMeasureRest.transparent = ##t
                    R1 * 7/16
                      %! +SCORE
                %%% \stopStaff \startStaff
                      %! +SCORE
                %%% \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                      %! +SCORE
                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                %%% \once \override Staff.TimeSignature.transparent = ##t
                      %! +SCORE
                %%% \once \override MultiMeasureRest.transparent = ##t
                    R1 * 3/8
                      %! +SCORE
                %%% \stopStaff \startStaff
                      %! +SCORE
                %%% \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                      %! +SCORE
                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                %%% \once \override Staff.TimeSignature.transparent = ##t
                      %! +SCORE
                %%% \once \override MultiMeasureRest.transparent = ##t
                    R1 * 5/16
                      %! +SCORE
                %%% \stopStaff \startStaff
                      %! +SCORE
                %%% \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                      %! +SCORE
                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                %%% \once \override Staff.TimeSignature.transparent = ##t
                      %! +SCORE
                %%% \once \override MultiMeasureRest.transparent = ##t
                    R1 * 7/16
                      %! +SCORE
                %%% \stopStaff \startStaff
                      %! +SCORE
                %%% \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                      %! +SCORE
                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                %%% \once \override Staff.TimeSignature.transparent = ##t
                      %! +SCORE
                %%% \once \override MultiMeasureRest.transparent = ##t
                    R1 * 7/16
                      %! +SCORE
                %%% \stopStaff \startStaff
                      %! +SCORE
                %%% \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                      %! +SCORE
                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                %%% \once \override Staff.TimeSignature.transparent = ##t
                      %! +SCORE
                %%% \once \override MultiMeasureRest.transparent = ##t
                    R1 * 7/8
                      %! +SCORE
                %%% \stopStaff \startStaff
                      %! +SCORE
                %%% \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                      %! +SCORE
                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                %%% \once \override Staff.TimeSignature.transparent = ##t
                      %! +SCORE
                %%% \once \override MultiMeasureRest.transparent = ##t
                    R1 * 5/16
                      %! +SCORE
                %%% \stopStaff \startStaff
                      %! +SCORE
                %%% \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                      %! +SCORE
                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                %%% \once \override Staff.TimeSignature.transparent = ##t
                      %! +SCORE
                %%% \once \override MultiMeasureRest.transparent = ##t
                    R1 * 9/16
                      %! +SCORE
                %%% \stopStaff \startStaff
                      %! +SCORE
                %%% \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                      %! +SCORE
                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                %%% \once \override Staff.TimeSignature.transparent = ##t
                      %! +SCORE
                %%% \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1/4
                      %! +SCORE
                %%% \stopStaff \startStaff
                      %! +SCORE
                %%% \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                      %! +SCORE
                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                %%% \once \override Staff.TimeSignature.transparent = ##t
                      %! +SCORE
                %%% \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1/4
                      %! +SCORE
                %%% \stopStaff \startStaff
                      %! +SCORE
                %%% \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                      %! +SCORE
                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                %%% \once \override Staff.TimeSignature.transparent = ##t
                      %! +SCORE
                %%% \once \override MultiMeasureRest.transparent = ##t
                    R1 * 5/16
                      %! +SCORE
                %%% \stopStaff \startStaff
                      %! +SCORE
                %%% \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                %%% \once \override Staff.TimeSignature.transparent = ##t
                      %! +SCORE
                %%% \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1/4
                    \stopStaff \startStaff
                      %! +SCORE
                %%% \stopStaff \startStaff
                }
            }
            \context GrandStaff = "sub group 1"
            <<
                \context Staff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Bold") { I }
                        \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Bold") { I }
                        <f a c' d' fs' g'' cs''' ds''' b'''>8
                            _ #(make-dynamic-script (markup #:whiteout #:italic "fffff"))
                        \breathe
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
                                        ^ (
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
                                    )
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 4 0))
                                    \times 2/3
                                    {
                                        ef,16
                                        [
                                        ^ (
                                        af,16
                                        ef,16
                                        ]
                                    }
                                    e,8
                                    ~
                                }
                                e,4
                                )
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
                                    ef'16
                                    - \prall
                                    [
                                    r32
                                    ef'16
                                    r32
                                    df'16
                                    r32
                                    ]
                                }
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 5) (ly:make-duration 4 0))
                                \times 20/24
                                {
                                    ef'32.
                                    [
                                    r64
                                    ef'32.
                                    r64
                                    ef'32.
                                    - \mordent
                                    r64
                                    df'32.
                                    r64
                                    ef'32.
                                    - \turn
                                    r64
                                    ef'32.
                                    - \prallup
                                    r64
                                    ]
                                }
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 7) (ly:make-duration 4 0))
                                \times 7/5
                                {
                                    ef'32
                                    [
                                    r128
                                    ef'32
                                    r128
                                    df'32
                                    r128
                                    ef32
                                    r128
                                    df32
                                    - \turn
                                    r128
                                    ef32
                                    r128
                                    df32
                                    - \pralldown
                                    r128
                                    ef32
                                    - \mordent
                                    r128
                                    ]
                                }
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 81 88) (ly:make-duration 7 0))
                                \times 88/81
                                {
                                    ef32...
                                    [
                                    r128.
                                    df32...
                                    r128.
                                    ef32...
                                    r128.
                                    ef32...
                                    r128.
                                    ef32...
                                    - \upmordent
                                    r128.
                                    df'32...
                                    r128.
                                    ef'32...
                                    - \prall
                                    r128.
                                    ef'32...
                                    - \downmordent
                                    r128.
                                    ef'32...
                                    r128.
                                    ]
                                }
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 10 7) (ly:make-duration 3 0))
                                \times 14/20
                                {
                                    ef'8.
                                    [
                                    r16
                                    df'8.
                                    r16
                                    ef'8.
                                    r16
                                    df'8.
                                    - \prall
                                    r16
                                    ef'8.
                                    r16
                                    ]
                                }
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 20 13) (ly:make-duration 4 0))
                                \times 13/20
                                {
                                    df'8.
                                    - \turn
                                    [
                                    r16
                                    ef''8.
                                    - \mordent
                                    r16
                                    ef''8.
                                    r16
                                    df''8.
                                    r16
                                    ef''8.
                                    r16
                                    ]
                                }
                                ef'''32.
                                [
                                r64
                                ef'''32.
                                - \prallup
                                r64
                                df'''32.
                                r64
                                ef'''32.
                                - \downmordent
                                r64
                                ef'''32.
                                - \turn
                                r64
                                ]
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 12 7) (ly:make-duration 4 0))
                                \times 14/24
                                {
                                    ef'''16.
                                    [
                                    r32
                                    ef'''16.
                                    r32
                                    df'''16.
                                    r32
                                    ef'''16.
                                    r32
                                    df'''16.
                                    - \prall
                                    r32
                                    ef'''16.
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
                                    e'32
                                    - \mordent
                                    [
                                    c'64
                                    - \turn
                                    ef32
                                    r64
                                    b32
                                    r64
                                    e32
                                    r64
                                    <ef af b>32
                                    r64
                                    ef32
                                    - \prallup
                                    c'64
                                    d32
                                    - \turn
                                    r64
                                    ]
                                }
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 5) (ly:make-duration 4 0))
                                \times 15/18
                                {
                                    f16
                                    - \pralldown
                                    [
                                    <ef e bf>16
                                    fs16
                                    a16
                                    c'16
                                    r16
                                    ]
                                }
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 15 28) (ly:make-duration 6 0))
                                \times 56/30
                                {
                                    a64.
                                    - \mordent
                                    [
                                    r64
                                    <d ef fs>64.
                                    r64
                                    ef,64.
                                    - \upmordent
                                    r64
                                    c64.
                                    - \prall
                                    a,64
                                    f,64.
                                    r64
                                    <cs, fs, b,>64.
                                    d,64
                                    ]
                                }
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 12 11) (ly:make-duration 4 0))
                                \times 33/36
                                {
                                    e,8
                                    - \downmordent
                                    [
                                    c8
                                    ef,8
                                    - \prall
                                    r8
                                    <e g bf>8
                                    - \turn
                                    r8
                                    ]
                                }
                                fs16..
                                [
                                r16..
                                ef16..
                                r16..
                                c'16..
                                fs'16..
                                \clef "treble"
                                <f' bf' b'>16..
                                - \mordent
                                r16..
                                ]
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 12 13) (ly:make-duration 4 0))
                                \times 91/84
                                {
                                    c'8
                                    [
                                    a'8
                                    - \prallup
                                    f''8
                                    - \downmordent
                                    ef'''8
                                    <c'' ef'' f''>8
                                    r8
                                    ]
                                }
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 21 20) (ly:make-duration 6 0))
                                \times 60/63
                                {
                                    g''32
                                    [
                                    r64
                                    ef''32
                                    r64
                                    cs''32
                                    - \turn
                                    r64
                                    f''32
                                    <ef'' e'' a''>64
                                    - \prall
                                    c'''32
                                    - \mordent
                                    r64
                                    e'''32
                                    cs'''64
                                    d'''32
                                    <af''' a''' b'''>64
                                    ]
                                }
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 25 14) (ly:make-duration 5 0))
                                \times 14/25
                                {
                                    cs'''16.
                                    - \turn
                                    [
                                    r16
                                    f'''16.
                                    r16
                                    c'''16.
                                    - \prallup
                                    r16
                                    c'''16.
                                    - \turn
                                    r16
                                    <ef''' a''' bf'''>16.
                                    fs'''16
                                    ]
                                }
                            }
                        >>
                        \oneVoice
                        <<
                            \context Voice = "piano 2 voice temp"
                            {
                                \clef "bass"
                                \voiceOne
                                ef4..
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 7) (ly:make-duration 3 0))
                                \times 7/9
                                {
                                    g8
                                    [
                                    c8
                                    ^ (
                                    fs8
                                    d'8
                                    )
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 4 0))
                                    \times 4/5
                                    {
                                        g16
                                        ^ (
                                        f'16
                                        b16
                                        e'16
                                        cs'16
                                        )
                                    }
                                    b8
                                    ^ (
                                    c'8
                                    af8
                                    ]
                                }
                                ef'8.
                                ~
                                ef'8
                                ~
                                ef'4.
                                ~
                                ef'8.
                                )
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 4 0))
                                \times 4/5
                                {
                                    af'16
                                    [
                                    ^ (
                                    ef''16
                                    )
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 6 0))
                                    \times 8/7
                                    {
                                        e''64
                                        ^ (
                                        f''64
                                        f'64
                                        ef''64
                                        c'''64
                                        ef''64
                                        g''64
                                        )
                                    }
                                    c'''16
                                    ]
                                    ^ (
                                }
                                fs''4
                                ~
                                fs''8.
                                ~
                                fs''8
                                )
                            }
                            \context Voice = "morpheme a outer voice 3"
                            {
                                \voiceTwo
                                <e a>8.
                                ~
                                <e a>32
                                [
                                <f c'>16.
                                ]
                                ~
                                <f c'>8
                                ~
                                <f c'>2..
                                ~
                                <f c'>8.
                                ~
                                <f c'>8
                                ~
                                <f c'>8
                                [
                                \clef "treble"
                                <bf' c''>16
                                ]
                                ~
                                <bf' c''>4.
                                ~
                                <bf' c''>4
                                ~
                                <bf' c''>4
                                ~
                                <bf' c''>32
                                [
                                <bf'' d'''>32
                                ]
                                ~
                                <bf'' d'''>8
                                ~
                                <bf'' d'''>8
                                ~
                            }
                        >>
                        \oneVoice
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
                        <<
                            \context Voice = "piano 3 voice temp"
                            {
                                \voiceOne
                                e''4.
                                ~
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 24 19) (ly:make-duration 4 0))
                                \times 57/72
                                {
                                    e''2
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 2 0))
                                    \times 4/5
                                    {
                                        f''4
                                        ^ (
                                        f'4
                                        ef'4
                                        c'4
                                        ef'4
                                        ~
                                    }
                                }
                                ef'4..
                                )
                            }
                            \context Voice = "morpheme a outer voice 2"
                            {
                                \voiceTwo
                                <af'' cs'''>8.
                                [
                                <e' a'>8.
                                ]
                                ~
                                <e' a'>8.
                                ~
                                <e' a'>8
                                ~
                                <e' a'>2..
                                ~
                                <e' a'>8.
                                ~
                                <e' a'>32
                                [
                                <f' c''>16.
                                ]
                                ~
                                <f' c''>8
                                ~
                            }
                        >>
                        \oneVoice
                        <<
                            \context Voice = "piano 3 voice temp"
                            {
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 10 9) (ly:make-duration 3 0))
                                \times 9/10
                                {
                                    \voiceThree \shiftOff
                                    \pitchedTrill
                                    ef'4
                                    ~
                                    \startTrillSpan f'
                                    ef'16
                                    \pitchedTrill
                                    df'2
                                    \stopTrillSpan
                                    ~
                                    \startTrillSpan g
                                    df'16
                                    [
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 6 0))
                                    \times 8/7
                                    {
                                        a'64
                                        \stopTrillSpan
                                        (
                                        fs'64
                                        \clef "bass"
                                        g64
                                        cs64
                                        af,64
                                        a,64
                                        fs,64
                                        )
                                        ]
                                    }
                                    \pitchedTrill
                                    df,4
                                    ~
                                    \startTrillSpan eff,
                                }
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 22 21) (ly:make-duration 4 0))
                                \times 21/22
                                {
                                    df,8.
                                    \pitchedTrill
                                    ef4
                                    \stopTrillSpan
                                    \startTrillSpan f
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 6 0))
                                    \times 4/5
                                    {
                                        f64
                                        \stopTrillSpan
                                        [
                                        (
                                        d64
                                        g64
                                        ef'64
                                        fs64
                                        )
                                        ]
                                    }
                                    \pitchedTrill
                                    ef2
                                    \startTrillSpan a,
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                                    \times 6/5
                                    {
                                        b,32
                                        \stopTrillSpan
                                        [
                                        (
                                        e32
                                        af32
                                        g'32
                                        a32
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 7 0))
                                    \times 8/7
                                    {
                                        c'128
                                        e'128
                                        b128
                                        bf128
                                        c128
                                        c'128
                                        e128
                                        )
                                    }
                                    \pitchedTrill
                                    df8
                                    ]
                                    ~
                                    \startTrillSpan eff
                                }
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 10) (ly:make-duration 5 0))
                                \times 10/9
                                {
                                    df16
                                    [
                                    \pitchedTrill
                                    ef8..
                                    ]
                                    ~
                                    \startTrillSpan ff
                                }
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 11 9) (ly:make-duration 4 0))
                                \times 9/11
                                {
                                    ef16
                                    \pitchedTrill
                                    df4..
                                    \stopTrillSpan
                                    \startTrillSpan ef
                                    \pitchedTrill
                                    ef8
                                    \stopTrillSpan
                                    [
                                    \startTrillSpan ff
                                    \pitchedTrill
                                    df16
                                    ]
                                    \startTrillSpan g,
                                }
                            }
                            \context Voice = "piano 3 imbrication 2"
                            \with
                            {
                                \override TupletBracket.stencil = ##f
                                \override TupletNumber.stencil = ##f
                            }
                            {
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 10 9) (ly:make-duration 3 0))
                                \times 9/10
                                {
                                    \voiceFour \shiftOff
                                    s4
                                    s16
                                    s2
                                    s16
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 6 0))
                                    \times 8/7
                                    {
                                          %! rmakers.beam_groups()
                                        \set stemLeftBeamCount = 0
                                          %! rmakers.beam_groups()
                                        \set stemRightBeamCount = 4
                                        a'64
                                        \stopTrillSpan
                                          %! rmakers.beam_groups()
                                        [
                                        (
                                          %! rmakers.beam_groups()
                                        \set stemLeftBeamCount = 4
                                          %! rmakers.beam_groups()
                                        \set stemRightBeamCount = 4
                                        fs'64
                                          %! rmakers.beam_groups()
                                        \set stemLeftBeamCount = 4
                                          %! rmakers.beam_groups()
                                        \set stemRightBeamCount = 4
                                        g64
                                          %! rmakers.beam_groups()
                                        \set stemLeftBeamCount = 4
                                          %! rmakers.beam_groups()
                                        \set stemRightBeamCount = 4
                                        cs64
                                          %! rmakers.beam_groups()
                                        \set stemLeftBeamCount = 4
                                          %! rmakers.beam_groups()
                                        \set stemRightBeamCount = 4
                                        af,64
                                          %! rmakers.beam_groups()
                                        \set stemLeftBeamCount = 4
                                          %! rmakers.beam_groups()
                                        \set stemRightBeamCount = 4
                                        a,64
                                          %! rmakers.beam_groups()
                                        \set stemLeftBeamCount = 4
                                          %! rmakers.beam_groups()
                                        \set stemRightBeamCount = 1
                                        fs,64
                                        )
                                    }
                                    s4
                                }
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 22 21) (ly:make-duration 4 0))
                                \times 21/22
                                {
                                    s8.
                                    s4
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 6 0))
                                    \times 4/5
                                    {
                                          %! rmakers.beam_groups()
                                        \set stemLeftBeamCount = 1
                                          %! rmakers.beam_groups()
                                        \set stemRightBeamCount = 4
                                        f64
                                        \stopTrillSpan
                                        (
                                          %! rmakers.beam_groups()
                                        \set stemLeftBeamCount = 4
                                          %! rmakers.beam_groups()
                                        \set stemRightBeamCount = 4
                                        d64
                                          %! rmakers.beam_groups()
                                        \set stemLeftBeamCount = 4
                                          %! rmakers.beam_groups()
                                        \set stemRightBeamCount = 4
                                        g64
                                          %! rmakers.beam_groups()
                                        \set stemLeftBeamCount = 4
                                          %! rmakers.beam_groups()
                                        \set stemRightBeamCount = 4
                                        ef'64
                                          %! rmakers.beam_groups()
                                        \set stemLeftBeamCount = 4
                                          %! rmakers.beam_groups()
                                        \set stemRightBeamCount = 1
                                        fs64
                                        )
                                    }
                                    s2
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                                    \times 6/5
                                    {
                                          %! rmakers.beam_groups()
                                        \set stemLeftBeamCount = 1
                                          %! rmakers.beam_groups()
                                        \set stemRightBeamCount = 3
                                        b,32
                                        \stopTrillSpan
                                        (
                                          %! rmakers.beam_groups()
                                        \set stemLeftBeamCount = 3
                                          %! rmakers.beam_groups()
                                        \set stemRightBeamCount = 3
                                        e32
                                          %! rmakers.beam_groups()
                                        \set stemLeftBeamCount = 3
                                          %! rmakers.beam_groups()
                                        \set stemRightBeamCount = 3
                                        af32
                                          %! rmakers.beam_groups()
                                        \set stemLeftBeamCount = 3
                                          %! rmakers.beam_groups()
                                        \set stemRightBeamCount = 3
                                        g'32
                                          %! rmakers.beam_groups()
                                        \set stemLeftBeamCount = 3
                                          %! rmakers.beam_groups()
                                        \set stemRightBeamCount = 1
                                        a32
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 7 0))
                                    \times 8/7
                                    {
                                          %! rmakers.beam_groups()
                                        \set stemLeftBeamCount = 1
                                          %! rmakers.beam_groups()
                                        \set stemRightBeamCount = 5
                                        c'128
                                          %! rmakers.beam_groups()
                                        \set stemLeftBeamCount = 5
                                          %! rmakers.beam_groups()
                                        \set stemRightBeamCount = 5
                                        e'128
                                          %! rmakers.beam_groups()
                                        \set stemLeftBeamCount = 5
                                          %! rmakers.beam_groups()
                                        \set stemRightBeamCount = 5
                                        b128
                                          %! rmakers.beam_groups()
                                        \set stemLeftBeamCount = 5
                                          %! rmakers.beam_groups()
                                        \set stemRightBeamCount = 5
                                        bf128
                                          %! rmakers.beam_groups()
                                        \set stemLeftBeamCount = 5
                                          %! rmakers.beam_groups()
                                        \set stemRightBeamCount = 5
                                        c128
                                          %! rmakers.beam_groups()
                                        \set stemLeftBeamCount = 5
                                          %! rmakers.beam_groups()
                                        \set stemRightBeamCount = 5
                                        c'128
                                          %! rmakers.beam_groups()
                                        \set stemLeftBeamCount = 5
                                          %! rmakers.beam_groups()
                                        \set stemRightBeamCount = 1
                                        e128
                                        )
                                    }
                                    s8
                                }
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 10) (ly:make-duration 5 0))
                                \times 10/9
                                {
                                    s16
                                    s8..
                                }
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 11 9) (ly:make-duration 4 0))
                                \times 9/11
                                {
                                    s16
                                    s4..
                                    s8
                                    s16
                                      %! rmakers.beam_groups()
                                    ]
                                }
                            }
                        >>
                        \oneVoice
                        <<
                            \context Voice = "piano 3 voice temp"
                            {
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 3 0))
                                \times 4/5
                                {
                                    \clef "treble"
                                    \voiceOne
                                    ef'''16.
                                    \stopTrillSpan
                                    [
                                    r32
                                    ef'''16.
                                    r32
                                    ef'''16.
                                    r32
                                    ef'''16.
                                    r32
                                    ef'''16.
                                    r32
                                    ]
                                }
                                ef'''32.
                                [
                                r64
                                ef'''32.
                                r64
                                ef'''32.
                                r64
                                ef'''32.
                                r64
                                ef'''32.
                                r64
                                ]
                            }
                            \context Voice = "morpheme c lower voice 2"
                            {
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 15 16) (ly:make-duration 5 0))
                                \times 16/15
                                {
                                    \voiceTwo
                                    fs'''32.
                                    - \mordent
                                    [
                                    a''32
                                    bf''32.
                                    r32
                                    fs''32.
                                    r32
                                    a''32.
                                    r32
                                    <cs''' d''' f'''>32.
                                    - \upmordent
                                    r32
                                    ef''32.
                                    c'''32
                                    - \prall
                                    ]
                                }
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 5) (ly:make-duration 4 0))
                                \times 15/18
                                {
                                    a''16
                                    - \downmordent
                                    [
                                    r16
                                    cs'''16
                                    <e'' fs'' g''>16
                                    d'''16
                                    g''16
                                    ]
                                }
                            }
                        >>
                        \oneVoice
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
                    <ef,>2..
                    \fff
                    <<
                        \context Voice = "piano 5 voice temp"
                        {
                            \voiceTwo
                            <ef,>8.
                            ~
                            <ef,>8
                            ~
                            <ef,>4.
                            ~
                            <ef,>8.
                            ~
                            <ef,>4
                            ~
                            <ef,>4
                            ~
                            <ef,>8.
                            ~
                            <ef,>8
                        }
                        \context Voice = "pedal intermittent voice"
                        {
                            \voiceOne
                            f,64
                            [
                            (
                            f,64
                            f,64
                            f,64
                            a,,64
                            a,,64
                            a,,64
                            gf,64
                            gf,64
                            gf,64
                            gf,64
                            gf,64
                            f,64
                            f,64
                            f,64
                            f,64
                            a,,64
                            a,,64
                            a,,64
                            gf,64
                            gf,64
                            gf,64
                            gf,64
                            gf,64
                            f,64
                            f,64
                            f,64
                            f,64
                            a,,64
                            a,,64
                            a,,64
                            gf,64
                            gf,64
                            gf,64
                            gf,64
                            gf,64
                            f,64
                            f,64
                            f,64
                            f,64
                            a,,64
                            a,,64
                            a,,64
                            gf,64
                            gf,64
                            gf,64
                            gf,64
                            gf,64
                            f,64
                            f,64
                            f,64
                            f,64
                            a,,64
                            a,,64
                            a,,64
                            gf,64
                            gf,64
                            gf,64
                            gf,64
                            gf,64
                            f,64
                            f,64
                            f,64
                            f,64
                            a,,64
                            a,,64
                            a,,64
                            gf,64
                            gf,64
                            gf,64
                            gf,64
                            gf,64
                            f,64
                            f,64
                            f,64
                            f,64
                            a,,64
                            a,,64
                            a,,64
                            gf,64
                            gf,64
                            gf,64
                            gf,64
                            gf,64
                            f,64
                            f,64
                            f,64
                            f,64
                            a,,64
                            a,,64
                            a,,64
                            gf,64
                            gf,64
                            gf,64
                            gf,64
                            gf,64
                            f,64
                            f,64
                            f,64
                            f,64
                            a,,64
                            a,,64
                            a,,64
                            gf,64
                            gf,64
                            gf,64
                            gf,64
                            gf,64
                            )
                            ]
                        }
                    >>
                    \oneVoice
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    s1 * 1/4
                    \stopStaff \startStaff
                }
            }
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
