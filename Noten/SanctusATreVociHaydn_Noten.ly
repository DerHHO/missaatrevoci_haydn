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




globalSanctusATreVociHaydn = {
  \taktstil
  \accidentalStyle modern-voice
  \key d\major
  \tempo "Adagio"
  \time 3/4
}

globalHosannaSanctusATreVociHaydn = {
  \tempo "Allegro"
  \time 4/4
  \bar "||"
}

vorspielpausenSanctusATreVociHaydn = {

}

violineINotenSanctusATreVociHaydn = \tempTranspose \relative c' {
  \globalSanctusATreVociHaydn

}

violineIINotenSanctusATreVociHaydn = \tempTranspose \relative c' {
  \globalSanctusATreVociHaydn

}

gemeinsamerTextSanctusATreVociHaydn = \lyricmode {
  San -- ctus, san -- ctus, san -- ctus Do -- mi -- nus,
  Do -- mi -- nus De -- us, De -- us Sa -- ba -- oth,
  Do -- mi -- nus De -- us Sa -- ba -- oth,
  
}

sopranNotenSanctusATreVociHaydn = \tempTranspose \relative d'' {
  \globalSanctusATreVociHaydn
  \autoBeamOff
  d2 d4 |
  R2. |
  d2 d4 |
  R2. | \mBreak
  b2.~ |
  b4( a) g |
  fis8. fis16 fis4 r4 | 
  R2. | \mBreak
  e8. 16 4 r |
  e4 e r |
  fis2 fis4 |
  8. 16 4 r4 | \mBreak
  gis8. 16 4 r4 |
  a4 a r |
  b2 b4 |
  cis2 r4 |
  \globalHosannaSanctusATreVociHaydn
  \relative d'' {
    r8 d d d b4 b |
    e4 e8 e a,4 a |
    b4 cis8 cis d4 e8 e | \mBreak
    d4( cis) d4 r |
    r d cis a |
    r d b e | \mBreak
    r4 cis a d |
    d4 d cis2 |
    d4 a fis b | \mBreak
    r4 g e a |
    r fis d8 d g g |
    g2 g | \mBreak
    fis4 b a( cis) |
    d4 r e e |
    d2( cis) |
    d2 r |
    R1 \bar "|."
  }
}

sopranTextSanctusATreVociHaydn = \lyricmode {
  \gemeinsamerTextSanctusATreVociHaydn
  Ple -- ni sunt coe -- li, coe -- li et ter -- ra
  glo -- ri -- a, glo -- ri -- a tu -- a.
  Ho -- san -- na, ho -- san -- na,
  ho -- san -- na in ex -- cel -- sis, ho -- san -- na,
  ho -- san -- na, ho -- san -- na in ex -- cel -- sis,
  in ex -- cel -- sis, in ex -- cel -- sis.
}

altNotenSanctusATreVociHaydn = \tempTranspose \relative fis' {
  \globalSanctusATreVociHaydn
  \autoBeamOff
  fis2 fis4 |
  R2. |
  fis2 fis4 |
  R2. | \mBreak
  d4( g fis |
  e2) cis4 |
  d8. d16 d4 r |
  R2. | \mBreak
  b8. 16 4 r |
  cis4 4 r |
  cis2 4 |
  d8. 16 4 r | \mBreak
  d8. 16 4 r |
  cis4 cis r |
  d2 d4 |
  e2 r4 |
  \globalHosannaSanctusATreVociHaydn
  \relative a' {
    R1*3 | \mBreak
    r8 a8 a a fis4 fis |
    b4 b8 b e,4 e |
    d4 8 8 4 g8 g | \mBreak
    g2 fis4 fis |
    d g e2 |
    fis4 fis d g | \mBreak
    r4 e cis fis |
    r d b8 b e e |
    e2 cis | \mBreak
    d4 e fis( e) |
    fis r b g |
    fis2( e) |
    fis2 r |
    R1 \bar "|."
  }
}

altTextSanctusATreVociHaydn = \lyricmode {
  \gemeinsamerTextSanctusATreVociHaydn
  Ple -- ni sunt coe -- li, coe -- li et ter -- ra
  glo -- ri -- a, glo -- ri -- a tu -- a,
  glo -- ri -- a tu -- a. Ho -- san -- na,
  ho -- san -- na, ho -- san -- na in ex -- cel -- sis,
  in ex -- cel -- sis, in ex -- cel -- sis.
}

bassNotenSanctusATreVociHaydn = \tempTranspose \relative c {
  \globalSanctusATreVociHaydn
  \autoBeamOff
  d2 d4 |
  R2. |
  b'2 b4 |
  R2. | \mBreak
  g4( e d |
  cis2) a'4 |
  d,8. d16 d4 r |
  R2. | \mBreak
  gis8. 16 4 r |
  a4 4 r |
  ais2 4 |
  b8. 16 4 r | \mBreak
  e,8. e16 e4 r |
  a4 a r |
  a2 a4 |
  a2 r4 | 
  \globalHosannaSanctusATreVociHaydn
  \relative a {
    R1*3 | \mBreak
    R1 |
    r2 r8 a a a |
    fis4 fis b4 8 8 | \mBreak
    e,4 e fis4 d8 d |
    b'4 8 8 a2 |
    d,2 r4 g8 g | \mBreak
    cis,4 cis r fis8 fis |
    b,4 4 r a |
    cis8 b cis d e[ fis] g[ a] | \mBreak
    b4 g a2 |
    d,4 r g e |
    a1 |
    d,2 r |
    R1 \bar "|."
  }
}

bassTextSanctusATreVociHaydn = \lyricmode {
  \gemeinsamerTextSanctusATreVociHaydn
  Ple -- ni sunt coe -- li, coe -- li et ter -- ra
  glo -- ri -- a, glo -- ri -- a tu -- a.
  In ex -- cel -- sis, in ex -- cel -- sis,
  ho -- san -- na in ex -- cel -- sis, __
  in ex -- cel -- sis, in ex -- cel -- sis.
}

continuoNotenSanctusATreVociHaydn = \tempTranspose \relative d {
  \globalSanctusATreVociHaydn
  d8. d16 fis8. d16 a'8. fis16 |
  d4 r r |
  b8. b16 d8. b16 fis'8. d16 |
  b4 r r | \mBreak
  g'8. b16 e,8. b'16 d,8. b'16 |
  cis,8. a16 cis8. e16 e8. a,16 |
  d4 r r |
  b4 d fis | \mBreak
  gis2 r4 |
  a2 r4 |
  ais2 r4 |
  b2 r4 | \mBreak
  e,2 r4 |
  a2 r4 |
  a2 r4 |
  a2 r4 | \mBreak
  \globalHosannaSanctusATreVociHaydn
  \relative d {
    d8 e fis g g fis e d |
    cis d e cis fis e d cis |
    d b g a fis a g b | \mBreak
    a a' g e d e fis d |
    gis fis e gis a a, cis a |
    fis' e d fis g fis e d | \mBreak
    cis8 d e a, d e fis d |
    g fis e g a a, a' a, |
    d e fis d b' a g e | \mBreak
    cis8 d e cis a' g fis d |
    b cis d b g' fis e a, |
    cis b cis d e fis g a | \mBreak
    b4 g a2 |
    d,8 e fis d g4 e |
    a2 a,4 a'8 a, |
    d2 d |
    d r \bar "|."
  }
}

orgelRHNotenSanctusATreVociHaydn = \tempTranspose \relative c' {
  \globalSanctusATreVociHaydn

}

orgelLHNotenSanctusATreVociHaydn = \tempTranspose \relative c {
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
