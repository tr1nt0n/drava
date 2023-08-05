    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 4/4
            s1 * 1
            \time 4/4
            s1 * 1
            \time 4/4
            s1 * 1
        }
        \context StaffGroup = "Staff Group"
        <<
            \context Staff = "piano staff"
            {
                \context Voice = "piano voice"
                {
                    \times 2/3
                    {
                        d'2
                        ^ \markup { "seed trichord" }
                        cs'2
                        g'2
                    }
                    c'4
                    ^ \markup { "seed tetrachord" }
                    ef'4
                    b'4
                    e'4
                    \times 4/5
                    {
                        af'4
                        ^ \markup { "seed pentachord" }
                        bf'4
                        f'4
                        a'4
                        fs'4
                    }
                }
            }
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
