
chorpartiturAgnusATreVociHaydn = {
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
            \transpose c c \sopranNotenAgnusATreVociHaydn
          }
          \tag #'klingendepartitur {
            \clef "treble"
            \sopranNotenAgnusATreVociHaydn
          }
        }
        \addlyrics \sopranTextAgnusATreVociHaydn
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
            \transpose c c \altNotenAgnusATreVociHaydn
          }
          \tag #'klingendepartitur {
            \clef "treble"
            \altNotenAgnusATreVociHaydn
          }
        }
        \addlyrics \altTextAgnusATreVociHaydn
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
            \transpose c c \bassNotenAgnusATreVociHaydn
          }
          \tag #'klingendepartitur {
            \clef "bass"
            \bassNotenAgnusATreVociHaydn
          }
        }
        \addlyrics \bassTextAgnusATreVociHaydn
      >>
    >>
  >>
}
orgelsystemAgnusATreVociHaydn = {
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
              \transpose c c \orgelRHNotenAgnusATreVociHaydn
            }
            \tag #'klingendepartitur {
              \clef "treble"
              \orgelRHNotenAgnusATreVociHaydn
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
              \transpose c c \orgelLHNotenAgnusATreVociHaydn
            }
            \tag #'klingendepartitur {
              \clef "bass"
              \orgelLHNotenAgnusATreVociHaydn
            }
          }

        >>

      >>
    >>
  >>

}

scoreAgnusATreVociHaydn = {
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
          \transpose c c \violineINotenAgnusATreVociHaydn
        }
        \tag #'klingendepartitur {
          \clef "treble"
          \violineINotenAgnusATreVociHaydn
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
          \transpose c c \violineIINotenAgnusATreVociHaydn
        }
        \tag #'klingendepartitur {
          \clef "treble"
          \violineIINotenAgnusATreVociHaydn
        }
      }

    >>
    \chorpartiturAgnusATreVociHaydn
    \orgelsystemAgnusATreVociHaydn


    \new Staff \with {
      instrumentName = "Basso continuo"
      shortInstrumentName = "B.c."
      midiInstrument = "acoustic grand"

    }
    <<
      \new Voice = "vContinuo" {
        \tag #'transponierendepartitur {
          \clef "bass"
          \transpose c c \continuoNotenAgnusATreVociHaydn
        }
        \tag #'klingendepartitur {
          \clef "bass"
          \continuoNotenAgnusATreVociHaydn
        }
      }

    >>
  >>
}