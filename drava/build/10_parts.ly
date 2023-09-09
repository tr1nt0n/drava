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
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            _ \markup \center-column { \abs-fontsize #30 \musicglyph "scripts.uverylongfermata" }
            \once \override Score.BarLine.transparent = ##f
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            _ \markup \center-column { \abs-fontsize #30 \musicglyph "scripts.ushortfermata" }
            \once \override Score.BarLine.transparent = ##f
            \time 37/8
            s1 * 37/8
            ^ \markup {
              \raise #1 \with-dimensions-from \null
              \override #'(font-size . 3.5)
              \concat {
                  \abjad-metronome-mark-markup #3 #0 #1 #"60"
              }
            }
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            _ \markup \center-column { \abs-fontsize #30 \musicglyph "scripts.ulongfermata" }
            \once \override Score.BarLine.transparent = ##f
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            _ \markup \center-column { \abs-fontsize #30 \musicglyph "scripts.uverylongfermata" }
            \bar "|."
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
                      %! +SCORE
                %%% \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                      %! +SCORE
                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                %%% \once \override Staff.TimeSignature.transparent = ##t
                      %! +SCORE
                %%% \once \override MultiMeasureRest.transparent = ##t
                    R1 * 37/8
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
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                %%% \once \override Staff.TimeSignature.transparent = ##t
                      %! +SCORE
                %%% \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1/4
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
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Bold") { I }
                        \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Bold") { I }
                        \afterGrace
                        <f a c' d' fs' g'' cs''' ds''' b'''>4
                            _ #(make-dynamic-script (markup #:whiteout #:italic "fffff"))
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak stencil #constante-hairpin
                        \<
                        {
                            \once \override Accidental.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Stem.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            \once \override Flag.stroke-style = #"grace"
                            <f a c' d' fs' g'' cs''' ds''' b'''>16
                        }
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \afterGrace
                        <g! c'! d'! a'! f''! fs''! bf''! ef'''! f'''! fs'''!>4
                        - \abjad-zero-padding-glissando
                        \glissando
                        {
                            \once \override Accidental.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Stem.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            \once \override Flag.stroke-style = #"grace"
                            <g c' d' a' f'' fs'' bf'' ef''' f''' fs'''>16
                            \!
                        }
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 888/693
                        {
                            \once \override NoteHead.duration-log = -2
                            \once \override TupletBracket.transparent = ##t
                            \once \override TupletNumber.transparent = ##t
                            \once \override TupletNumber.transparent = ##t
                            \slash
                            c'16
                              %! rmakers.beam()
                            [
                            \set fontSize = #-3
                            c'8
                            c'64
                            c'64
                            c'64
                            c'64
                            c'16
                            c'64
                            c'64
                            c'64
                            c'64
                            c'64
                            c'16
                            c'64
                            c'8
                            c'64
                            c'64
                            c'64
                            c'16
                            c'64
                            c'64
                            c'64
                            c'64
                            c'64
                            c'16
                            c'64
                            c'64
                            c'8
                            c'64
                            c'64
                            c'16
                            c'64
                            c'64
                            c'64
                            c'64
                            c'64
                            c'16
                            c'64
                            c'64
                            c'64
                            c'8
                            c'64
                            c'16
                            c'64
                            c'64
                            c'64
                            c'64
                            c'64
                            c'16
                            c'64
                            c'64
                            c'64
                            c'64
                            c'8
                            c'16
                            c'64
                            c'64
                            c'64
                            c'64
                            c'64
                            c'16
                            c'64
                            c'64
                            c'64
                            c'64
                            c'64
                            c'16
                            c'8
                            c'64
                            c'64
                            c'64
                            c'64
                            c'16
                            c'64
                            c'64
                            c'64
                            c'64
                            c'64
                            c'16
                            c'64
                            c'8
                            c'64
                            c'64
                            c'64
                            c'16
                            c'64
                            c'64
                            c'64
                            c'64
                            c'64
                            c'16
                            c'64
                            c'64
                            c'8
                            c'64
                            c'64
                            c'16
                            c'64
                            c'64
                            c'64
                            c'64
                            c'64
                            c'16
                            c'64
                            c'64
                            c'64
                            c'8
                            c'64
                            c'16
                            c'64
                            c'64
                              %! rmakers.beam()
                            ]
                        }
                        s1 * 1/4
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                    }
                }
                \context Staff = "piano 3 staff"
                {
                    \context Voice = "piano 3 voice"
                    {
                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Bold") { II }
                        \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Bold") { II }
                        s1 * 1/4
                        s1 * 1/4
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                        s1 * 37/8
                        s1 * 1/4
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                    }
                }
                \context Staff = "piano 4 staff"
                {
                    \context Voice = "piano 4 voice"
                    {
                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Bold") { III }
                        \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Bold") { III }
                        s1 * 1/4
                        s1 * 1/4
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                        s1 * 37/8
                        s1 * 1/4
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                    }
                }
            >>
            \context Staff = "piano 5 staff"
            {
                \context Voice = "piano 5 voice"
                {
                    \once \override Beam.stencil = ##f
                    \once \override Dots.stencil = ##f
                    \once \override Flag.stencil = ##f
                    \once \override NoteHead.duration-log = 2
                    \once \override Stem.stencil = ##f
                    \ottava -1
                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Pedals }
                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Ped. }
                    \clef "bass"
                    \afterGrace
                    <e,, gs, as,>4
                    - \abjad-zero-padding-glissando
                    \glissando
                    {
                        \once \override Accidental.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override Stem.stencil = ##f
                        \once \override NoteHead.transparent = ##t
                        \once \override Flag.stroke-style = #"grace"
                        <e,, gs, as,>16
                        \ottava 0
                    }
                    \once \override Beam.stencil = ##f
                    \once \override Dots.stencil = ##f
                    \once \override Flag.stencil = ##f
                    \once \override NoteHead.duration-log = 2
                    \once \override Stem.stencil = ##f
                    \ottava -1
                    \afterGrace
                    <d,, ef,>4
                    - \abjad-zero-padding-glissando
                    \glissando
                    {
                        \once \override Accidental.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override Stem.stencil = ##f
                        \once \override NoteHead.transparent = ##t
                        \once \override Flag.stroke-style = #"grace"
                        <d,, ef,>16
                        \ottava 0
                    }
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    s1 * 1/4
                    \stopStaff \startStaff
                    s1 * 37/8
                    s1 * 1/4
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    s1 * 1/4
                }
            }
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
