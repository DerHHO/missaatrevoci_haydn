
chorpartiturCredoATreVociHaydn = {
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
					\transpose c c \sopranNotenCredoATreVociHaydn
				}
				\tag #'klingendepartitur {
					\clef "treble"
					\sopranNotenCredoATreVociHaydn
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
					\transpose c c \altNotenCredoATreVociHaydn
				}
				\tag #'klingendepartitur {
					\clef "treble"
					\altNotenCredoATreVociHaydn
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
					\transpose c c \bassNotenCredoATreVociHaydn
				}
				\tag #'klingendepartitur {
					\clef "bass"
					\bassNotenCredoATreVociHaydn
				}
			}
			
		>>
	>>
>>
}
orgelsystemCredoATreVociHaydn = {
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
					\transpose c c \orgelRHNotenCredoATreVociHaydn
				}
				\tag #'klingendepartitur {
					\clef "treble"
					\orgelRHNotenCredoATreVociHaydn
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
					\transpose c c \orgelLHNotenCredoATreVociHaydn
				}
				\tag #'klingendepartitur {
					\clef "bass"
					\orgelLHNotenCredoATreVociHaydn
				}
			}
			
		>>

>>
>>
	>>

}

scoreCredoATreVociHaydn = {	<<

		\new Staff \with {
			instrumentName = "Violine 1"
			shortInstrumentName = "Vl. 1"
			midiInstrument = "acoustic grand"
			
		}
			<<
			\new Voice = "vVioline_1" {
				\tag #'transponierendepartitur {
					\clef "treble"
					\transpose c c \violineINotenCredoATreVociHaydn
				}
				\tag #'klingendepartitur {
					\clef "treble"
					\violineINotenCredoATreVociHaydn
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
					\transpose c c \violineIINotenCredoATreVociHaydn
				}
				\tag #'klingendepartitur {
					\clef "treble"
					\violineIINotenCredoATreVociHaydn
				}
			}
			
		>>
\chorpartiturCredoATreVociHaydn
\orgelsystemCredoATreVociHaydn


		\new Staff \with {
			instrumentName = "Basso continuo"
			shortInstrumentName = "B.c."
			midiInstrument = "acoustic grand"
			
		}
			<<
			\new Voice = "vContinuo" {
				\tag #'transponierendepartitur {
					\clef "bass"
					\transpose c c \continuoNotenCredoATreVociHaydn
				}
				\tag #'klingendepartitur {
					\clef "bass"
					\continuoNotenCredoATreVociHaydn
				}
			}
			
		>>
	>>
}