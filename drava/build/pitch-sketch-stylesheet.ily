\version "2.23.14"
\language english
#(set-default-paper-size "11x17portrait")
#(set-global-staff-size 12)
#(ly:set-option 'relative-includes #t)

\include "../library.ily"
\include "/Users/trintonprater/evans/lilypond/evans.ily"
\include "/Users/trintonprater/trinton/lilypond/trinton-markups.ily"
\include "/Users/trintonprater/abjad-ext-microtones/abjadext/microtones/lilypond/ekmelos-ji-accidental-markups.ily"

afterGraceFraction = #(cons 15 16)

\layout {
    \accidentalStyle neo-modern
    ragged-bottom = ##t
    ragged-last = ##t
    ragged-right = ##t
    \context {
        \name TimeSignatureContext
        \numericTimeSignature
        \type Engraver_group
        \consists Axis_group_engraver
        \consists Bar_number_engraver
        \consists Time_signature_engraver
		\consists Mark_engraver
		\consists Metronome_mark_engraver
        \consists Multi_measure_rest_engraver
		\consists Text_engraver
		\consists Text_spanner_engraver
        \consists Measure_spanner_engraver
        \override BarNumber.stencil = #(make-stencil-circler 0.1 0.75 ly:text-interface::print)
        \override BarNumber.Y-extent = ##f
        \override BarNumber.Y-offset = -8
        \override BarNumber.extra-offset = #'(-0.5 . 0.5)
        \override BarNumber.font-size = 4
        \override BarNumber.padding = 4
        \override BarNumber.font-name = "Bodoni72 Book Italic"
        \override MetronomeMark.stencil = ##f
        \override VerticalAxisGroup.staff-staff-spacing = #'((basic-distance . 10) (minimum-distance . 10) (padding . 6) (stretchability . 0))
        \override TimeSignature.break-visibility = #end-of-line-invisible
        \override TimeSignature.transparent = ##t
        % \override TimeSignature.font-size = 10
		% \override TimeSignature.font-name = "Bodoni72 Book"
        % \override TimeSignature.X-offset = -2.5
        % \override TimeSignature.Y-offset = 3
        % \override TimeSignature.whiteout-style = #'outline
        % \override TimeSignature.whiteout = 1
        % \override TimeSignature.layer = 4
    }

    \context {
        \Score
        \numericTimeSignature
        \accepts TimeSignatureContext
        \remove Bar_number_engraver
        proportionalNotationDuration = #(ly:make-moment 1 20)
        pedalSustainStyle = #'bracket

        \override StaffGrouper.staff-staff-spacing = #'((basic-distance . 0) (minimum distance . 5) (padding . 8) (stretchability . 28))
        \override StaffGrouper.staffgroup-staff-spacing = #'((basic-distance . 0) (minimum distance . 5) (padding . 8) (stretchability . 28))

        \override AccidentalSuggestion.avoid-slur = #'ignore
        \override Accidental.X-extent = ##f
        \override Accidental.layer = 3
        \override Accidental.whiteout-style = #'outline
        \override Accidental.whiteout = 1

        \override BarLine.transparent = ##t
        \override BarLine.hair-thickness = 0.5
        \override BarLine.X-extent = #'(0 . 0)
        \override BarLine.thick-thickness = #10
        \override BarLine.bar-extent = #'(-3 . 3)

        autoBeaming = ##f
        \override Beam.transparent = ##t

        \override Clef.layer = 2
        \override Clef.whiteout-style = #'outline
        \override Clef.whiteout = 1

        \override Dots.transparent = ##t

        \override Flag.transparent = ##t

        \override Staff.thickness = #0.5

        \override Stem.transparent = ##t

        \override TextScript.font-name = "Bodoni72 Book Italic"
        \override TextScript.whiteout = 1
        \override TextSpanner.font-name = "Bodoni72 Book Italic"

        \override Tie.stencil = #flare-tie
        \override Tie.height-limit = 6
        \override Tie.thickness = 1.5

        \override TupletBracket.tranparent = ##t
        \override TupletNumber.transparent = ##t
    }

    \context {
        \Staff
        % fontSize = #-0.25
        \remove Time_signature_engraver
        % \consists Duration_line_engraver

    }

    \context {
        \Voice
        \remove Forbid_line_break_engraver
        \override Accidental.font-size = 1
    }
}
%
\paper {
    #(define fonts
    (set-global-fonts
    #:music "/Users/trintonprater/haydn"
    #:brace "/Users/trintonprater/haydn"
   ))
    % max-systems-per-page = 3
    system-separator-markup = \markup \fontsize #12 { \tremolo-moderato }
    system-system-spacing = #'((basic-distance . 22) (minimum-distance . 22) (padding . 16))
    indent = 20\mm
    short-indent = 15\mm
    bottom-margin = 10\mm
    left-margin = 10\mm
    right-margin = 10\mm
    top-margin = 10\mm


}
