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




globalGloriaATreVociHaydn = { 
	\taktstil
 \accidentalStyle modern-voice
 }

vorspielpausenGloriaATreVociHaydn = { 
	
}

violineINotenGloriaATreVociHaydn = \tempTranspose \relative c' { 
	 \globalGloriaATreVociHaydn
	 
 }

violineIINotenGloriaATreVociHaydn = \tempTranspose \relative c' { 
	 \globalGloriaATreVociHaydn
	 
 }

sopranNotenGloriaATreVociHaydn = \tempTranspose \relative c' { 
	 \globalGloriaATreVociHaydn
	 
 }

altNotenGloriaATreVociHaydn = \tempTranspose \relative c' { 
	 \globalGloriaATreVociHaydn
	 
 }

bassNotenGloriaATreVociHaydn = \tempTranspose \relative c { 
	 \globalGloriaATreVociHaydn
	 
 }

orgelRHNotenGloriaATreVociHaydn = \tempTranspose \relative c' { 
	 \globalGloriaATreVociHaydn
	 
 }

orgelLHNotenGloriaATreVociHaydn = \tempTranspose \relative c { 
	 \globalGloriaATreVociHaydn
	 
 }

continuoNotenGloriaATreVociHaydn = \tempTranspose \relative c { 
	 \globalGloriaATreVociHaydn
	 
 }

metronomZeileGloriaATreVociHaydn = \drummode { 
 }
\include "defGloriaATreVociHaydn.ly"

		%***Arbeitspartitur
		#(set-global-staff-size 14)
		\book { 
 	\bookOutputName "GloriaATreVociHaydn-Arbeitspartitur"
	\score { 
			\removeWithTag #'transponierendepartitur
			\removeWithTag #'klavierauszug
			\removeWithTag #'direction
			\removeWithTag #'einzelstimme
			\removeWithTag #'chorpartitur
			\removeWithTag #'midiausgabe
			\scoreGloriaATreVociHaydn 
 } 
 }
		
		\book { 
 	\bookOutputName "GloriaATreVociHaydn-midi" 
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
	\scoreGloriaATreVociHaydn 
 } 
 }
		%Arbeitspartitur***
		