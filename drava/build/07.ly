    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 3/16
            s1 * 3/16
            \noBreak
            \time 3/8
            s1 * 3/8
            \noBreak
            \time 13/16
            s1 * 13/16
            \noBreak
            \time 3/8
            s1 * 3/8
            \noBreak
            \time 2/8
            s1 * 1/4
            \noBreak
            \time 5/16
            s1 * 5/16
            \time 13/16
            s1 * 13/16
            \noBreak
            \time 3/8
            s1 * 3/8
            \noBreak
            \time 2/8
            s1 * 1/4
            \time 5/16
            s1 * 5/16
            \noBreak
            \time 3/8
            s1 * 3/8
            \noBreak
            \time 4/8
            s1 * 1/2
            \noBreak
        }
        \context StaffGroup = "Staff Group"
        <<
            \context TempoStaff = "piano 1 staff"
            {
                \context Voice = "piano 1 voice"
                {
                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") \center-column { \line { Vivace } \line { Grave } }
                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") \center-column { \line { Vivace } \line { Grave } }
                    d'8
                    \pp
                    [
                    - \abjad-zero-padding-glissando
                    \glissando
                    \<
                    d'16
                    - \abjad-zero-padding-glissando
                    \glissando
                    f'8.
                    - \abjad-zero-padding-glissando
                    \glissando
                    f'8
                    - \abjad-zero-padding-glissando
                    \glissando
                    f'16
                    - \abjad-zero-padding-glissando
                    \glissando
                    e'8.
                    - \abjad-zero-padding-glissando
                    \glissando
                    g'8
                    - \abjad-zero-padding-glissando
                    \glissando
                    e'8
                    - \abjad-zero-padding-glissando
                    \glissando
                    a'8
                    - \abjad-zero-padding-glissando
                    \glissando
                    f'8
                    - \abjad-zero-padding-glissando
                    \glissando
                    b'8
                    ]
                    - \abjad-zero-padding-glissando
                    \glissando
                    d'4..
                    - \abjad-zero-padding-glissando
                    \glissando
                    d''16
                    [
                    - \abjad-zero-padding-glissando
                    \glissando
                    g'32
                    - \abjad-zero-padding-glissando
                    \glissando
                    d''32
                    - \abjad-zero-padding-glissando
                    \glissando
                    g'32
                    - \abjad-zero-padding-glissando
                    \glissando
                    d''32
                    - \abjad-zero-padding-glissando
                    \glissando
                    b'8.
                    - \abjad-zero-padding-glissando
                    \glissando
                    b'16.
                    - \abjad-zero-padding-glissando
                    \glissando
                    b'32
                    - \abjad-zero-padding-glissando
                    \glissando
                    d''8.
                    ]
                    - \abjad-zero-padding-glissando
                    \glissando
                    d''4
                    - \abjad-zero-padding-glissando
                    \glissando
                    d''8.
                    [
                    - \abjad-zero-padding-glissando
                    \glissando
                    d''8
                    - \abjad-zero-padding-glissando
                    \glissando
                    d''16
                    - \abjad-zero-padding-glissando
                    \glissando
                    e''16
                    - \abjad-zero-padding-glissando
                    \glissando
                    a'32
                    - \abjad-zero-padding-glissando
                    \glissando
                    c''16
                    - \abjad-zero-padding-glissando
                    \glissando
                    f'32
                    - \abjad-zero-padding-glissando
                    \glissando
                    c''16
                    - \abjad-zero-padding-glissando
                    \glissando
                    f'32
                    - \abjad-zero-padding-glissando
                    \glissando
                    a'16
                    - \abjad-zero-padding-glissando
                    \glissando
                    d'32
                    \fff
                    - \abjad-zero-padding-glissando
                    \glissando
                    - \tweak stencil #constante-hairpin
                    \<
                    f'8..
                    - \abjad-zero-padding-glissando
                    \glissando
                    f'32
                    - \abjad-zero-padding-glissando
                    \glissando
                    a'8.
                    - \abjad-zero-padding-glissando
                    \glissando
                    a'16.
                    - \abjad-zero-padding-glissando
                    \glissando
                    a'32
                    ]
                    - \abjad-zero-padding-glissando
                    \glissando
                    a'4.
                    - \abjad-zero-padding-glissando
                    \glissando
                    b'8..
                    [
                    - \abjad-zero-padding-glissando
                    \glissando
                    d''32
                    - \abjad-zero-padding-glissando
                    \glissando
                    ef''8..
                    - \abjad-zero-padding-glissando
                    \glissando
                    g''32
                    \!
                    ]
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
                        s1 * 3/8
                        s1 * 13/16
                        s1 * 3/8
                        s1 * 1/4
                        s1 * 5/16
                        \ottava -1
                        s1 * 13/16
                        s1 * 3/8
                        s1 * 1/4
                        \ottava 0
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 25 22) (ly:make-duration 5 0))
                        \times 22/25
                        {
                            \clef "bass"
                            a16.
                            - \turn
                            [
                            c16
                            a,16.
                            r16
                            fs16.
                            r16
                            ef16.
                            r16
                            <c, d, ef,>16.
                            - \pralldown
                            r16
                            ]
                        }
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 21 16) (ly:make-duration 5 0))
                        \times 16/21
                        {
                            a,16
                            [
                            f,32
                            - \mordent
                            cs16
                            - \upmordent
                            r32
                            d16
                            <ef, e, fs,>32
                            c16
                            ef,32
                            e,16
                            - \prall
                            r32
                            fs,16
                            r32
                            <d, ef, a,>16
                            - \downmordent
                            r32
                            ]
                        }
                    }
                }
                \context Staff = "piano 3 staff"
                {
                    \context Voice = "piano 3 voice"
                    {
                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Bold") { II }
                        \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Bold") { II }
                        s1 * 3/16
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 24 19) (ly:make-duration 4 0))
                        \times 57/72
                        {
                            r4
                            bf'4
                            r4
                            c''4
                            r4
                            ef'4
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 21 20) (ly:make-duration 5 0))
                        \times 60/63
                        {
                            \override Stem.direction = #DOWN
                            af16
                            [
                            r32
                            c'16
                            r32
                            f'16
                            r32
                            c'16
                            r32
                            ef'16
                            r32
                            \change Staff = "piano 2 staff"
                            <d'' a'' b''>16
                            ^ \prallup
                            \change Staff = "piano 3 staff"
                            r32
                            d'16
                            r32
                            ]
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 5) (ly:make-duration 4 0))
                        \times 15/18
                        {
                            af16
                            [
                            r16
                            cs'16
                            r16
                            \change Staff = "piano 2 staff"
                            d'16
                            ^ \mordent
                            \change Staff = "piano 3 staff"
                            r16
                            ]
                            \revert Stem.direction
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 25 26) (ly:make-duration 5 0))
                        \times 26/25
                        {
                            \override Stem.direction = #DOWN
                            e'16.
                            [
                            r16
                            c'16.
                            r16
                            \ottava -1
                            ef16.
                            \ottava 0
                            r16
                            \change Staff = "piano 2 staff"
                            b16.
                            ^ \prall
                            \change Staff = "piano 3 staff"
                            r16
                            e'16.
                            r16
                            ]
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 21 20) (ly:make-duration 5 0))
                        \times 60/63
                        {
                            \change Staff = "piano 2 staff"
                            \once \override Beam.damping = #99
                            <ef af b>16
                            ^ \mordent
                            [
                            \change Staff = "piano 3 staff"
                            r32
                            ef'16
                            r32
                            c'16
                            r32
                            \change Staff = "piano 2 staff"
                            d16
                            ^ \turn
                            \change Staff = "piano 3 staff"
                            r32
                            \ottava -1
                            f16
                            \ottava 0
                            r32
                            \change Staff = "piano 2 staff"
                            <ef' e' bf'>16
                            ^ \prallup
                            \change Staff = "piano 3 staff"
                            r32
                            \change Staff = "piano 2 staff"
                            fs16
                            \change Staff = "piano 3 staff"
                            r32
                            ]
                            \revert Stem.direction
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 10) (ly:make-duration 5 0))
                        \times 30/27
                        {
                            ef'''16
                            [
                            r32
                            ef'''16
                            - \prall
                            r32
                            ef'''16
                            r32
                            ]
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 7) (ly:make-duration 3 0))
                        \times 28/24
                        {
                            \ottava 1
                            df''''16.
                            [
                            r32
                            ef''''16.
                            r32
                            df''''16.
                            r32
                            ef''''16.
                            - \turn
                            r32
                            ef''''16.
                            r32
                            ef''''16.
                            - \mordent
                            \ottava 0
                            r32
                            ]
                        }
                    }
                }
                \context Staff = "piano 4 staff"
                {
                    \context Voice = "piano 4 voice"
                    {
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 10 9) (ly:make-duration 4 0))
                        \times 18/20
                        {
                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Bold") { III }
                            \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Bold") { III }
                            r16.
                            [
                            ef''32
                            r16.
                            ef''32
                            r16.
                            ef''32
                            r16.
                            ef''32
                            r16.
                            ef''32
                            ]
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 35 26) (ly:make-duration 5 0))
                        \times 182/245
                        {
                            r8
                            [
                            df''32
                            r8
                            ef''32
                            r8
                            ef''32
                            r8
                            ef''32
                            r8
                            ef''32
                            r8
                            ef''32
                            r8
                            ef''32
                            ]
                        }
                        \override Stem.direction = #DOWN
                        r32.
                        [
                        ef''64
                        r32.
                        df''64
                        r32.
                        ef''64
                        r32.
                        ef''64
                        r32.
                        ef''64
                        r32.
                        ef''64
                        ]
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 10 9) (ly:make-duration 4 0))
                        \times 9/10
                        {
                            r16
                            [
                            \change Staff = "piano 3 staff"
                            ef'''64
                            ^ \mordent
                            \change Staff = "piano 4 staff"
                            r16
                            ef''64
                            r16
                            ef''64
                            r16
                            ef''64
                            r16
                            ef''64
                            r16
                            \change Staff = "piano 3 staff"
                            df'''64
                            ^ \prallup
                            \change Staff = "piano 4 staff"
                            r16
                            ef''64
                            r16
                            ef''64
                            ]
                            \revert Stem.direction
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 20 19) (ly:make-duration 4 0))
                        \times 57/60
                        {
                            \override Stem.direction = #DOWN
                            ef''8
                            [
                            r32
                            ef''8
                            r32
                            ef''8
                            r32
                            \change Staff = "piano 3 staff"
                            ef'''8
                            ^ \turn
                            \change Staff = "piano 4 staff"
                            r32
                            df''8
                            r32
                            \change Staff = "piano 3 staff"
                            ef'''8
                            ^ \pralldown
                            \change Staff = "piano 4 staff"
                            r32
                            ef''8
                            r32
                            \change Staff = "piano 3 staff"
                            ef'''8
                            ^ \mordent
                            \change Staff = "piano 4 staff"
                            r32
                            ]
                        }
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 27 16) (ly:make-duration 6 0))
                        \times 32/54
                        {
                            ef''32
                            [
                            ~
                            ef''128
                            r128
                            ef''32
                            ~
                            ef''128
                            r128
                            \change Staff = "piano 3 staff"
                            ef'''32
                            ^ \upmordent
                            ~
                            ef'''128
                            \change Staff = "piano 4 staff"
                            r128
                            ef''32
                            ~
                            ef''128
                            r128
                            ef''32
                            ~
                            ef''128
                            r128
                            \change Staff = "piano 3 staff"
                            ef'''32
                            ^ \prall
                            ~
                            ef'''128
                            \change Staff = "piano 4 staff"
                            r128
                            df''32
                            ~
                            df''128
                            r128
                            ef''32
                            ~
                            ef''128
                            r128
                            \change Staff = "piano 3 staff"
                            ef'''32
                            ^ \downmordent
                            ~
                            ef'''128
                            \change Staff = "piano 4 staff"
                            r128
                            ]
                            \revert Stem.direction
                        }
                        s1 * 5/16
                        s1 * 3/8
                        s1 * 1/2
                    }
                }
            >>
            \context Staff = "piano 5 staff"
            {
                \context Voice = "piano 5 voice"
                {
                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Pedals }
                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Ped. }
                    s1 * 3/16
                    s1 * 3/8
                    s1 * 13/16
                    s1 * 3/8
                    s1 * 1/4
                    s1 * 5/16
                    s1 * 13/16
                    r8.
                    \ottava -1
                    \clef "bass"
                    <df,, ef,,>8.
                    \ffff
                    [
                    r8
                    <df,, gf,,>8
                    r8
                    r32
                    <c,, df,,>32
                    ~
                    <c,, df,,>8
                    r8.
                    <df,, d,,>8.
                    ]
                    r4
                    <df,, ef,,>4
                    \ottava 0
                }
            }
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
