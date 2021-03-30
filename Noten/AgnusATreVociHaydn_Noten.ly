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




globalAgnusATreVociHaydn = { 
	\taktstil
 \accidentalStyle modern-voice
 }

vorspielpausenAgnusATreVociHaydn = { 
	
}

violineINotenAgnusATreVociHaydn = \tempTranspose \relative c' { 
	 \globalAgnusATreVociHaydn
	 
 }

violineIINotenAgnusATreVociHaydn = \tempTranspose \relative c' { 
	 \globalAgnusATreVociHaydn
	 
 }

sopranNotenAgnusATreVociHaydn = \tempTranspose \relative c' { 
	 \globalAgnusATreVociHaydn
	 
 }

altNotenAgnusATreVociHaydn = \tempTranspose \relative c' { 
	 \globalAgnusATreVociHaydn
	 
 }

bassNotenAgnusATreVociHaydn = \tempTranspose \relative c { 
	 \globalAgnusATreVociHaydn
	 
 }

orgelRHNotenAgnusATreVociHaydn = \tempTranspose \relative c' { 
	 \globalAgnusATreVociHaydn
	 
 }

orgelLHNotenAgnusATreVociHaydn = \tempTranspose \relative c { 
	 \globalAgnusATreVociHaydn
	 
 }

continuoNotenAgnusATreVociHaydn = \tempTranspose \relative c { 
	 \globalAgnusATreVociHaydn
	 
 }

metronomZeileAgnusATreVociHaydn = \drummode { 
 }
\include "defAgnusATreVociHaydn.ly"

		%***Arbeitspartitur
		#(set-global-staff-size 14)
		\book { 
 	\bookOutputName "AgnusATreVociHaydn-Arbeitspartitur"
	\score { 
			\removeWithTag #'transponierendepartitur
			\removeWithTag #'klavierauszug
			\removeWithTag #'direction
			\removeWithTag #'einzelstimme
			\removeWithTag #'chorpartitur
			\removeWithTag #'midiausgabe
			\scoreAgnusATreVociHaydn 
 } 
 }
		
		\book { 
 	\bookOutputName "AgnusATreVociHaydn-midi" 
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
	\scoreAgnusATreVociHaydn 
 } 
 }
		%Arbeitspartitur***
		