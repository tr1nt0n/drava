    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 3/16
            s1 * 3/16
            ^ \markup {
              \raise #1 \with-dimensions-from \null
              \override #'(font-size . 3.5)
              \concat {
                  \abjad-metronome-mark-markup #3 #0 #1 #"80"
                  [\abjad-metric-modulation-tuplet-lhs #3 #0 #3 #5 #3 #0 #'(1 . 1)]
              }
            }
            \time 4/8
            s1 * 1/2
            \time 2/8
            s1 * 1/4
            \time 5/16
            s1 * 5/16
            \time 2/8
            s1 * 1/4
            \time 13/16
            s1 * 13/16
            ^ \markup {
              \raise #1 \with-dimensions-from \null
              \override #'(font-size . 3.5)
              \concat {
                  \abjad-metronome-mark-markup #3 #0 #1 #"48"
                  [\abjad-metric-modulation-tuplet-lhs #3 #0 #5 #3 #3 #0 #'(1 . 1)]
              }
            }
            \time 3/8
            s1 * 3/8
            \time 3/16
            s1 * 3/16
            \time 4/8
            s1 * 1/2
            \time 2/8
            s1 * 1/4
            \time 5/16
            s1 * 5/16
            \time 2/8
            s1 * 1/4
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
                %%% \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") \center-column { \line { Vivace } \line { Grave } }
                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") \center-column { \line { Vivace } \line { Grave } }
                      %! +SCORE
                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                %%% \once \override MultiMeasureRest.transparent = ##t
                    R1 * 3/16
                      %! +SCORE
                %%% \stopStaff \startStaff
                      %! +SCORE
                %%% \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                      %! +SCORE
                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                %%% \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1/2
                      %! +SCORE
                %%% \stopStaff \startStaff
                      %! +SCORE
                %%% \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                      %! +SCORE
                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
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
                %%% \once \override MultiMeasureRest.transparent = ##t
                    R1 * 13/16
                      %! +SCORE
                %%% \stopStaff \startStaff
                      %! +SCORE
                %%% \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                      %! +SCORE
                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
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
                %%% \once \override MultiMeasureRest.transparent = ##t
                    R1 * 3/16
                      %! +SCORE
                %%% \stopStaff \startStaff
                      %! +SCORE
                %%% \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                      %! +SCORE
                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                %%% \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1/2
                      %! +SCORE
                %%% \stopStaff \startStaff
                      %! +SCORE
                %%% \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                      %! +SCORE
                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
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
                %%% \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1/4
                      %! +SCORE
                %%% \stopStaff \startStaff
                      %! +SCORE
                %%% \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
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
                        s1 * 3/16
                        s1 * 1/2
                        s1 * 1/4
                        s1 * 5/16
                        s1 * 1/4
                        s1 * 13/16
                        s1 * 3/8
                        s1 * 3/16
                        s1 * 1/2
                        s1 * 1/4
                        s1 * 5/16
                        s1 * 1/4
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
                        s1 * 3/16
                        s1 * 1/2
                        s1 * 1/4
                        s1 * 5/16
                        s1 * 1/4
                        s1 * 13/16
                        s1 * 3/8
                        s1 * 3/16
                        s1 * 1/2
                        s1 * 1/4
                        s1 * 5/16
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
                        s1 * 3/16
                        s1 * 1/2
                        s1 * 1/4
                        s1 * 5/16
                        s1 * 1/4
                        s1 * 13/16
                        s1 * 3/8
                        s1 * 3/16
                        s1 * 1/2
                        s1 * 1/4
                        s1 * 5/16
                        s1 * 1/4
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
                    <<
                        \context Voice = "piano 5 voice temp"
                        {
                            \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Pedal }
                            \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Ped. }
                            \voiceFour \shiftOff
                            \clef "bass"
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                            \once \override Staff.AccidentalPlacement.right-padding = #0.6
                            <c, df,>8.
                            ^ \mp
                            - \tweak stencil #constante-hairpin
                            ^ \<
                            ~
                            \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                            \once \override Staff.AccidentalPlacement.right-padding = #0.6
                            <c, df,>2
                            - \tweak stencil #abjad-flared-hairpin
                            ^ \<
                            ~
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 8) (ly:make-duration 5 0))
                            \times 8/9
                            {
                                \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                \once \override NoteHead.no-ledgers = ##t
                                \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                <c, df,>16
                                [
                                \once \override Accidental.stencil = ##f
                                \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                \once \override NoteHead.no-ledgers = ##t
                                \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                cf,16
                                - \bendAfter #'10
                                ^ \fff
                                ]
                                \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                \once \override NoteHead.no-ledgers = ##t
                                \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                <c, df,>8
                                ^ \mp
                                - \tweak stencil #constante-hairpin
                                ^ \<
                                ~
                                \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                \once \override NoteHead.no-ledgers = ##t
                                \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                <c, df,>32
                                ~
                            }
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
                            <c, df,>16.
                            [
                            ^ \<
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                            \once \override Staff.AccidentalPlacement.right-padding = #0.6
                            cf,32
                            - \bendAfter #'13
                            ^ \f
                            ]
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 5 0))
                            \times 8/7
                            {
                                \once \override Accidental.stencil = ##f
                                \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                \once \override NoteHead.no-ledgers = ##t
                                \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                cf,16.
                                - \bendAfter #'11
                                [
                                - \tweak circled-tip ##t
                                - \tweak stencil #abjad-flared-hairpin
                                ^ \<
                                \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                \once \override NoteHead.no-ledgers = ##t
                                \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                <c, df,>8
                                    ^ #(make-dynamic-script (markup #:whiteout #:italic "ffffpp"))
                                ]
                                - \tweak stencil #constante-hairpin
                                ^ \<
                                  %! abjad.glissando(7)
                                \glissando
                            }
                            \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                              %! abjad.glissando(1)
                            \hide NoteHead
                              %! abjad.glissando(1)
                            \override Accidental.stencil = ##f
                              %! abjad.glissando(1)
                            \override NoteColumn.glissando-skip = ##t
                              %! abjad.glissando(1)
                            \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                            \once \override Staff.AccidentalPlacement.right-padding = #0.6
                              %! abjad.glissando(6)
                            \revert Accidental.stencil
                              %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip
                              %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers
                              %! abjad.glissando(6)
                            \undo \hide NoteHead
                            <c, df,>4..
                              %! abjad.glissando(7)
                            \glissando
                            ^ \<
                            ~
                            \once \override Dots.staff-position = #2
                            \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                              %! abjad.glissando(1)
                            \hide NoteHead
                              %! abjad.glissando(1)
                            \override Accidental.stencil = ##f
                              %! abjad.glissando(1)
                            \override NoteColumn.glissando-skip = ##t
                              %! abjad.glissando(1)
                            \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                            \once \override Staff.AccidentalPlacement.right-padding = #0.6
                            <c, df,>8
                            [
                            ~
                            \once \override Dots.staff-position = #2
                            \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                            \once \override Staff.AccidentalPlacement.right-padding = #0.6
                            <c, df,>32
                              %! abjad.glissando(6)
                            \revert Accidental.stencil
                              %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip
                              %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers
                              %! abjad.glissando(6)
                            \undo \hide NoteHead
                            d16.
                                ^ #(make-dynamic-script (markup #:whiteout #:italic "fmf"))
                            - \tweak stencil #abjad-flared-hairpin
                            ^ \<
                              %! abjad.glissando(7)
                            \glissando
                            ~
                            \once \override Dots.staff-position = #2
                              %! abjad.glissando(1)
                            \hide NoteHead
                              %! abjad.glissando(1)
                            \override Accidental.stencil = ##f
                              %! abjad.glissando(1)
                            \override NoteColumn.glissando-skip = ##t
                              %! abjad.glissando(1)
                            \override NoteHead.no-ledgers = ##t
                            d16.
                            \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                            \once \override Staff.AccidentalPlacement.right-padding = #0.6
                              %! abjad.glissando(6)
                            \revert Accidental.stencil
                              %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip
                              %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers
                              %! abjad.glissando(6)
                            \undo \hide NoteHead
                            e'32
                            ^ \ffff
                            ]
                        }
                        \context Voice = "pedal imbrication"
                        \with
                        {
                            \override TupletBracket.stencil = ##f
                            \override TupletNumber.stencil = ##f
                        }
                        {
                            \voiceThree \shiftOff
                            s8.
                            s2
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 8) (ly:make-duration 5 0))
                            \times 8/9
                            {
                                s16
                                  %! rmakers.beam_groups()
                                [
                                \lowest
                                \once \override Accidental.stencil = ##f
                                \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                  %! rmakers.beam_groups()
                                \set stemLeftBeamCount = 2
                                  %! rmakers.beam_groups()
                                \set stemRightBeamCount = 1
                                \once \override NoteHead.no-ledgers = ##t
                                \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                cf,16
                                - \bendAfter #'10
                                \revert-noteheads
                                s8
                                s32
                            }
                            s8.
                            s16.
                            \lowest
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                            \once \override Staff.AccidentalPlacement.right-padding = #0.6
                            cf,32
                            - \bendAfter #'13
                            \revert-noteheads
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 5 0))
                            \times 8/7
                            {
                                \lowest
                                \once \override Accidental.stencil = ##f
                                \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                  %! rmakers.beam_groups()
                                \set stemLeftBeamCount = 1
                                  %! rmakers.beam_groups()
                                \set stemRightBeamCount = 2
                                \once \override NoteHead.no-ledgers = ##t
                                \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                cf,16.
                                - \bendAfter #'11
                                \revert-noteheads
                                s8
                                  %! rmakers.beam_groups()
                                ]
                            }
                            s4..
                            s8
                            s32
                            s16.
                            s16.
                            s32
                        }
                    >>
                    \oneVoice
                    s1 * 3/8
                    s1 * 3/16
                    s1 * 1/2
                    s1 * 1/4
                    s1 * 5/16
                    s1 * 1/4
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    s1 * 1/4
                    \stopStaff \startStaff
                }
            }
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
