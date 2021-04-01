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




globalCredoATreVociHaydn = { 
	\taktstil
 \accidentalStyle modern-voice
 }

vorspielpausenCredoATreVociHaydn = { 
	
}

violineINotenCredoATreVociHaydn = \tempTranspose \relative c' { 
	 \globalCredoATreVociHaydn
	 
 }

violineIINotenCredoATreVociHaydn = \tempTranspose \relative c' { 
	 \globalCredoATreVociHaydn
	 
 }

sopranNotenCredoATreVociHaydn = \tempTranspose \relative c' { 
	 \globalCredoATreVociHaydn
	 
 }

altNotenCredoATreVociHaydn = \tempTranspose \relative c' { 
	 \globalCredoATreVociHaydn
	 
 }

bassNotenCredoATreVociHaydn = \tempTranspose \relative c { 
	 \globalCredoATreVociHaydn
	 
 }

orgelRHNotenCredoATreVociHaydn = \tempTranspose \relative c' { 
	 \globalCredoATreVociHaydn
	 
 }

orgelLHNotenCredoATreVociHaydn = \tempTranspose \relative c { 
	 \globalCredoATreVociHaydn
	 
 }

continuoNotenCredoATreVociHaydn = \tempTranspose \relative c { 
	 \globalCredoATreVociHaydn
	 
 }

metronomZeileCredoATreVociHaydn = \drummode { 
 }
\include "defCredoATreVociHaydn.ly"

		%{Arbeitspartitur
		#(set-global-staff-size 14)
		\book { 
 	\bookOutputName "CredoATreVociHaydn-Arbeitspartitur"
	\score { 
			\removeWithTag #'transponierendepartitur
			\removeWithTag #'klavierauszug
			\removeWithTag #'direction
			\removeWithTag #'einzelstimme
			\removeWithTag #'chorpartitur
			\removeWithTag #'midiausgabe
			\scoreCredoATreVociHaydn 
 } 
 }
		
		\book { 
 	\bookOutputName "CredoATreVociHaydn-midi" 
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
	\scoreCredoATreVociHaydn 
 } 
 }
		Arbeitspartitur%}
		