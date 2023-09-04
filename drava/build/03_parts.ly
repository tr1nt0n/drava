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
            \time 3/16
            s1 * 3/16
            - \tweak padding #2
            - \abjad-solid-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { { \override #'(font-size . 3.5) \concat { \abjad-metronome-mark-markup #3 #0 #1 #"48" } } \hspace #0.5 }
            - \tweak bound-details.right.text \markup { \override #'(font-size . 3.5) \concat { \abjad-metronome-mark-markup #3 #0 #1 #"120" [\abjad-metric-modulation-tuplet-lhs #3 #0 #2 #5 #3 #0 #'(1 . 1)] } }
            \startTextSpan
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/16
            s1 * 3/16
            \noBreak
            \time 5/16
            s1 * 5/16
            \time 4/16
            s1 * 1/4
            \noBreak
            \time 2/16
            s1 * 1/8
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 2/16
            s1 * 1/8
            \time 3/16
            s1 * 3/16
            \stopTextSpan
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
                    R1 * 3/16
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
                    R1 * 3/16
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
                    R1 * 3/16
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
                            a64.
                            [
                            fs'64
                            c'64.
                            ^ \downmordent
                            \change Staff = "piano 2 staff"
                            r64
                            bf'64.
                            r64
                            f''64.
                            ^ \prall
                            r64
                            <cs'' e'' a''>64.
                            ^ \turn
                            r64
                            ]
                            \revert Stem.direction
                        }
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                        s1 * 3/16
                        s1 * 3/16
                        s1 * 5/16
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 3 0))
                        \times 4/5
                        {
                            \once \override TupletBracket.direction = #DOWN
                            \once \override TupletBracket.padding = 6
                            r4..
                            <<
                                \context Voice = "On_Beat_Grace_Container"
                                {
                                      %! abjad.on_beat_grace_container(1)
                                    \set fontSize = #-3
                                    \slash
                                    \voiceOne
                                    ef'64 * 2
                                    \ff
                                    [
                                    (
                                    f'64 * 2
                                    b'64 * 2
                                    fs''64 * 2
                                    g''64 * 2
                                    bf''64 * 2
                                    )
                                    ]
                                }
                                \context Voice = "piano 2 voice Anchor"
                                {
                                    \voiceTwo
                                    ef'8.
                                }
                            >>
                        }
                        <<
                            \context Voice = "On_Beat_Grace_Container"
                            {
                                  %! abjad.on_beat_grace_container(1)
                                \set fontSize = #-3
                                \slash
                                \voiceOne
                                ef'64
                                [
                                (
                                g'64
                                g''64
                                cs'''64
                                af''64
                                g''64
                                )
                                ]
                            }
                            \context Voice = "piano 2 voice Anchor"
                            {
                                \voiceTwo
                                ef'16.
                            }
                        >>
                        <<
                            \context Voice = "On_Beat_Grace_Container"
                            {
                                  %! abjad.on_beat_grace_container(1)
                                \set fontSize = #-3
                                \slash
                                \voiceOne
                                df'64 * 6/5
                                [
                                (
                                d''64 * 6/5
                                g''64 * 6/5
                                ef'''64 * 6/5
                                fs'''64 * 6/5
                                )
                                ]
                            }
                            \context Voice = "piano 2 voice Anchor"
                            {
                                \voiceTwo
                                df'16.
                            }
                        >>
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
                        s1 * 3/16
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 2 0))
                        \times 2/3
                        {
                            ef''8
                            \mp
                            (
                            \pitchedTrill
                            df''4
                            ~
                            \startTrillSpan ef''
                            df''16
                            )
                            r4
                            \stopTrillSpan
                            r16
                        }
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 3 0))
                        \times 4/5
                        {
                            \pitchedTrill
                            ef''4
                            \startTrillSpan f''
                            s1 * 0
                            \stopTrillSpan
                            <<
                                \context Voice = "On_Beat_Grace_Container"
                                {
                                      %! abjad.on_beat_grace_container(1)
                                    \set fontSize = #-3
                                    \slash
                                    \voiceOne
                                    df''64 * 4/3
                                    \mf
                                    \stopTrillSpan
                                    [
                                    (
                                    c'''64 * 4/3
                                    a''64 * 4/3
                                    fs''64 * 4/3
                                    a''64 * 4/3
                                    c''64 * 4/3
                                    )
                                    ]
                                }
                                \context Voice = "piano 3 voice Anchor"
                                {
                                    \voiceTwo
                                    df''8
                                }
                            >>
                            r4
                        }
                        <<
                            \context Voice = "On_Beat_Grace_Container"
                            {
                                  %! abjad.on_beat_grace_container(1)
                                \set fontSize = #-3
                                \slash
                                \voiceOne
                                ef''64 * 2
                                \f
                                [
                                (
                                \ottava 1
                                c'''64 * 2
                                g'''64 * 2
                                cs''''64 * 2
                                af'''64 * 2
                                f'''64 * 2
                                )
                                ]
                                \ottava 0
                            }
                            \context Voice = "piano 3 voice Anchor"
                            {
                                \voiceTwo
                                ef''8.
                            }
                        >>
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
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 15 11) (ly:make-duration 4 0))
                        \times 11/15
                        {
                            \pitchedTrill
                            ef'''8
                            \p
                            [
                            \startTrillSpan a''
                            \pitchedTrill
                            df'''16
                            ]
                            \startTrillSpan eff'''
                            r2
                            \stopTrillSpan
                            \pitchedTrill
                            ef'''4
                            \startTrillSpan f'''
                        }
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 3 0))
                        \times 4/5
                        {
                            \pitchedTrill
                            ef'''4..
                            \stopTrillSpan
                            \startTrillSpan f'''
                            r8.
                            \stopTrillSpan
                        }
                        s1 * 3/16
                    }
                }
            >>
            \context Staff = "piano 5 staff"
            {
                \context Voice = "piano 5 voice"
                {
                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Pedals }
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
                    s1 * 3/16
                    s1 * 3/16
                    s1 * 5/16
                    \once \override Beam.stencil = ##f
                    \once \override Dots.stencil = ##f
                    \once \override Flag.stencil = ##f
                    \once \override Glissando.style = #'trill
                    \once \override NoteHead.duration-log = 2
                    \once \override Stem.stencil = ##f
                    \override Tie.transparent = ##t
                    f2
                    \p
                      %! abjad.glissando(7)
                    \glissando
                    ~
                    \once \override Beam.stencil = ##f
                    \once \override Dots.staff-position = #2
                    \once \override Dots.stencil = ##f
                    \once \override Flag.stencil = ##f
                    \once \override NoteHead.duration-log = 2
                    \once \override Stem.stencil = ##f
                    \override NoteHead.transparent = ##t
                      %! abjad.glissando(1)
                    \hide NoteHead
                      %! abjad.glissando(1)
                    \override Accidental.stencil = ##f
                      %! abjad.glissando(1)
                    \override NoteColumn.glissando-skip = ##t
                      %! abjad.glissando(1)
                    \override NoteHead.no-ledgers = ##t
                    f8
                    ~
                    \once \override Beam.stencil = ##f
                    \once \override Dots.staff-position = #2
                    \once \override Dots.stencil = ##f
                    \once \override Flag.stencil = ##f
                    \once \override NoteHead.duration-log = 2
                    \once \override Stem.stencil = ##f
                    \override NoteHead.transparent = ##t
                    f32.
                    \once \override Beam.stencil = ##f
                    \once \override Dots.stencil = ##f
                    \once \override Flag.stencil = ##f
                    \once \override NoteHead.duration-log = 2
                    \once \override Stem.stencil = ##f
                    \override NoteHead.transparent = ##f
                    \override Tie.transparent = ##f
                      %! abjad.glissando(6)
                    \revert Accidental.stencil
                      %! abjad.glissando(6)
                    \revert NoteColumn.glissando-skip
                      %! abjad.glissando(6)
                    \revert NoteHead.no-ledgers
                      %! abjad.glissando(6)
                    \undo \hide NoteHead
                    df,64
                }
            }
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
