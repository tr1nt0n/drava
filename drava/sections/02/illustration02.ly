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
            \time 5/16
            s1 * 5/16
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/16
            s1 * 5/16
            \time 12/16
            s1 * 3/4
            \time 3/16
            s1 * 3/16
            \time 7/16
            s1 * 7/16
            \time 2/16
            s1 * 1/8
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 2/16
            s1 * 1/8
            \noBreak
            \time 3/16
            s1 * 3/16
            \time 4/16
            s1 * 1/4
            \noBreak
            \time 12/16
            s1 * 3/4
            \time 5/16
            s1 * 5/16
            \time 7/16
            s1 * 7/16
            \time 2/16
            s1 * 1/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 2/16
            s1 * 1/8
        }
        \context StaffGroup = "Staff Group"
        <<
            \context TempoStaff = "piano 1 staff"
            {
                \context Voice = "piano 1 voice"
                {
                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") \center-column { \line { Vivace } \line { Grave } }
                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") \center-column { \line { Vivace } \line { Grave } }
                    b'8.
                    [
                    - \abjad-zero-padding-glissando
                    \glissando
                    a'16
                    ]
                    - \abjad-zero-padding-glissando
                    \glissando
                    d''4..
                    - \abjad-zero-padding-glissando
                    \glissando
                    f'8.
                    [
                    - \abjad-zero-padding-glissando
                    \glissando
                    b'16
                    ]
                    - \abjad-zero-padding-glissando
                    \glissando
                    b'4
                    - \abjad-zero-padding-glissando
                    \glissando
                    g''8
                    [
                    - \abjad-zero-padding-glissando
                    \glissando
                    g''16
                    ]
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
                    g''8..
                    [
                    - \abjad-zero-padding-glissando
                    \glissando
                    g''8..
                    - \abjad-zero-padding-glissando
                    \glissando
                    g'8.
                    - \abjad-zero-padding-glissando
                    \glissando
                    g''16
                    - \abjad-zero-padding-glissando
                    \glissando
                    e''16.
                    - \abjad-zero-padding-glissando
                    \glissando
                    e''16.
                    - \abjad-zero-padding-glissando
                    \glissando
                    g'16.
                    - \abjad-zero-padding-glissando
                    \glissando
                    g'8
                    - \abjad-zero-padding-glissando
                    \glissando
                    b'32
                    - \abjad-zero-padding-glissando
                    \glissando
                    g'16.
                    - \abjad-zero-padding-glissando
                    \glissando
                    a'16.
                    - \abjad-zero-padding-glissando
                    \glissando
                    ef''8.
                    ]
                    - \abjad-zero-padding-glissando
                    \glissando
                    g''4.
                    - \abjad-zero-padding-glissando
                    \glissando
                    ef''4
                    - \abjad-zero-padding-glissando
                    \glissando
                    ef''16
                    - \abjad-zero-padding-glissando
                    \glissando
                    e'4.
                    - \abjad-zero-padding-glissando
                    \glissando
                    e'16
                    [
                    - \abjad-zero-padding-glissando
                    \glissando
                    d'16.
                    - \abjad-zero-padding-glissando
                    \glissando
                    d'32
                    - \abjad-zero-padding-glissando
                    \glissando
                    e'16.
                    - \abjad-zero-padding-glissando
                    \glissando
                    e'32
                    ]
                }
            }
            \context GrandStaff = "sub group 1"
            <<
                \context Staff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        <<
                            \context Voice = "piano 2 voice temp"
                            {
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 5) (ly:make-duration 4 0))
                                \times 20/24
                                {
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Bold") { I }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Bold") { I }
                                    \voiceOne
                                    ef'32.
                                    - \prall
                                    [
                                    ef'64
                                    - \downmordent
                                    ef'32.
                                    r64
                                    ef'32.
                                    r64
                                    ef'32.
                                    r64
                                    df'32.
                                    r64
                                    ef'32.
                                    - \prall
                                    ef'64
                                    ]
                                }
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 10) (ly:make-duration 5 0))
                                \times 30/27
                                {
                                    ef'16
                                    - \turn
                                    [
                                    r32
                                    ef'16
                                    - \mordent
                                    ef'32
                                    ef'16
                                    ef'32
                                    ]
                                }
                                df'8
                                [
                                r16
                                ef'8
                                - \prallup
                                r16
                                ef'8
                                r16
                                ef'8
                                - \downmordent
                                r16
                                ]
                            }
                            \context Voice = "morpheme c lower voice 1"
                            {
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 5) (ly:make-duration 4 0))
                                \times 15/18
                                {
                                    \voiceTwo
                                    b16
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "fffff"))
                                    [
                                    cs'16
                                    ef'16
                                    - \mordent
                                    r16
                                    c''16
                                    r16
                                    ]
                                }
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 21 20) (ly:make-duration 6 0))
                                \times 60/63
                                {
                                    bf32
                                    [
                                    r64
                                    <cs' ef' f'>32
                                    - \turn
                                    r64
                                    e''32
                                    bf'64
                                    - \prallup
                                    f''32
                                    r64
                                    g''32
                                    <c' e' f'>64
                                    - \turn
                                    cs''32
                                    d'64
                                    f'32
                                    - \pralldown
                                    r64
                                    ]
                                }
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 25 24) (ly:make-duration 5 0))
                                \times 24/25
                                {
                                    bf16.
                                    [
                                    r16
                                    <e' fs' a'>16.
                                    - \mordent
                                    r16
                                    a16.
                                    r16
                                    bf''16.
                                    fs'16
                                    - \upmordent
                                    a16.
                                    r16
                                    ]
                                }
                            }
                        >>
                        \oneVoice
                        s1 * 3/16
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 15 14) (ly:make-duration 5 0))
                        \times 28/30
                        {
                            \override Staff.Stem.direction = #UP
                            r32.
                            [
                            bf''32
                            \fff
                            r32.
                            fs'32
                            r32.
                            a32
                            - \prallup
                            r32.
                            \change Staff = "piano 3 staff"
                            f''32
                            - \turn
                            \change Staff = "piano 2 staff"
                            r32.
                            \change Staff = "piano 3 staff"
                            bf'32
                            \change Staff = "piano 2 staff"
                            r32.
                            \ottava 1
                            <a''' bf''' b'''>32
                            ]
                            \ottava 0
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 7) (ly:make-duration 4 0))
                        \times 7/6
                        {
                            r16
                            [
                            \change Staff = "piano 4 staff"
                            cs'16
                            - \pralldown
                            \p
                            \change Staff = "piano 2 staff"
                            r16
                            af16
                            r16
                            \change Staff = "piano 4 staff"
                            c16
                            ]
                            \revert Staff.Stem.direction
                        }
                        \change Staff = "piano 2 staff"
                        s1 * 1/4
                        s1 * 3/4
                        s1 * 5/16
                        s1 * 7/16
                        s1 * 1/8
                        s1 * 1/8
                    }
                }
                \context Staff = "piano 3 staff"
                {
                    \context Voice = "piano 3 voice"
                    {
                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Bold") { II }
                        \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Bold") { II }
                        s1 * 5/16
                        s1 * 5/16
                        s1 * 3/4
                        s1 * 3/16
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 81 88) (ly:make-duration 7 0))
                        \times 88/81
                        {
                            \override Staff.Stem.direction = #UP
                            ef'''32...
                            [
                            r128.
                            ef'''32...
                            r128.
                            df'''32...
                            - \prall
                            r128.
                            ef'''32...
                            r128.
                            ef'''32...
                            r128.
                            ef'''32...
                            r128.
                            ef'''32...
                            r128.
                            ef'''32...
                            - \mordent
                            r128.
                            ef''32...
                            r128.
                            ]
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                        \times 24/20
                        {
                            ef''64.
                            [
                            r128
                            df''64.
                            - \turn
                            r128
                            ef''64.
                            r128
                            ef''64.
                            r128
                            ef''64.
                            r128
                            ]
                        }
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 2 0))
                        \times 4/5
                        {
                            ef''8.
                            [
                            r16
                            \change Staff = "piano 4 staff"
                            ef''8.
                            - \prallup
                            \change Staff = "piano 3 staff"
                            r16
                            ef''8.
                            r16
                            \change Staff = "piano 4 staff"
                            ef''8.
                            \change Staff = "piano 3 staff"
                            r16
                            \change Staff = "piano 4 staff"
                            ef''8.
                            - \turn
                            \change Staff = "piano 3 staff"
                            r16
                            ]
                            \revert Staff.Stem.direction
                        }
                        s1 * 5/16
                        s1 * 7/16
                        s1 * 1/8
                        s1 * 1/8
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
                                e'''8.
                                ~
                                e'''8
                                ~
                                e'''8.
                                ~
                                e'''8
                                ~
                                e'''2.
                                \ottava 0
                            }
                            \context Voice = "morpheme a outer voice 1"
                            {
                                \voiceTwo
                                <bf'' bf'''>8.
                                \ppp
                                ~
                                <bf'' bf'''>8
                                ~
                                <bf'' bf'''>8.
                                ~
                                <bf'' bf'''>8
                                ~
                                <bf'' bf'''>16
                                [
                                <ef'' e'''>8
                                ]
                                ~
                                <ef'' e'''>4.
                                ~
                                <ef'' e'''>8.
                                ~
                            }
                        >>
                        \oneVoice
                        s1 * 3/16
                        s1 * 7/16
                        s1 * 1/8
                        s1 * 1/8
                        s1 * 3/16
                        <<
                            \context Voice = "piano 4 voice temp"
                            {
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                \times 2/3
                                {
                                    \ottava 1
                                    \voiceOne
                                    cs'''8.
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 6 0))
                                    \times 8/7
                                    {
                                        b''64
                                        [
                                        (
                                        c'''64
                                        af'''64
                                        ef''''64
                                        af'''64
                                        ef'''64
                                        e'''64
                                        )
                                        ]
                                    }
                                    f''16
                                    ~
                                }
                                f''2.
                            }
                            \context Voice = "morpheme a outer voice 2"
                            {
                                \voiceTwo
                                <bf'' f'''>4
                                ~
                                <bf'' f'''>4.
                                <d'' b'''>4.
                                ~
                                \ottava 0
                            }
                        >>
                        \oneVoice
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 10) (ly:make-duration 5 0))
                        \times 30/27
                        {
                            r16
                            [
                            ef''32
                            r16
                            ef''32
                            r16
                            df''32
                            ]
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 12 11) (ly:make-duration 4 0))
                        \times 33/36
                        {
                            r8
                            [
                            ef'16
                            r8
                            ef'16
                            r8
                            ef'16
                            r8
                            ef'16
                            ]
                        }
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
                    <df,, ef,,>8
                        _ #(make-dynamic-script (markup #:whiteout #:italic "fffff"))
                    [
                    ~
                    <df,, ef,,>32
                    r32
                    r8
                    <df,, gf,,>8
                    ~
                    <df,, gf,,>32
                    r32
                    r8
                    ]
                    <c,, df,,>4.
                    \ottava 0
                    r4.
                    r128
                    ^ \markup \center-column {{ \abs-fontsize #12 \musicglyph "scripts.ushortfermata" }}
                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                    \once \override NoteHead.no-ledgers = ##t
                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                    <c, df,>32..
                    \pppp
                    ^ \markup \center-column {{ \abs-fontsize #12 \musicglyph "scripts.uverylongfermata" }}
                    ~
                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                    \once \override NoteHead.no-ledgers = ##t
                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                    <c, df,>16...
                    r128
                    ^ \markup \center-column {{ \abs-fontsize #12 \musicglyph "scripts.ushortfermata" }}
                    \ottava -1
                    <df,,! d,,!>8.
                        _ #(make-dynamic-script (markup #:whiteout #:italic "fffff"))
                    [
                    ~
                    <df,, d,,>32
                    r16.
                    r8
                    <df,, ef,,>16
                    r16
                    <df,, gf,,>16
                    r16
                    <c,, df,,>16.
                    r16.
                    <df,, d,,>8
                    \ottava 0
                    r8
                    ]
                    s1 * 3/4
                    s1 * 5/16
                    s1 * 7/16
                    s1 * 1/8
                    s1 * 1/8
                }
            }
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
}
