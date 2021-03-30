\version "2.18.2"

\include "../Noten/dynamicparams.ly"
\include "../Noten/formatangaben.ly"
\include "../Noten/mergerests.ly"
\include "../Noten/optionaltranspose.ly"
\include "../Noten/Bezeichnungen.ly"
\include "../Noten/generaldefinitions.ly"
\include "../Noten/mydrums2.ly"
\include "../Noten/drumdefinitions.ly"

tempTranspose = #(define-music-function (parser location music)
                   (ly:music?)
                   (let* ((octave (or (ly:get-option 'octave) -1))
                          (note (or (ly:get-option 'note) 0))
                          (alteration (or (ly:get-option 'alteration) 0))
                          (to (ly:make-pitch octave note alteration)))
                     #{ \transpose c c  $music #})) 




globalSanctusATreVociHaydn = { 
	\taktstil
 \accidentalStyle modern-voice
 }

vorspielpausenSanctusATreVociHaydn = { 
	
}

violineINotenSanctusATreVociHaydn = \tempTranspose \relative c' { 
	 \globalSanctusATreVociHaydn
	 
 }

violineIINotenSanctusATreVociHaydn = \tempTranspose \relative c' { 
	 \globalSanctusATreVociHaydn
	 
 }

sopranNotenSanctusATreVociHaydn = \tempTranspose \relative c' { 
	 \globalSanctusATreVociHaydn
	 
 }

altNotenSanctusATreVociHaydn = \tempTranspose \relative c' { 
	 \globalSanctusATreVociHaydn
	 
 }

bassNotenSanctusATreVociHaydn = \tempTranspose \relative c { 
	 \globalSanctusATreVociHaydn
	 
 }

orgelRHNotenSanctusATreVociHaydn = \tempTranspose \relative c' { 
	 \globalSanctusATreVociHaydn
	 
 }

orgelLHNotenSanctusATreVociHaydn = \tempTranspose \relative c { 
	 \globalSanctusATreVociHaydn
	 
 }

continuoNotenSanctusATreVociHaydn = \tempTranspose \relative c { 
	 \globalSanctusATreVociHaydn
	 
 }

metronomZeileSanctusATreVociHaydn = \drummode { 
 }
\include "defSanctusATreVociHaydn.ly"

		%***Arbeitspartitur
		#(set-global-staff-size 14)
		\book { 
 	\bookOutputName "SanctusATreVociHaydn-Arbeitspartitur"
	\score { 
			\removeWithTag #'transponierendepartitur
			\removeWithTag #'klavierauszug
			\removeWithTag #'direction
			\removeWithTag #'einzelstimme
			\removeWithTag #'chorpartitur
			\removeWithTag #'midiausgabe
			\scoreSanctusATreVociHaydn 
 } 
 }
		
		\book { 
 	\bookOutputName "SanctusATreVociHaydn-midi" 
 	 \score { 

		\midi {
			\tempo 4 = 120
			\context {
        \Score
        midiChannelMapping = #'instrument
      }
		}
		
	\removeWithTag #'transponierendepartitur
			\removeWithTag #'klavierauszug
			\removeWithTag #'direction
			\removeWithTag #'chorpartitur
			\removeWithTag #'partitur
			\removeWithTag #'einzelstimme
	
	\unfoldRepeats
	\scoreSanctusATreVociHaydn 
 } 
 }
		%Arbeitspartitur***
		