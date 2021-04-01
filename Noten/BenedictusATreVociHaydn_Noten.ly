\version "2.18.2"

\include "../Noten/dynamicparams.ly"
\include "../Noten/formatangaben.ly"
\include "../Noten/mergerests.ly"
\include "../Noten/optionaltranspose.ly"
\include "../Noten/Bezeichnungen.ly"
\include "../Noten/generaldefinitions.ly"
\include "../Noten/mydrums2.ly"
\include "../Noten/drumdefinitions.ly"
\include "../Noten/mBreak.ly"

tempTranspose = #(define-music-function (parser location music)
                   (ly:music?)
                   (let* ((octave (or (ly:get-option 'octave) -1))
                          (note (or (ly:get-option 'note) 0))
                          (alteration (or (ly:get-option 'alteration) 0))
                          (to (ly:make-pitch octave note alteration)))
                     #{ \transpose c c  $music #}))

ablaufzeileBenedictusATreVociHaydn = {
  
}


globalBenedictusATreVociHaydn = {
  \taktstil
  \accidentalStyle modern-voice
  \key g\major
  \time 3/4
  \tempo "Andante"
}

globalHosannaBenedictusATreVociHaydn = {
  \taktstil
  \accidentalStyle modern-voice
  \bar "||"
  \time 4/4
  \tempo "Allegro"
}


violineINotenBenedictusATreVociHaydn = \tempTranspose \relative c' {
  \globalBenedictusATreVociHaydn

}

violineIINotenBenedictusATreVociHaydn = \tempTranspose \relative c' {
  \globalBenedictusATreVociHaydn

}

sopranNotenBenedictusATreVociHaydn = \tempTranspose \relative g' {
  \globalBenedictusATreVociHaydn
  \autoBeamOff
  R2.*5 | \mBreak
  R2.*5 | \mBreak
  R2.*2 |
  g2 b8.[ g16] |
  d'2 b4 |
  g2. | \mBreak
  g2. |
  a2~ a8([ b16 c]) |
  b4 r r |
  c2. |
  c2. | \mBreak
  e4 d c |
  c b r |
  R2. |
  r4 r r8 g' |
  g8.[ d16] d4. g8 | \mBreak
  g8. c,16 c4 c( |
  b4 e8[ d]) c[ b] |
  b4( a) r4 |
  c2 c4 |
  ais b r | \mBreak
  e2 e4 |
  cis4 d r |
  b2. |
  c4 d e |
  d8 e16 c b4 a | \mBreak
  g4 r r |
  g2 b8.[ g16] |
  d'2 b4 |
  a2. |
  a2. |
  g'4 e cis | \mBreak
  d4 a r |
  a2. |
  a |
  g'4 e cis |
  d4 a a | \mBreak
  bes2. |
  bes |
  a4 c bes |
  a4( g) r |
  R2. | \mBreak
  r4 r bes8 bes |
  a4 c bes |
  a4 g g |
  g2. |
  f | \mBreak
  ees2.( |
  d2) r4 |
  d2( d'4 |
  cis) d b |
  a2 g4 |
  fis4 r r | \mBreak
  e2( d'4 |
  cis) d4 b |
  a2 a4 |
  d,4 r d |
  d8([ fis e d a' g] |
  fis[ c' b a e' d] | \mBreak
  c4) c b8[ d] |
  d8. b16 a2\fermata |
  g2. |
  g |
  a2~( a8[ b16 c]) |
  b4 r r | \mBreak
  c2. |
  c |
  e4 d c |
  c4 b r |
  f'2 f4 | \mBreak
  dis4 e r |
  d2 d4 |
  b4 c r8. e16 |
  e8[ g fis e] d c |
  c8[ e d c] b8 a | \mBreak
  g2 fis4 |
  d'4 r r8 g, |
  g2.( |
  fis4) g e' |
  d8([ e16 c] b4) a4 |
  \globalHosannaBenedictusATreVociHaydn
  g4 r r
  \relative d'' {
    d4^\tuttiMarkup |
    d b r e |
    e c r c |
    c4. c8 a4. a8 | \mBreak
    d4 b r d |
    d2 b4 b |
    c4.( d8) e4 c8 c |
    b2( a) | \mBreak
    g4 r r b4 |
    b2 b |
    r2 r4 d4^\soloMarkup |
    d2 b4 b |
    c4.( d8) e4 c8^\tuttiMarkup c | \mBreak
    b2( a) |
    g4 r r b |
    b2 b |
    r2 r4 d4^\soloMarkup |
    d2 b4 b | \mBreak
    c4.( d8) e4 c8^\tuttiMarkup c |
    b2( a) |
    d2 c4 c |
    b2( a) |
    g4 r r2 \bar "|."
    
  }
}

gemeinsamerTextBenedictusATreVociHaydn = \lyricmode {
  Ho -- san -- na, ho -- san -- na,
  ho -- san -- na in ex -- cel -- sis,
  ho -- san -- na, ho -- san -- na in ex -- cel -- sis,
  ho -- san -- na
}

sopranTextBenedictusATreVociHaydn = \lyricmode {
  Be -- ne -- di -- ctus,
  be -- ne -- di -- ctus,
  be -- ne -- di -- ctus, qui ve -- nit
  in no -- mi -- ne
  Do -- mi -- ni, Do -- mi -- ni, __ be -- ne -- di -- ctus,
  be -- ne -- di -- ctus, qui ve -- nit in no -- mi -- ne
  Do -- mi -- ni,
  be -- ne -- di -- ctus, be -- ne -- di -- ctus,
  qui ve -- nit,
  be -- ne -- di -- ctus, qui ve -- nit
  in no -- mi -- ne Do -- mi -- ni, __
  be -- ne -- di -- ctus, qui ve -- nit in no -- mi -- ne __
  Do -- mi -- ni, Do -- mi -- ni,
  Do -- mi -- ni, Do -- mi -- ni, in no -- mi -- ne Do -- mi -- ni.
  Be -- ne -- di -- ctus,
  be -- ne -- di -- ctus, qui ve -- nit,
  be -- ne -- di -- ctus,
  be -- ne -- di -- ctus,
  qui ve -- nit in no -- mi -- ne Do -- mi -- ni,
  in no -- mi -- ne Do -- mi -- ni.

  \gemeinsamerTextBenedictusATreVociHaydn

  ho -- san -- na, ho -- san -- na
  in ex -- cel -- sis,
  ho -- san -- na, 
  ho -- san -- na, ho -- san -- na
  in ex -- cel -- sis,
  in ex -- cel -- sis.

}

altNotenBenedictusATreVociHaydn = \tempTranspose \relative c' {
  \globalBenedictusATreVociHaydn
  \autoBeamOff
  R2.*89
  \globalHosannaBenedictusATreVociHaydn
  \relative b' {
    r2 r4 b |
    b g r b |
    c e, r a |
    a4. a8 d,4. fis8 | \mBreak
    g4 g r b |
    g( fis) g g |
    g2 c4 a8 a |
    g2( fis) |
    g4 r r f |
    f2 f |
    R1*2 |
    r2 r4 e8 e | \mBreak
    g2( fis) |
    g4 r r f |
    f2 f |
    R1*2 | \mBreak
    r2 r4 e8 e |
    g2( fis) |
    g2 a4 a |
    g2( fis) |
    g4 r r2 \bar "|."
  }
}

altTextBenedictusATreVociHaydn = \lyricmode {
  \gemeinsamerTextBenedictusATreVociHaydn
  
  in ex -- cel -- sis,
  ho -- san -- na
  in ex -- cel -- sis,
  in ex -- cel -- sis.
}

bassNotenBenedictusATreVociHaydn = \tempTranspose \relative c {
  \globalBenedictusATreVociHaydn
  \autoBeamOff
  R2.*89
  \globalHosannaBenedictusATreVociHaydn
  \relative g {
    r2 r4 g |
    g4 g r g |
    g g r g |
    fis d fis d | \mBreak
    b4 g' r g |
    b4( a) g4 fis |
    e4.( fis8) g4( c,) |
    d4 d d2 | \mBreak
    g4 r r g |
    g2 g |
    R1*2 |
    r2 r4 c,8 c | \mBreak
    d1 |
    g4 b d b8 b |
    g2 g |
    R1*2 | \mBreak
    r2 r4 c,8 c |
    d2( c) |
    b2 c4 c |
    d1 |
    g4 r r2 |
    \bar "|."
  }
}

bassTextBenedictusATreVociHaydn = \lyricmode {
  \gemeinsamerTextBenedictusATreVociHaydn
  
  in ex -- cel -- sis,
  ho -- san -- na, ho -- san -- na
  in ex -- cel -- sis,
  in ex -- cel -- sis.
}

continuoNotenBenedictusATreVociHaydn = \tempTranspose \relative g {
  \globalBenedictusATreVociHaydn
  g2.~ |
  g2 b8 g |
  fis8 e d4 fis |
  g8 d g b, d g, |
  c2.~ | \mBreak
  c4 g' e |
  c d d' |
  g,8 d g d b d |
  g,4 r b4 |
  c4 r fis,8 g | \mBreak
  c8 a d4 d |
  g4 d b |
  g4 r r |
  R2. |
  g'2.~ | \mBreak
  g2 b8 g |
  fis8 e d4 fis |
  g8 d g b, d g, |
  c2.~ |
  c2.~ | \mBreak
  c4 d d |
  g8 d g d b d |
  g,4 b'-\senzaBassi b |
  r c c |
  r b b | \mBreak
  r4 a fis |
  g4 r c,8-\conBassi cis |
  d2 r4 |
  d4 r d |
  g2 r4 | \mBreak
  g4 g,2 |
  g'2. |
  g2 g,4 |
  c2. |
  d2 d4 | \mBreak
  g4 d b |
  g4 r r |
  R2. |
  d'2.~ |
  d |
  cis4 r a | \mBreak
  d4 r r |
  d2.~ |
  d |
  cis4 r a |
  d r r | \mBreak
  g4 g( f) |
  e d( c) |
  f 2 bes,4 |
  c2 f4 |
  g4 g( f) | \mBreak
  e4 d4( c) |
  f2 bes,4 |
  c2 r4 |
  r cis cis |
  r d d | \mBreak
  r4 c c |
  bes2 r4 |
  r g' bes |
  a fis g |
  a2 ais4 |
  b4 r r | \mBreak
  r4 gis b |
  g fis g |
  a2 a,4 |
  d4 r r |
  R2.*2 | \mBreak
  R2. |
  R2.\fermata |
  g2. |
  g2 b8 g |
  fis8 e d4 fis |
  g8 d g b, d g, | \mBreak
  c2. |
  c |
  c4 d d |
  g8 d g d b d |
  g4 g, g' | \mBreak
  c,2 r4 |
  e2. |
  gis4 a r |
  R2.*2 | \mBreak
  d2 c4 |
  b4 r r |
  c8 e d c b a |
  a c b a g fis |
  g4 d' d, | \mBreak
  \globalHosannaBenedictusATreVociHaydn
  g8 g fis g d g b, g' |
  g, g' fis g d g b, g' |
  g, g' fis g e g c, g' |
  fis a d, a' fis a d, a' | \mBreak
  b,8 g' fis g d g b, g' |
  b b, a' a, g' g, fis' fis, |
  e' e, e' fis g4 c, |
  d2 d | \mBreak
  g,8 g' fis g d g b, g' |
  g,4 r r2 |
  R1 |
  f'2 f |
  e c8 c' a c | \mBreak
  d, d' cis d d4 d, |
  g,8 g' fis g d g b, g' |
  g,2 r2 |
  R1 |
  e'2 gis4 e | \mBreak
  a2 c,8 c' a c |
  d, d' cis d c, c' b c |
  b, b' g b c, c' a c |
  d4 d d, d |
  g, r4 r2 \bar "|."
}

orgelRHNotenBenedictusATreVociHaydn = \tempTranspose \relative c' {
  \globalBenedictusATreVociHaydn

}

orgelLHNotenBenedictusATreVociHaydn = \tempTranspose \relative c {
  \globalBenedictusATreVociHaydn

}



metronomZeileBenedictusATreVociHaydn = \drummode {
}
\include "defBenedictusATreVociHaydn.ly"

%{Arbeitspartitur
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
Arbeitspartitur%}
