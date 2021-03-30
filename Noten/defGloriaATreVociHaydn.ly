
chorpartiturGloriaATreVociHaydn = {
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
					\transpose c c \sopranNotenGloriaATreVociHaydn
				}
				\tag #'klingendepartitur {
					\clef "treble"
					\sopranNotenGloriaATreVociHaydn
				}
			}
			
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
					\transpose c c \altNotenGloriaATreVociHaydn
				}
				\tag #'klingendepartitur {
					\clef "treble"
					\altNotenGloriaATreVociHaydn
				}
			}
			
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
					\transpose c c \bassNotenGloriaATreVociHaydn
				}
				\tag #'klingendepartitur {
					\clef "bass"
					\bassNotenGloriaATreVociHaydn
				}
			}
			
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

scoreGloriaATreVociHaydn = {	<<

		\new Staff \with {
			instrumentName = "Violine 1"
			shortInstrumentName = "Vl. 1"
			midiInstrument = "acoustic grand"
			
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
			midiInstrument = "acoustic grand"
			
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
			midiInstrument = "acoustic grand"
			
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