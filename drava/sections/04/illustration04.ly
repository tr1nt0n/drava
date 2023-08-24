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
            \tweak text "×7" \startMeasureSpanner
            \bar ".|:"
            \once \override Score.BarLine.transparent = ##f
            \time 4/16
            s1 * 1/4
            \time 3/16
            s1 * 3/16
            \bar ":|."
            \once \override Score.BarLine.transparent = ##f
            \stopMeasureSpanner
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
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 3/16
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
                        r8
                        <<
                            \context Voice = "On_Beat_Grace_Container"
                            {
                                  %! abjad.on_beat_grace_container(1)
                                \set fontSize = #-3
                                \ottava 1
                                \slash
                                \voiceOne
                                ef'''64 * 1/2
                                \ffff
                                [
                                (
                                g'''64 * 1/2
                                af'''64 * 1/2
                                cs''''64 * 1/2
                                f'''64 * 1/2
                                e'''64 * 1/2
                                )
                                ]
                            }
                            \context Voice = "piano 2 voice Anchor"
                            {
                                \voiceTwo
                                ef'''32.
                            }
                        >>
                        r64
                        r16
                        r16
                        <<
                            \context Voice = "On_Beat_Grace_Container"
                            {
                                  %! abjad.on_beat_grace_container(1)
                                \set fontSize = #-3
                                \slash
                                \voiceOne
                                df''64 * 7/5
                                [
                                (
                                fs''64 * 7/5
                                e'''64 * 7/5
                                b'''64 * 7/5
                                ef''''64 * 7/5
                                )
                                ]
                            }
                            \context Voice = "piano 2 voice Anchor"
                            {
                                \voiceTwo
                                df''16..
                                \ottava 0
                            }
                        >>
                        r64
                    }
                }
                \context Staff = "piano 3 staff"
                {
                    \context Voice = "piano 3 voice"
                    {
                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Bold") { II }
                        \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Bold") { II }
                        \pitchedTrill
                        ef''16..
                        \ffff
                        \startTrillSpan a'
                        r64
                        \stopTrillSpan
                        \pitchedTrill
                        df''32.
                        \startTrillSpan ef''
                        r64
                        \stopTrillSpan
                        \pitchedTrill
                        ef''16
                        ~
                        \startTrillSpan ff''
                        ef''32.
                        r64
                        \stopTrillSpan
                        \pitchedTrill
                        df''16..
                        \startTrillSpan g'
                        r64
                        \stopTrillSpan
                    }
                }
                \context Staff = "piano 4 staff"
                {
                    \context Voice = "piano 4 voice"
                    {
                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Bold") { III }
                        \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Bold") { III }
                        s1 * 1/4
                        s1 * 3/16
                    }
                }
            >>
            \context Staff = "piano 5 staff"
            {
                \context Voice = "piano 5 voice"
                {
                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Pedal }
                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Ped. }
                    \clef "bass"
                    \afterGrace
                    f,16..
                    \ffff
                    (
                    \glissando
                    {
                        \once \override Flag.stroke-style = #"grace"
                        c,16
                        )
                    }
                    r64
                    \afterGrace
                    f,32.
                    (
                    \glissando
                    {
                        \once \override Flag.stroke-style = #"grace"
                        c,16
                        )
                    }
                    r64
                    f,16
                    (
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
                    \afterGrace
                    f,32.
                    {
                        \once \override Flag.stroke-style = #"grace"
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        c,16
                        )
                    }
                    r64
                    \afterGrace
                    f,16..
                    (
                    \glissando
                    {
                        \once \override Flag.stroke-style = #"grace"
                        c,16
                        )
                    }
                    r64
                }
            }
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
}
