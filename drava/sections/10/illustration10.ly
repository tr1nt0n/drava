  %! abjad.LilyPondFile._get_format_pieces()
\version "2.23.81"
  %! abjad.LilyPondFile._get_format_pieces()
\language "english"
  %! abjad.LilyPondFile._get_format_pieces()
\version "2.23.81"
  %! abjad.LilyPondFile._get_format_pieces()
\language "english"
\include "/Users/trintonprater/scores/drava/drava/build/section-stylesheet.ily"
\include "/Users/trintonprater/abjad/abjad/scm/abjad.ily"
  %! abjad.LilyPondFile._get_format_pieces()
\score
  %! abjad.LilyPondFile._get_format_pieces()
{
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
              \raise #3 \with-dimensions-from \null
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
                    R1 * 1/4
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
                    R1 * 37/8
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
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                    \once \override Staff.TimeSignature.transparent = ##t
                      %! +SCORE
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1/4
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
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
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
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            \once \override Flag.stroke-style = #"grace"
                            <f a c' d' fs' g'' cs''' ds''' b'''>16
                        }
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
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
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            \once \override Flag.stroke-style = #"grace"
                            <g c' d' a' f'' fs'' bf'' ef''' f''' fs'''>16
                            \!
                        }
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                        s1 * 37/8
                        ^ \ffff
                        - \tweak stencil #constante-hairpin
                        ^ \<
                        s1 * 1/4
                        ^ \>
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        ^ \pppp
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
                        <<
                            \context Voice = "piano 3 voice temp"
                            {
                                \tweak text #tuplet-number::calc-fraction-text
                                \times 888/693
                                {
                                    \change Staff = "piano 2 staff"
                                    \once \override NoteHead.duration-log = -2
                                    \once \override TupletBracket.transparent = ##t
                                    \once \override TupletNumber.transparent = ##t
                                    \once \override TupletNumber.transparent = ##t
                                    \ottava 2
                                    \slash
                                    \voiceFour \shiftOff
                                    e'''16
                                    [
                                    \change Staff = "piano 2 staff"
                                    \set fontSize = #-5
                                    d'''8
                                    \change Staff = "piano 3 staff"
                                    \ottava 2
                                    g'''64
                                    (
                                    c''''64
                                    ef''''64
                                    b'''64
                                    )
                                    \change Staff = "piano 2 staff"
                                    d'''16
                                    \change Staff = "piano 3 staff"
                                    af'''64
                                    (
                                    bf'''64
                                    f'''64
                                    a'''64
                                    fs'''64
                                    )
                                    \change Staff = "piano 2 staff"
                                    e'''16
                                    \change Staff = "piano 3 staff"
                                    c''''64
                                    \change Staff = "piano 2 staff"
                                    e'''8
                                    \change Staff = "piano 3 staff"
                                    b'''64
                                    (
                                    fs'''64
                                    af'''64
                                    )
                                    \change Staff = "piano 2 staff"
                                    d'''16
                                    \change Staff = "piano 3 staff"
                                    f'''64
                                    (
                                    a'''64
                                    g'''64
                                    c''''64
                                    cs''''64
                                    )
                                    \change Staff = "piano 2 staff"
                                    e'''16
                                    \change Staff = "piano 3 staff"
                                    fs'''64
                                    (
                                    af'''64
                                    )
                                    \change Staff = "piano 2 staff"
                                    d'''8
                                    \change Staff = "piano 3 staff"
                                    f'''64
                                    (
                                    cs''''64
                                    )
                                    \change Staff = "piano 2 staff"
                                    d'''16
                                    \change Staff = "piano 3 staff"
                                    c''''64
                                    (
                                    b'''64
                                    fs'''64
                                    c''''64
                                    ef''''64
                                    )
                                    \change Staff = "piano 2 staff"
                                    e'''16
                                    \change Staff = "piano 3 staff"
                                    cs''''64
                                    (
                                    g'''64
                                    ef''''64
                                    )
                                    \change Staff = "piano 2 staff"
                                    e'''8
                                    \change Staff = "piano 3 staff"
                                    fs'''64
                                    \change Staff = "piano 2 staff"
                                    d'''16
                                    \change Staff = "piano 3 staff"
                                    f'''64
                                    (
                                    a'''64
                                    fs'''64
                                    af'''64
                                    bf'''64
                                    )
                                    \change Staff = "piano 2 staff"
                                    e'''16
                                    \change Staff = "piano 3 staff"
                                    ef''''64
                                    (
                                    b'''64
                                    fs'''64
                                    bf'''64
                                    )
                                    \ottava 0
                                    \change Staff = "piano 2 staff"
                                    d'''8
                                    \ottava 0
                                    \change Staff = "piano 2 staff"
                                    \ottava 1
                                    d''16
                                    \change Staff = "piano 3 staff"
                                    \ottava 1
                                    fs''64
                                    (
                                    af''64
                                    g''64
                                    c'''64
                                    cs'''64
                                    )
                                    \change Staff = "piano 2 staff"
                                    e''16
                                    \change Staff = "piano 3 staff"
                                    bf''64
                                    (
                                    f''64
                                    a''64
                                    fs''64
                                    cs'''64
                                    )
                                    \change Staff = "piano 2 staff"
                                    d''16
                                    \change Staff = "piano 2 staff"
                                    e''8
                                    \change Staff = "piano 3 staff"
                                    fs''64
                                    (
                                    c'''64
                                    ef'''64
                                    b''64
                                    )
                                    \change Staff = "piano 2 staff"
                                    e''16
                                    \change Staff = "piano 3 staff"
                                    cs'''64
                                    (
                                    g''64
                                    b''64
                                    fs''64
                                    c'''64
                                    )
                                    \change Staff = "piano 2 staff"
                                    d''16
                                    \change Staff = "piano 3 staff"
                                    fs''64
                                    \change Staff = "piano 2 staff"
                                    d''8
                                    \change Staff = "piano 3 staff"
                                    bf''64
                                    (
                                    f''64
                                    a''64
                                    )
                                    \change Staff = "piano 2 staff"
                                    e''16
                                    \change Staff = "piano 3 staff"
                                    b''64
                                    (
                                    fs''64
                                    c'''64
                                    a''64
                                    fs''64
                                    )
                                    \ottava 0
                                    \change Staff = "piano 2 staff"
                                    d''16
                                    \ottava 0
                                    \change Staff = "piano 3 staff"
                                    bf'64
                                    (
                                    f'64
                                    )
                                    \change Staff = "piano 2 staff"
                                    e'8
                                    \change Staff = "piano 3 staff"
                                    c''64
                                    (
                                    cs''64
                                    )
                                    \change Staff = "piano 2 staff"
                                    e'16
                                    \change Staff = "piano 3 staff"
                                    a'64
                                    (
                                    fs'64
                                    af'64
                                    bf'64
                                    cs''64
                                    )
                                    \change Staff = "piano 2 staff"
                                    d'16
                                    \change Staff = "piano 3 staff"
                                    c''64
                                    (
                                    <c'''>64
                                    ~
                                    <ef'' c'''>64
                                    )
                                    ~
                                    <d ef'' c'''>8
                                    ~
                                    \change Staff = "piano 3 staff"
                                    <d ef'' fs'' c'''>64
                                    ~
                                    <d e' ef'' fs'' c'''>16
                                    ~
                                    \change Staff = "piano 3 staff"
                                    <d e' cs'' ef'' fs'' c'''>64
                                    (
                                    ~
                                    <d g e' cs'' ef'' fs'' c'''>64
                                    )
                                    ]
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                }
                                \once \override Beam.stencil = ##f
                                \once \override Dots.staff-position = #2
                                \once \override Dots.stencil = ##f
                                \once \override Flag.stencil = ##f
                                \once \override NoteHead.duration-log = 2
                                \once \override Stem.stencil = ##f
                                \once \override Tie.stencil = ##f
                                  %! abjad.glissando(1)
                                \hide NoteHead
                                  %! abjad.glissando(1)
                                \override Accidental.stencil = ##f
                                  %! abjad.glissando(1)
                                \override NoteColumn.glissando-skip = ##t
                                  %! abjad.glissando(1)
                                \override NoteHead.no-ledgers = ##t
                                \afterGrace
                                <d g e' cs'' ef'' fs'' c'''>4
                                {
                                    \once \override Accidental.stencil = ##f
                                    \once \override Beam.stencil = ##f
                                    \once \override Dots.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override NoteHead.duration-log = 2
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override Stem.stencil = ##f
                                    \once \override Tie.stencil = ##f
                                    \once \override NoteHead.transparent = ##t
                                    \once \override Flag.stroke-style = #"grace"
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    <d g e' cs'' ef'' fs'' c'''>16
                                }
                            }
                            \context Voice = "final measure imbrication"
                            \with
                            {
                                \override TupletBracket.stencil = ##f
                                \override TupletNumber.stencil = ##f
                            }
                            {
                                \tweak text #tuplet-number::calc-fraction-text
                                \times 888/693
                                {
                                    \change Staff = "piano 2 staff"
                                    \once \override NoteHead.duration-log = -2
                                    \once \override TupletBracket.transparent = ##t
                                    \once \override TupletNumber.transparent = ##t
                                    \once \override TupletNumber.transparent = ##t
                                    \ottava 2
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 0
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 2
                                    \slash
                                    \voiceThree \shiftOff
                                    e'''16
                                    - \prallup
                                      %! rmakers.beam_groups()
                                    [
                                    \change Staff = "piano 2 staff"
                                    \set fontSize = #-5
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 1
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 1
                                    d'''8
                                    - \turn
                                    s64
                                    s64
                                    s64
                                    s64
                                    \change Staff = "piano 2 staff"
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 2
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 2
                                    d'''16
                                    - \pralldown
                                    s64
                                    s64
                                    s64
                                    s64
                                    s64
                                    \change Staff = "piano 2 staff"
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 2
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 2
                                    e'''16
                                    - \mordent
                                    s64
                                    \change Staff = "piano 2 staff"
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 1
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 1
                                    e'''8
                                    - \upmordent
                                    s64
                                    s64
                                    s64
                                    \change Staff = "piano 2 staff"
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 2
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 2
                                    d'''16
                                    - \prall
                                    s64
                                    s64
                                    s64
                                    s64
                                    s64
                                    \change Staff = "piano 2 staff"
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 2
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 2
                                    e'''16
                                    - \downmordent
                                    s64
                                    s64
                                    \change Staff = "piano 2 staff"
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 1
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 1
                                    d'''8
                                    - \prall
                                    s64
                                    s64
                                    \change Staff = "piano 2 staff"
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 2
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 2
                                    d'''16
                                    - \turn
                                    s64
                                    s64
                                    s64
                                    s64
                                    s64
                                    \change Staff = "piano 2 staff"
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 2
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 2
                                    e'''16
                                    - \mordent
                                    s64
                                    s64
                                    s64
                                    \change Staff = "piano 2 staff"
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 1
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 1
                                    e'''8
                                    - \prallup
                                    s64
                                    \change Staff = "piano 2 staff"
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 2
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 2
                                    d'''16
                                    - \downmordent
                                    s64
                                    s64
                                    s64
                                    s64
                                    s64
                                    \change Staff = "piano 2 staff"
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 2
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 2
                                    e'''16
                                    - \turn
                                    s64
                                    s64
                                    s64
                                    s64
                                    \change Staff = "piano 2 staff"
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 1
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 1
                                    d'''8
                                    - \prall
                                    \ottava 0
                                    \change Staff = "piano 2 staff"
                                    \ottava 1
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 1
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 2
                                    d''16
                                    - \mordent
                                    s64
                                    s64
                                    s64
                                    s64
                                    s64
                                    \change Staff = "piano 2 staff"
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 2
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 2
                                    e''16
                                    - \turn
                                    s64
                                    s64
                                    s64
                                    s64
                                    s64
                                    \change Staff = "piano 2 staff"
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 2
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 2
                                    d''16
                                    - \prallup
                                    \change Staff = "piano 2 staff"
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 1
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 1
                                    e''8
                                    - \turn
                                    s64
                                    s64
                                    s64
                                    s64
                                    \change Staff = "piano 2 staff"
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 2
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 2
                                    e''16
                                    - \pralldown
                                    s64
                                    s64
                                    s64
                                    s64
                                    s64
                                    \change Staff = "piano 2 staff"
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 2
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 2
                                    d''16
                                    - \mordent
                                    s64
                                    \change Staff = "piano 2 staff"
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 1
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 1
                                    d''8
                                    - \upmordent
                                    s64
                                    s64
                                    s64
                                    \change Staff = "piano 2 staff"
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 2
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 2
                                    e''16
                                    - \prall
                                    s64
                                    s64
                                    s64
                                    s64
                                    s64
                                    \change Staff = "piano 2 staff"
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 2
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 2
                                    d''16
                                    - \downmordent
                                    \ottava 0
                                    s64
                                    s64
                                    \change Staff = "piano 2 staff"
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 1
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 1
                                    e'8
                                    - \prall
                                    s64
                                    s64
                                    \change Staff = "piano 2 staff"
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 2
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 2
                                    e'16
                                    - \turn
                                    s64
                                    s64
                                    s64
                                    s64
                                    s64
                                    \change Staff = "piano 2 staff"
                                      %! rmakers.beam_groups()
                                    \set stemLeftBeamCount = 2
                                      %! rmakers.beam_groups()
                                    \set stemRightBeamCount = 2
                                    d'16
                                    - \mordent
                                    s64
                                    s64
                                    s64
                                    s8
                                    s64
                                    s16
                                    s64
                                    s64
                                      %! rmakers.beam_groups()
                                    ]
                                }
                                s1 * 1/4
                            }
                        >>
                        \oneVoice
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
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        <g'' cs''' ds''' b'''>\longa
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        ~
                        \once \override Accidental.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Dots.staff-position = #2
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.transparent = ##t
                          %! abjad.glissando(1)
                        \hide NoteHead
                          %! abjad.glissando(1)
                        \override Accidental.stencil = ##f
                          %! abjad.glissando(1)
                        \override NoteColumn.glissando-skip = ##t
                          %! abjad.glissando(1)
                        \override NoteHead.no-ledgers = ##t
                        \afterGrace
                        <g'' cs''' ds''' b'''>8
                        {
                            \once \override Accidental.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            \once \override Flag.stroke-style = #"grace"
                              %! abjad.glissando(6)
                            \revert Accidental.stencil
                              %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip
                              %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers
                              %! abjad.glissando(6)
                            \undo \hide NoteHead
                            <g'' cs''' ds''' b'''>16
                        }
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r2
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
                    \once \override Tie.stencil = ##f
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
                        \once \override Tie.stencil = ##f
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
                    \once \override Tie.stencil = ##f
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
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.transparent = ##t
                        \once \override Flag.stroke-style = #"grace"
                        <d,, ef,>16
                        \ottava 0
                    }
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    s1 * 1/4
                    \stopStaff \startStaff
                    \once \override Beam.stencil = ##f
                    \once \override Dots.stencil = ##f
                    \once \override Flag.stencil = ##f
                    \once \override NoteHead.duration-log = 2
                    \once \override Stem.stencil = ##f
                    \once \override Tie.stencil = ##f
                    \ottava -1
                    <e,, gs, as,>\longa
                      %! abjad.glissando(7)
                    - \abjad-zero-padding-glissando
                      %! abjad.glissando(7)
                    \glissando
                    ~
                    \once \override Beam.stencil = ##f
                    \once \override Dots.staff-position = #2
                    \once \override Dots.stencil = ##f
                    \once \override Flag.stencil = ##f
                    \once \override NoteHead.duration-log = 2
                    \once \override Stem.stencil = ##f
                    \once \override Tie.stencil = ##f
                      %! abjad.glissando(1)
                    \hide NoteHead
                      %! abjad.glissando(1)
                    \override Accidental.stencil = ##f
                      %! abjad.glissando(1)
                    \override NoteColumn.glissando-skip = ##t
                      %! abjad.glissando(1)
                    \override NoteHead.no-ledgers = ##t
                    <e,, gs, as,>2
                    ~
                    \once \override Beam.stencil = ##f
                    \once \override Dots.staff-position = #2
                    \once \override Dots.stencil = ##f
                    \once \override Flag.stencil = ##f
                    \once \override NoteHead.duration-log = 2
                    \once \override Stem.stencil = ##f
                    \once \override Tie.stencil = ##f
                    \afterGrace
                    <e,, gs, as,>8
                    {
                        \once \override Accidental.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.transparent = ##t
                        \once \override Flag.stroke-style = #"grace"
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        <e,, gs, as,>16
                    }
                    \once \override Beam.stencil = ##f
                    \once \override Dots.stencil = ##f
                    \once \override Flag.stencil = ##f
                    \once \override NoteHead.duration-log = 2
                    \once \override Stem.stencil = ##f
                    \once \override Tie.stencil = ##f
                    \afterGrace
                    <d,, ef,>4
                      %! abjad.glissando(7)
                    - \abjad-zero-padding-glissando
                      %! abjad.glissando(7)
                    \glissando
                    {
                        \once \override Accidental.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.transparent = ##t
                          %! abjad.glissando(1)
                        \hide NoteHead
                          %! abjad.glissando(1)
                        \override Accidental.stencil = ##f
                          %! abjad.glissando(1)
                        \override NoteColumn.glissando-skip = ##t
                          %! abjad.glissando(1)
                        \override NoteHead.no-ledgers = ##t
                        \once \override Flag.stroke-style = #"grace"
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        <d,, ef,>16
                        \ottava 0
                    }
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    s1 * 1/4
                }
            }
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
}
