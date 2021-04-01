\version "2.22.0"

chorpartiturGloriaATreVociHaydn = {
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
            \transpose c c \sopranNotenGloriaATreVociHaydn
          }
          \tag #'klingendepartitur {
            \clef "treble"
            \sopranNotenGloriaATreVociHaydn
          }
        }
        \addlyrics \sopranTextGloriaATreVociHaydn
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
            \transpose c c \altNotenGloriaATreVociHaydn
          }
          \tag #'klingendepartitur {
            \clef "treble"
            \altNotenGloriaATreVociHaydn
          }
        }
        \addlyrics \altTextGloriaATreVociHaydn
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
            \transpose c c \bassNotenGloriaATreVociHaydn
          }
          \tag #'klingendepartitur {
            \clef "bass"
            \bassNotenGloriaATreVociHaydn
          }
        }
        \addlyrics \bassTextGloriaATreVociHaydn

      >>
    >>
  >>
}
orgelsystemGloriaATreVociHaydn = {
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
              \transpose c c \orgelRHNotenGloriaATreVociHaydn
            }
            \tag #'klingendepartitur {
              \clef "treble"
              \orgelRHNotenGloriaATreVociHaydn
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
              \transpose c c \orgelLHNotenGloriaATreVociHaydn
            }
            \tag #'klingendepartitur {
              \clef "bass"
              \orgelLHNotenGloriaATreVociHaydn
            }
          }

        >>

      >>
    >>
  >>

}

scoreGloriaATreVociHaydn = {
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
          \transpose c c \violineINotenGloriaATreVociHaydn
        }
        \tag #'klingendepartitur {
          \clef "treble"
          \violineINotenGloriaATreVociHaydn
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
          \transpose c c \violineIINotenGloriaATreVociHaydn
        }
        \tag #'klingendepartitur {
          \clef "treble"
          \violineIINotenGloriaATreVociHaydn
        }
      }

    >>
    \chorpartiturGloriaATreVociHaydn
    \orgelsystemGloriaATreVociHaydn


    \new Staff \with {
      instrumentName = "Basso continuo"
      shortInstrumentName = "B.c."
      midiInstrument = "contrabass"

    }
    <<
      \new Voice = "vContinuo" {
        \tag #'transponierendepartitur {
          \clef "bass"
          \transpose c c \continuoNotenGloriaATreVociHaydn
        }
        \tag #'klingendepartitur {
          \clef "bass"
          \continuoNotenGloriaATreVociHaydn
        }
      }

    >>
  >>
}