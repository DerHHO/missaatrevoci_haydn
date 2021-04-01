\version "2.22.0"


chorpartiturSanctusATreVociHaydn = {
  \new ChoirStaff <<
    <<

      \new Staff \with {
        instrumentName = "Sopran"
        shortInstrumentName = "S"
        midiInstrument = "acoustic grand"

      }
      <<
        \new Voice = "vsop" {
          \tag #'transponierendepartitur {
            \clef "treble"
            \transpose c c \sopranNotenSanctusATreVociHaydn
          }
          \tag #'klingendepartitur {
            \clef "treble"
            \sopranNotenSanctusATreVociHaydn
          }
        }
        \addlyrics \sopranTextSanctusATreVociHaydn
      >>


      \new Staff \with {
        instrumentName = "Alt"
        shortInstrumentName = "A"
        midiInstrument = "acoustic grand"

      }
      <<
        \new Voice = "valt" {
          \tag #'transponierendepartitur {
            \clef "treble"
            \transpose c c \altNotenSanctusATreVociHaydn
          }
          \tag #'klingendepartitur {
            \clef "treble"
            \altNotenSanctusATreVociHaydn
          }
        }
        \addlyrics \altTextSanctusATreVociHaydn
      >>


      \new Staff \with {
        instrumentName = "Bass"
        shortInstrumentName = "B"
        midiInstrument = "acoustic grand"

      }
      <<
        \new Voice = "vbass" {
          \tag #'transponierendepartitur {
            \clef "bass"
            \transpose c c \bassNotenSanctusATreVociHaydn
          }
          \tag #'klingendepartitur {
            \clef "bass"
            \bassNotenSanctusATreVociHaydn
          }
        }
        \addlyrics \bassTextSanctusATreVociHaydn
      >>
    >>
  >>
}
orgelsystemSanctusATreVociHaydn = {
  <<
    \new PianoStaff <<

      \set PianoStaff.instrumentName = "Orgel"
      \set PianoStaff.shortInstrumentName = "Org."	<<

        \new Staff \with {
          instrumentName = ""
          shortInstrumentName = ""
          midiInstrument = "acoustic grand"

        }
        <<
          \new Voice = "vsop" {
            \tag #'transponierendepartitur {
              \clef "treble"
              \transpose c c \orgelRHNotenSanctusATreVociHaydn
            }
            \tag #'klingendepartitur {
              \clef "treble"
              \orgelRHNotenSanctusATreVociHaydn
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
              \transpose c c \orgelLHNotenSanctusATreVociHaydn
            }
            \tag #'klingendepartitur {
              \clef "bass"
              \orgelLHNotenSanctusATreVociHaydn
            }
          }

        >>

      >>
    >>
  >>

}

scoreSanctusATreVociHaydn = {
  <<

    \new Staff \with {
      instrumentName = "Violine 1"
      shortInstrumentName = "Vl. 1"
      midiInstrument = "acoustic grand"

    }
    <<
      \new Voice = "vVioline_1" {
        \tag #'transponierendepartitur {
          \clef "treble"
          \transpose c c \violineINotenSanctusATreVociHaydn
        }
        \tag #'klingendepartitur {
          \clef "treble"
          \violineINotenSanctusATreVociHaydn
        }
      }

    >>


    \new Staff \with {
      instrumentName = "Violine 2"
      shortInstrumentName = "Vl. 2"
      midiInstrument = "acoustic grand"

    }
    <<
      \new Voice = "vVioline_2" {
        \tag #'transponierendepartitur {
          \clef "treble"
          \transpose c c \violineIINotenSanctusATreVociHaydn
        }
        \tag #'klingendepartitur {
          \clef "treble"
          \violineIINotenSanctusATreVociHaydn
        }
      }

    >>
    \chorpartiturSanctusATreVociHaydn
    \orgelsystemSanctusATreVociHaydn


    \new Staff \with {
      instrumentName = "Basso continuo"
      shortInstrumentName = "B.c."
      midiInstrument = "acoustic grand"

    }
    <<
      \new Voice = "vContinuo" {
        \tag #'transponierendepartitur {
          \clef "bass"
          \transpose c c \continuoNotenSanctusATreVociHaydn
        }
        \tag #'klingendepartitur {
          \clef "bass"
          \continuoNotenSanctusATreVociHaydn
        }
      }

    >>
  >>
}