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




globalBenedictusATreVociHaydn = { 
	\taktstil
 \accidentalStyle modern-voice
 }

vorspielpausenBenedictusATreVociHaydn = { 
	
}

violineINotenBenedictusATreVociHaydn = \tempTranspose \relative c' { 
	 \globalBenedictusATreVociHaydn
	 
 }

violineIINotenBenedictusATreVociHaydn = \tempTranspose \relative c' { 
	 \globalBenedictusATreVociHaydn
	 
 }

sopranNotenBenedictusATreVociHaydn = \tempTranspose \relative c' { 
	 \globalBenedictusATreVociHaydn
	 
 }

altNotenBenedictusATreVociHaydn = \tempTranspose \relative c' { 
	 \globalBenedictusATreVociHaydn
	 
 }

bassNotenBenedictusATreVociHaydn = \tempTranspose \relative c { 
	 \globalBenedictusATreVociHaydn
	 
 }

orgelRHNotenBenedictusATreVociHaydn = \tempTranspose \relative c' { 
	 \globalBenedictusATreVociHaydn
	 
 }

orgelLHNotenBenedictusATreVociHaydn = \tempTranspose \relative c { 
	 \globalBenedictusATreVociHaydn
	 
 }

continuoNotenBenedictusATreVociHaydn = \tempTranspose \relative c { 
	 \globalBenedictusATreVociHaydn
	 
 }

metronomZeileBenedictusATreVociHaydn = \drummode { 
 }
\include "defBenedictusATreVociHaydn.ly"

		%***Arbeitspartitur
		#(set-global-staff-size 14)
		\book { 
 	\bookOutputName "BenedictusATreVociHaydn-Arbeitspartitur"
	\score { 
			\removeWithTag #'transponierendepartitur
			\removeWithTag #'klavierauszug
			\removeWithTag #'direction
			\removeWithTag #'einzelstimme
			\removeWithTag #'chorpartitur
			\removeWithTag #'midiausgabe
			\scoreBenedictusATreVociHaydn 
 } 
 }
		
		\book { 
 	\bookOutputName "BenedictusATreVociHaydn-midi" 
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
	\scoreBenedictusATreVociHaydn 
 } 
 }
		%Arbeitspartitur***
		