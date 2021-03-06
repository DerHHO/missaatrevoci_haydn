\version "2.22.0"


chorpartiturBenedictusATreVociHaydn = {
  \new ChoirStaff <<
    <<

      \new Staff \with {
        instrumentName = "Sopran"
        shortInstrumentName = "S"
        midiInstrument = "trombone"

      }
      <<
        \new Voice = "vsop" {
          \tag #'transponierendepartitur {
            \clef "treble"
            \transpose c c \sopranNotenBenedictusATreVociHaydn
          }
          \tag #'klingendepartitur {
            \clef "treble"
            \sopranNotenBenedictusATreVociHaydn
          }
        }
        \addlyrics \sopranTextBenedictusATreVociHaydn
      >>


      \new Staff \with {
        instrumentName = "Alt"
        shortInstrumentName = "A"
        midiInstrument = "trombone"

      }
      <<
        \new Voice = "valt" {
          \tag #'transponierendepartitur {
            \clef "treble"
            \transpose c c \altNotenBenedictusATreVociHaydn
          }
          \tag #'klingendepartitur {
            \clef "treble"
            \altNotenBenedictusATreVociHaydn
          }
        }
        \addlyrics \altTextBenedictusATreVociHaydn
      >>


      \new Staff \with {
        instrumentName = "Bass"
        shortInstrumentName = "B"
        midiInstrument = "trombone"

      }
      <<
        \new Voice = "vbass" {
          \tag #'transponierendepartitur {
            \clef "bass"
            \transpose c c \bassNotenBenedictusATreVociHaydn
          }
          \tag #'klingendepartitur {
            \clef "bass"
            \bassNotenBenedictusATreVociHaydn
          }
        }
        \addlyrics \bassTextBenedictusATreVociHaydn
      >>
    >>
  >>
}

orgelsystemBenedictusATreVociHaydn = {
  <<
    \new PianoStaff <<
      \tag #'partitur {
        \set PianoStaff.instrumentName = "Orgel"
        \set PianoStaff.shortInstrumentName = "Org."
      }
      <<

        \new Staff \with {
          instrumentName = ""
          shortInstrumentName = ""
          midiInstrument = "acoustic grand"

        }
        <<
          \new Voice = "vsop" {
            \tag #'transponierendepartitur {
              \clef "treble"
              \transpose c c \orgelRHNotenBenedictusATreVociHaydn
            }
            \tag #'klingendepartitur {
              \clef "treble"
              \orgelRHNotenBenedictusATreVociHaydn
            }
          }

        >>


        \new Staff \with {
          instrumentName = ""
          shortInstrumentName = ""
          midiInstrument = "acoustic grand"

          \override VerticalAxisGroup.staff-staff-spacing = #'((basic-distance . 9) (minimum-distance . 7) (padding . 1) (stretchability . 5))
        }
        <<
          \new Voice = "valt" {
            \tag #'transponierendepartitur {
              \clef "bass"
              \transpose c c \orgelLHNotenBenedictusATreVociHaydn
            }
            \tag #'klingendepartitur {
              \clef "bass"
              \orgelLHNotenBenedictusATreVociHaydn
            }
          }

        >>

      >>
    >>
  >>

}

scoreBenedictusATreVociHaydn = {
  <<

    \new Staff \with {
      instrumentName = "Violine 1"
      shortInstrumentName = "Vl. 1"
      midiInstrument = "string ensemble 1"

    }
    <<
      \new Voice = "vVioline_1" {
        \tag #'transponierendepartitur {
          \clef "treble"
          \transpose c c \violineINotenBenedictusATreVociHaydn
        }
        \tag #'klingendepartitur {
          \clef "treble"
          \violineINotenBenedictusATreVociHaydn
        }
      }

    >>


    \new Staff \with {
      instrumentName = "Violine 2"
      shortInstrumentName = "Vl. 2"
      midiInstrument = "string ensemble 1"

    }
    <<
      \new Voice = "vVioline_2" {
        \tag #'transponierendepartitur {
          \clef "treble"
          \transpose c c \violineIINotenBenedictusATreVociHaydn
        }
        \tag #'klingendepartitur {
          \clef "treble"
          \violineIINotenBenedictusATreVociHaydn
        }
      }

    >>
    \chorpartiturBenedictusATreVociHaydn
    \orgelsystemBenedictusATreVociHaydn


    \new Staff \with {
      instrumentName = "Basso continuo"
      shortInstrumentName = "B.c."
      midiInstrument = "contrabass"

    }
    <<
      \new Voice = "vContinuo" {
        \tag #'transponierendepartitur {
          \clef "bass"
          \transpose c c \continuoNotenBenedictusATreVociHaydn
        }
        \tag #'klingendepartitur {
          \clef "bass"
          \continuoNotenBenedictusATreVociHaydn
        }
      }

    >>
  >>
}