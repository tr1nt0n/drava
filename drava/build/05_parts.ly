    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            _ \markup \center-column { \abs-fontsize #30 \musicglyph "scripts.ufermata" }
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
            \bar "||"
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            _ \markup \center-column { \abs-fontsize #30 \musicglyph "scripts.ufermata" }
            \once \override Score.BarLine.transparent = ##f
            \tweak text "×3" \startMeasureSpanner
            \bar ".|:"
            \once \override Score.BarLine.transparent = ##f
            \time 5/16
            s1 * 5/16
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \set Score.repeatCommands = #'((volta "1 - 2"))
            \time 1/4
            R1 * 1/4
            _ \markup \center-column { \abs-fontsize #30 \musicglyph "scripts.ulongfermata" }
            \bar ":|."
            \once \override Score.BarLine.transparent = ##f
            \once \override Score.BarLine.transparent = ##f
            \stopMeasureSpanner
            \set Score.repeatCommands = #'((volta "3"))
            \time 3/8
            s1 * 3/8
            \set Score.repeatCommands = #'((volta #f))
            \time 2/8
            s1 * 1/4
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            _ \markup \center-column { \abs-fontsize #30 \musicglyph "scripts.uverylongfermata" }
            \once \override Score.BarLine.transparent = ##f
            \time 7/16
            s1 * 7/16
            ^ \markup {
              \raise #1 \with-dimensions-from \null
              \override #'(font-size . 3.5)
              \concat {
                  \abjad-metronome-mark-markup #3 #0 #1 #"48"
              }
            }
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            _ \markup \center-column { \abs-fontsize #30 \musicglyph "scripts.ufermata" }
            \once \override Score.BarLine.transparent = ##f
            \time 3/16
            s1 * 3/16
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
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
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
                %%% \once \override MultiMeasureRest.transparent = ##t
                    R1 * 19/32
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
                    b'4
                    - \abjad-zero-padding-glissando
                    \glissando
                    g'32.
                    [
                    - \abjad-zero-padding-glissando
                    \glissando
                    g'64
                    ]
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
                    g'8
                    [
                    - \abjad-zero-padding-glissando
                    \glissando
                    e'8
                    - \abjad-zero-padding-glissando
                    \glissando
                    e'16
                    - \abjad-zero-padding-glissando
                    \glissando
                    b'32.
                    - \abjad-zero-padding-glissando
                    \glissando
                    e'64
                    - \abjad-zero-padding-glissando
                    \glissando
                    e'8
                    - \abjad-zero-padding-glissando
                    \glissando
                    c''16..
                    - \abjad-zero-padding-glissando
                    \glissando
                    f'64
                    ]
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
                      %! +SCORE
                %%% \once \override Staff.BarLine.transparent = ##f
                    \once \revert Staff.StaffSymbol.line-positions
                      %! +SCORE
                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                      %! +SCORE
                %%% \once \override MultiMeasureRest.transparent = ##t
                    R1 * 7/16
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
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                        s1 * 19/32
                        ^ \ff
                        ^ \>
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        ^ \pp
                        \stopStaff \startStaff
                        s1 * 5/16
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                        s1 * 3/8
                        s1 * 1/4
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                        \ottava 1
                        <f' a' c'' d'' fs'' g'' cs''' ds''' b'''>4..
                            _ #(make-dynamic-script (markup #:whiteout #:italic "fffff"))
                        \ottava 0
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                        s1 * 3/16
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
                        s1 * 19/32
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                        s1 * 5/16
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                        s1 * 3/8
                        s1 * 1/4
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                        s1 * 7/16
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 3) (ly:make-duration 5 0))
                        \times 3/7
                        {
                            \ottava 1
                            df'''32
                            \pp
                            [
                            ef'''32
                            df'''32
                            ef'''32
                            df'''32
                            ef'''32
                            df'''32
                            ]
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 6 0))
                        \times 6/5
                        {
                            bf''64
                            [
                            d'''64
                            cs'''64
                            ef'''64
                            f'''64
                            ]
                            \ottava 0
                        }
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
                        \change Staff = "piano 2 staff"
                        \override Stem.direction = #DOWN
                        d32
                        [
                        cs'32
                        g'32
                        c'32
                        ef'32
                        b'32
                        e''32
                        af''32
                        bf''32
                        \change Staff = "piano 3 staff"
                        \ottava 1
                        f''32
                        ^ \mf
                        a''32
                        fs'''32
                        af'''32
                        bf'''32
                        \ottava 0
                        \change Staff = "piano 4 staff"
                        \ottava 2
                        f'''32
                        ^ \p
                        a'''32
                        fs''''32
                        c'''''32
                        ef'''''32
                        ]
                        \ottava 0
                        \revert Stem.direction
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                        <<
                            \context Voice = "piano 4 voice temp"
                            {
                                \voiceOne
                                r32.
                                [
                                \ottava 2
                                ef''''64
                                _ \pp
                                r32.
                                ef''''64
                                r32.
                                ef''''64
                                r32.
                                df''''64
                                r32.
                                ef''''64
                                ]
                            }
                            \context Voice = "morpheme c lower voice 1"
                            {
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 5) (ly:make-duration 4 0))
                                \times 15/18
                                {
                                    \voiceTwo
                                    r16
                                    [
                                    a'''16
                                    r16
                                    fs'''16
                                    r16
                                    c'''16
                                    ]
                                    \ottava 0
                                }
                            }
                        >>
                        \oneVoice
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                        <<
                            \context Voice = "piano 4 voice temp"
                            {
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 10) (ly:make-duration 4 0))
                                \times 30/27
                                {
                                    \voiceOne
                                    r8
                                    [
                                    df''''16
                                    r8
                                    ef''''16
                                    r8
                                    ef''''16
                                    ]
                                }
                            }
                            \context Voice = "morpheme c lower voice 2"
                            {
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 21 20) (ly:make-duration 5 0))
                                \times 60/63
                                {
                                    \voiceTwo
                                    r16
                                    [
                                    \ottava 2
                                    bf''32
                                    r16
                                    f'''32
                                    r16
                                    e'''32
                                    r16
                                    ef'''32
                                    r16
                                    f'''32
                                    r16
                                    <ef'' a'' bf''>32
                                    - \turn
                                    r16
                                    c''32
                                    - \mordent
                                    ]
                                    \ottava 0
                                }
                            }
                        >>
                        \oneVoice
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
                        s1 * 7/16
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        \stopStaff \startStaff
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
                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Pedal }
                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Ped. }
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    s1 * 1/4
                    \stopStaff \startStaff
                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                    \clef "bass"
                    \once \override NoteHead.no-ledgers = ##t
                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                    <c, df,>4
                    \mf
                    ~
                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                    \once \override NoteHead.no-ledgers = ##t
                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                    <c, df,>32
                    r16.
                    r16
                    r16.
                    r16
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    s1 * 1/4
                    \stopStaff \startStaff
                    s1 * 5/16
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    s1 * 1/4
                    \stopStaff \startStaff
                    s1 * 3/8
                    s1 * 1/4
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    s1 * 1/4
                    \stopStaff \startStaff
                    \ottava -1
                    <e,, gs, as,>4..
                        _ #(make-dynamic-script (markup #:whiteout #:italic "fffff"))
                    \ottava 0
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    s1 * 1/4
                    \stopStaff \startStaff
                    s1 * 3/16
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    s1 * 1/4
                    \stopStaff \startStaff
                }
            }
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
