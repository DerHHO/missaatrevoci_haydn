\version "2.22.0"

chorpartiturKyrieATreVociHaydn = {
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
            \transpose c c \sopranNotenKyrieATreVociHaydn
          }
          \tag #'klingendepartitur {
            \clef "treble"
            \sopranNotenKyrieATreVociHaydn
          }
        }
        \addlyrics \sopranTextKyrieATreVociHaydn

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
            \transpose c c \altNotenKyrieATreVociHaydn
          }
          \tag #'klingendepartitur {
            \clef "treble"
            \altNotenKyrieATreVociHaydn
          }
        }
        \addlyrics \altTextKyrieATreVociHaydn

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
            \transpose c c \bassNotenKyrieATreVociHaydn
          }
          \tag #'klingendepartitur {
            \clef "bass"
            \bassNotenKyrieATreVociHaydn
          }
        }
        \addlyrics \bassTextKyrieATreVociHaydn

      >>
    >>
  >>
}

orgelsystemKyrieATreVociHaydn = {
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
              \transpose c c \orgelRHNotenKyrieATreVociHaydn
            }
            \tag #'klingendepartitur {
              \clef "treble"
              \orgelRHNotenKyrieATreVociHaydn
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
              \transpose c c \orgelLHNotenKyrieATreVociHaydn
            }
            \tag #'klingendepartitur {
              \clef "bass"
              \orgelLHNotenKyrieATreVociHaydn
            }
          }

        >>

      >>
    >>
  >>

}

scoreKyrieATreVociHaydn = {
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
          \transpose c c \violineINotenKyrieATreVociHaydn
        }
        \tag #'klingendepartitur {
          \clef "treble"
          \violineINotenKyrieATreVociHaydn
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
          \transpose c c \violineIINotenKyrieATreVociHaydn
        }
        \tag #'klingendepartitur {
          \clef "treble"
          \violineIINotenKyrieATreVociHaydn
        }
      }

    >>
    \chorpartiturKyrieATreVociHaydn
    \orgelsystemKyrieATreVociHaydn


    \new Staff \with {
      instrumentName = "Basso continuo"
      shortInstrumentName = "B.c."
      midiInstrument = "contrabass"

    }
    <<
      \new Voice = "vContinuo" {
        \tag #'transponierendepartitur {
          \clef "bass"
          \transpose c c \continuoNotenKyrieATreVociHaydn
        }
        \tag #'klingendepartitur {
          \clef "bass"
          \continuoNotenKyrieATreVociHaydn
        }
      }

    >>
  >>
}