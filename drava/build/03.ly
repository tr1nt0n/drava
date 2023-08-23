    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            _ \markup \center-column { \abs-fontsize #30 \musicglyph "scripts.ulongfermata" }
            \once \override Score.BarLine.transparent = ##f
            \time 4/16
            s1 * 1/4
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            _ \markup \center-column { \abs-fontsize #30 \musicglyph "scripts.ulongfermata" }
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
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1/4
                    \stopStaff \startStaff
                      %! +SCORE
                    \stopStaff \startStaff
                    d'8..
                    \mp
                    [
                    - \abjad-zero-padding-glissando
                    \glissando
                    \<
                    g''32
                    \fff
                    ]
                      %! +SCORE
                    \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
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
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 25 32) (ly:make-duration 7 0))
                        \times 32/25
                        {
                            \change Staff = "piano 4 staff"
                            \once \override Beam.damping = #2
                            \override Stem.direction = #UP
                            af64.
                            [
                            c'64
                            a'64.
                            ^ \downmordent
                            \change Staff = "piano 2 staff"
                            r64
                            b'64.
                            r64
                            fs''64.
                            ^ \prall
                            r64
                            <ef'' fs'' a''>64.
                            ^ \turn
                            r64
                            ]
                            \revert Stem.direction
                        }
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
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                        s1 * 1/4
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
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                        \times 2/3
                        {
                            \once \override Beam.damping = #2
                            \override Stem.direction = #DOWN
                            ef16
                            [
                            ef32
                            _ \mordent
                            \change Staff = "piano 3 staff"
                            ef'16
                            r32
                            df''16
                            _ \prallup
                            r32
                            \change Staff = "piano 2 staff"
                            ef'''16
                            \change Staff = "piano 4 staff"
                            r32
                            ]
                            \revert Stem.direction
                        }
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
                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Pedal }
                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Ped. }
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    s1 * 1/4
                    \stopStaff \startStaff
                    \override Stem.direction = #DOWN
                    r8
                    [
                    \ottava -1
                    \clef "bass"
                    <df,, ef,,>8
                    ]
                    \ottava 0
                    \revert Stem.direction
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    s1 * 1/4
                    \stopStaff \startStaff
                }
            }
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
