    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 2/8
            s1 * 1/4
            ^ \markup {
              \raise #1 \with-dimensions-from \null
              \override #'(font-size . 3.5)
              \concat {
                  \abjad-metronome-mark-markup #3 #0 #1 #"80"
              }
            }
            \time 5/16
            s1 * 5/16
            \noBreak
            \time 2/8
            s1 * 1/4
            \time 3/16
            s1 * 3/16
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/16
            s1 * 3/16
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            _ \markup \center-column { \abs-fontsize #30 \musicglyph "scripts.ushortfermata" }
            \once \override Score.BarLine.transparent = ##f
            \time 19/32
            s1 * 19/32
            ^ \markup {
              \raise #1 \with-dimensions-from \null
              \override #'(font-size . 3.5)
              \concat {
                  \abjad-metronome-mark-markup #3 #0 #1 #"120"
                  [\abjad-metric-modulation-tuplet-lhs #3 #0 #2 #3 #3 #0 #'(1 . 1)]
              }
            }
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            _ \markup \center-column { \abs-fontsize #30 \musicglyph "scripts.ushortfermata" }
            \once \override Score.BarLine.transparent = ##f
            \time 5/16
            s1 * 5/16
            ^ \markup {
              \raise #1 \with-dimensions-from \null
              \override #'(font-size . 3.5)
              \concat {
                  \abjad-metronome-mark-markup #3 #0 #1 #"80"
                  [\abjad-metric-modulation #2 #1 #3 #0 #'(1 . 1)]
              }
            }
            \time 3/8
            s1 * 3/8
            - \tweak padding #2
            - \abjad-solid-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { { \override #'(font-size . 3.5) \concat { \abjad-metronome-mark-markup #3 #0 #1 #"48" [\abjad-metric-modulation-tuplet-lhs #3 #0 #5 #3 #3 #0 #'(1 . 1)] } } \hspace #0.5 }
            - \tweak bound-details.right.text \markup { \override #'(font-size . 3.5) \concat { \abjad-metronome-mark-markup #3 #0 #1 #"80" [\abjad-metric-modulation-tuplet-lhs #3 #0 #3 #5 #3 #0 #'(1 . 1)] } }
            \startTextSpan
            \noBreak
            \time 2/8
            s1 * 1/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 2/8
            s1 * 1/4
            \time 9/32
            s1 * 9/32
            \stopTextSpan
            \noBreak
            \time 10/32
            s1 * 5/16
            \time 5/16
            s1 * 5/16
            - \tweak padding #2
            - \abjad-solid-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { { \override #'(font-size . 3.5) \concat { ( \abjad-metronome-mark-markup #3 #0 #1 #"80" ) } } \hspace #0.5 }
            - \tweak bound-details.right.text \markup { \override #'(font-size . 3.5) \concat { \abjad-metronome-mark-markup #3 #0 #1 #"120" [\abjad-metric-modulation-tuplet-lhs #3 #0 #2 #3 #3 #0 #'(1 . 1)] } }
            \startTextSpan
            \time 2/8
            s1 * 1/4
            \time 3/16
            s1 * 3/16
            \stopTextSpan
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/16
            s1 * 3/16
            \bar "||"
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
                    R1 * 3/16
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
                    R1 * 3/16
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
                      %! +SCORE
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                      %! +SCORE
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                    \once \override Staff.TimeSignature.transparent = ##t
                      %! +SCORE
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 19/32
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
                    R1 * 9/32
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
                    R1 * 3/16
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
                    R1 * 3/16
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
                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Bold") { I }
                        \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Bold") { I }
                        s1 * 1/4
                        s1 * 5/16
                        s1 * 1/4
                        s1 * 3/16
                        s1 * 3/16
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                        \once \override Staff.Clef.X-extent = ##f
                        \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
                        \clef "treble"
                        s1 * 19/32
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                        s1 * 5/16
                        s1 * 3/8
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 9/32
                        ^ \mp
                        ^ \<
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 5) (ly:make-duration 4 0))
                        \times 5/6
                        {
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 7 0))
                            \times 8/7
                            {
                                \override Stem.direction = #DOWN
                                ef'''128
                                [
                                (
                                af'''128
                                d'''128
                                bf''128
                                b''128
                                ef''128
                                af'128
                                )
                                ]
                            }
                            \revert Stem.direction
                            \pitchedTrill
                            df'4
                            \startTrillSpan ef'
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 6 0))
                            \times 4/5
                            {
                                ef64
                                \stopTrillSpan
                                [
                                (
                                bf64
                                fs'64
                                a'64
                                cs''64
                                ^ \f
                                )
                                ]
                            }
                        }
                        \override Stem.direction = #DOWN
                        af'8.
                        ^ \pp
                        [
                        (
                        ^ \<
                        ef''8
                        ~
                        ef''16
                        ]
                        \revert Stem.direction
                        e''32.
                        [
                        f'64
                        ~
                        f'32
                        f'32.
                        ef'32.
                        c'32.
                        ef'64
                        ~
                        ef'32
                        g'32
                        ~
                        g'64
                        c''32.
                        ]
                        \override Stem.direction = #DOWN
                        fs''8.
                        ^ \fff
                        )
                        \revert Stem.direction
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
                        s1 * 1/4
                        s1 * 5/16
                        s1 * 1/4
                        s1 * 3/16
                        s1 * 3/16
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                        s1 * 19/32
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                        s1 * 5/16
                        s1 * 3/8
                        s1 * 1/4
                        s1 * 1/4
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 21 19) (ly:make-duration 5 0))
                        \times 19/21
                        {
                            \pitchedTrill
                            ef4..
                            \startTrillSpan f
                            r8..
                            \stopTrillSpan
                        }
                        <d' b'>8.
                        ~
                        <d' b'>8
                        ~
                        <d' b'>8
                        ~
                        <d' b'>32
                        [
                        \ottava -1
                        <a, fs>16.
                        ]
                        ~
                        <a, fs>8.
                        ~
                        <a, fs>8.
                        \ottava 0
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        ]
                        \stopStaff \startStaff
                    }
                }
                \context Staff = "piano 4 staff"
                {
                    \context Voice = "piano 4 voice"
                    {
                        <<
                            \context Voice = "piano 4 voice temp"
                            {
                                \ottava 1
                                \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Bold") { III }
                                \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Bold") { III }
                                \voiceOne
                                g'''4
                                ~
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 9) (ly:make-duration 4 0))
                                \times 9/7
                                {
                                    g'''8.
                                    ~
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 8) (ly:make-duration 6 0))
                                    \times 8/9
                                    {
                                        g'''16
                                        [
                                        f'''16
                                        ~
                                        f'''64
                                        ]
                                        ~
                                    }
                                    f'''8
                                    ~
                                }
                                f'''8.
                                ~
                                f'''8.
                            }
                            \context Voice = "morpheme a outer voice 1"
                            {
                                \voiceTwo
                                <e''' af'''>8
                                \ppp
                                [
                                <bf'' bf'''>8
                                ]
                                ~
                                <bf'' bf'''>8.
                                ~
                                <bf'' bf'''>8
                                ~
                                <bf'' bf'''>4
                                ~
                                <bf'' bf'''>8.
                                [
                                <ef'' e'''>8.
                                ]
                                ~
                                \ottava 0
                            }
                        >>
                        \oneVoice
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                        \change Staff = "piano 2 staff"
                        \ottava -1
                        \override Stem.direction = #DOWN
                        d,32
                        [
                        _ (
                        cs32
                        g32
                        c32
                        ef32
                        b32
                        e'32
                        af'32
                        bf'32
                        \ottava 0
                        \change Staff = "piano 3 staff"
                        f'32
                        ^ \mf
                        a'32
                        fs''32
                        af''32
                        bf''32
                        \change Staff = "piano 4 staff"
                        \ottava 1
                        f''32
                        ^ \p
                        a''32
                        fs'''32
                        c''''32
                        ef''''32
                        )
                        ]
                        \ottava 0
                        \revert Stem.direction
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                        <<
                            \context Voice = "piano 4 voice temp"
                            {
                                \ottava 1
                                \voiceOne
                                b''8.
                                _ \ppp
                                ~
                                b''8
                                ~
                                \once \override TupletBracket.padding = -72
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 10) (ly:make-duration 4 0))
                                \times 30/27
                                {
                                    b''4
                                    \once \override TupletBracket.direction = #DOWN
                                    \once \override TupletBracket.padding = -9
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 8) (ly:make-duration 6 0))
                                    \times 8/5
                                    {
                                        e'''64
                                        [
                                        ^ (
                                        cs'''64
                                        b''64
                                        \ottava 0
                                        \change Staff = "piano 2 staff"
                                        c''64
                                        _ \mf
                                        af'64
                                        ]
                                    }
                                    ef'8.
                                    ~
                                }
                                ef'4
                                )
                                \change Staff = "piano 4 staff"
                            }
                            \context Voice = "morpheme a outer voice 2"
                            {
                                \voiceTwo
                                <ef'' e'''>8
                                ~
                                <ef'' e'''>32
                                [
                                <bf' f''>32
                                ]
                                ~
                                <bf' f''>8
                                ~
                                <bf' f''>4.
                                ~
                                <bf' f''>4
                                ~
                                <bf' f''>8
                                [
                                \change Staff = "piano 3 staff"
                                <d' b'>8
                                ^ \mp
                                ]
                                ~
                                \change Staff = "piano 4 staff"
                            }
                        >>
                        \oneVoice
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 21 19) (ly:make-duration 5 0))
                        \times 19/21
                        {
                            r4..
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 6 0))
                            \times 8/7
                            {
                                d64
                                [
                                (
                                fs64
                                ef'64
                                c''64
                                cs''64
                                d''64
                                fs''64
                            }
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 7 0))
                            \times 8/7
                            {
                                a''128
                                fs''128
                                g''128
                                cs'''128
                                af''128
                                a''128
                                fs'''128
                            }
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 7 0))
                            \times 4/5
                            {
                                e'''128
                                b'''128
                                g'''128
                                af'''128
                                e''''128
                                )
                                ]
                            }
                        }
                        s1 * 5/16
                        s1 * 1/4
                        s1 * 3/16
                        s1 * 3/16
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
                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Pedals }
                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Ped. }
                    s1 * 1/4
                    s1 * 5/16
                    s1 * 1/4
                    s1 * 3/16
                    s1 * 3/16
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    s1 * 1/4
                    \stopStaff \startStaff
                    s1 * 19/32
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    s1 * 1/4
                    \stopStaff \startStaff
                    s1 * 5/16
                    s1 * 3/8
                    s1 * 1/4
                    s1 * 1/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 21 19) (ly:make-duration 5 0))
                    \times 38/42
                    {
                        r4...
                        \clef "bass"
                        <c, df>8.
                    }
                    s1 * 5/16
                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                    \once \override NoteHead.no-ledgers = ##t
                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                    <c, df,>4
                    ~
                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                    \once \override NoteHead.no-ledgers = ##t
                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                    <c, df,>8.
                    ~
                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                    \once \override NoteHead.no-ledgers = ##t
                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                    <c, df,>8.
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    s1 * 1/4
                    \stopStaff \startStaff
                }
            }
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
