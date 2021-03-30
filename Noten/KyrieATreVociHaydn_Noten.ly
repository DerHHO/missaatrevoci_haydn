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




globalKyrieATreVociHaydn = {
  \taktstil
  \accidentalStyle modern-voice
  \key d\major
  \time 4/4
}


violineINotenKyrieATreVociHaydn = \tempTranspose \relative c' {
  \globalKyrieATreVociHaydn

}

violineIINotenKyrieATreVociHaydn = \tempTranspose \relative c' {
  \globalKyrieATreVociHaydn

}

sopranNotenKyrieATreVociHaydn = \tempTranspose \relative d'' {
  \globalKyrieATreVociHaydn
  \autoBeamOff
  d4. a8 a4 r |
  d4. b8 b4 r4 |
  d4 a g fis |
  fis e r2 | \mBreak
  e4. fis8 g[ fis] e[ e] |
  fis[ g] a4 r2 |
  g4. a8 b[ a] b[ g] |
  a[ b] c4 r2 | \mBreak
  b4 d2 b4 |
  a8[ cis] d2 a4 |
  a8([ g b fis] fis4) e4 |
  a2 r2 | \mBreak
  b4 d4.( cis8) d8[ b] |
  a[ cis] d4.( a8) fis[ a] |
  a([ g] fis2) e4 |
  d4 r r2 | \mBreak
  \relative a' {
    r2 a8[^\soloMarkup cis] e4 |
    r2 b8[ d] fis4 |
    fis2 e4 d |
    cis4.( d8) e4 r4 | \mBreak
    r2 a,8[ cis] e4 |
    r2 b8[ d] fis4 |
    d4.( e16[ d]) cis4 b |
    b4.( cis8) a4 r | \mBreak
    a2 a4 a |
    a8[ b] b4 r2 |
    cis2 cis4 cis |
    cis8[ d] d4 r2 | \mBreak
    d2( fis4) d |
    cis4.( d8) e2 |
    r4 d cis( b) |
    b2( cis) | \mBreak
    d4.( e8) fis8[ e fis d] |
    cis4.( d8) e2 |
    r4 d cis4( b) |
    a4 r4 r2 | \mBreak
  }
  \relative d'' {
    d4.^\tuttiMarkup a8 a4 r |
    d4. b8 b4 r4 |
    d4 a g fis |
    fis e r2 | \mBreak
    e4. fis8 g[ fis] e[ e] |
    fis[ g] a4 r2 |
    g4. a8 b[ a] b[ g] |
    a[ b] c4 r2 | \mBreak
    bes2. bes4 |
    a1 |
    g2 g4 g |
    d'4 cis r2 | \mBreak
    d4.^\soloMarkup g,8 g2 |
    d'4. a8 a2 |
    g2^\tuttiMarkup g4 g |
    d'4 cis r2 |
    d4.^\soloMarkup g,8 g2 |
    d'4. a8 a2 |
    r4 g4^\tuttiMarkup fis4( e) |
    fis2 b |
    a( cis) |
    d2 r \bar "|."
  }
}

sopranTextKyrieATreVociHaydn = \lyricmode {
  Ky -- ri -- e, Ky -- ri -- e, Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e __ e -- lei -- son Ky -- ri -- e __ e -- lei -- son,
  Ky -- rie e -- lei -- son, e -- le -- i -- son,
  Ky -- rie __ e -- lei -- son, e -- le -- i -- son.

  Chri -- ste, Chri -- ste, Chri -- ste e -- lei -- son,
  Chri -- ste, Chri -- ste, Chri -- ste e -- lei -- son,
  Chri -- ste e -- lei -- son, Chri -- ste e -- lei -- son,
  Chri -- ste, Chri -- ste e -- lei -- son,
  Chri -- ste, __ Chri -- ste e -- lei -- son.

  Ky -- ri -- e, Ky -- ri -- e, Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e, Ky -- ri -- e, Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e, Ky -- rie e -- lei -- son,
  Ky -- ri -- e, Ky -- ri -- e,
  Ky -- rie e -- lei -- son,
  Ky -- ri -- e, Ky -- ri -- e,
  e -- lei -- son, e -- lei -- son.
}

altNotenKyrieATreVociHaydn = \tempTranspose \relative c' {
  \globalKyrieATreVociHaydn
  \autoBeamOff
  fis4. fis8 fis4 r |
  g4. g8 g4 r4 |
  fis4 fis e d |
  d cis r2 | \mBreak
  cis4. d8 e[ d] e[ cis] |
  d[ e] fis4 r2 |
  e4. fis8 g[ fis] g[ e] |
  fis[ g] a4 r2 | \mBreak
  g4 g b g |
  a( fis) a fis |
  fis8([ e g e] d4) cis4 |
  d2 r2 | \mBreak
  g4 g b8[ a] b[ g] |
  a4( fis) a d, |
  fis8([ e] d2) cis4 |
  d4 r4 r2 | \mBreak
  R1*4 | \mBreak
  R1*4 | \mBreak
  R1*4 | \mBreak
  R1*4 | \mBreak
  R1*4 | \mBreak
  \relative fis' {
    fis4.^\tuttiMarkup fis8 fis4 r |
    g4. g8 g4 r4 |
    fis4 fis e d |
    d cis r2 | \mBreak
    cis4. d8 e[ d] e[ cis] |
    d[ e] fis4 r2 |
    e4. fis8 g[ fis] g[ e] |
    fis[ g] a4 r2 | \mBreak
    g2. g4 |
    d1 |
    d2 d4 d |
    g4 g r2 | \mBreak
    R1*2 |
    d2 d4 d |
    g4 g r2 |
    R1 \mBreak
    R1 | 
    r4 e d( cis) |
    d2 d |
    fis2( e) |
    fis2 r | \bar "|."
  }
}

altTextKyrieATreVociHaydn = \lyricmode {
  Ky -- ri -- e, Ky -- ri -- e, Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e __ e -- lei -- son, Ky -- ri -- e __ e -- lei -- son,
  Ky -- ri -- e e -- lei -- son, e -- le -- i -- son,
  Ky -- ri -- e __ e -- lei -- son, e -- le -- i -- son.

  Ky -- ri -- e, Ky -- ri -- e, Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e __ e -- lei -- son, Ky -- ri -- e __ e -- lei -- son,
  Ky -- ri -- e, Ky -- rie e -- lei -- son,
  Ky -- rie e -- lei -- son,
  e -- lei -- son, e -- lei -- son.
}

bassNotenKyrieATreVociHaydn = \tempTranspose \relative c {
  \globalKyrieATreVociHaydn
  \autoBeamOff
  d4. d8 d4 r4 |
  d4. d8 d4 r4 |
  d4 d cis d |
  a' a r2 | \mBreak
  R1 |
  r4 a4 fis8[ a] d,4 |
  R1 |
  r4 a'4 fis8[ a] d,4 | \mBreak
  g4 b g2 |
  fis4 a fis d |
  g2( a4) g4 |
  fis2 r | \mBreak
  g4 b g2 |
  fis4 a fis d |
  g2( a) |
  d,4 r r2 | \mBreak
  R1*4 | \mBreak
  R1*4 | \mBreak
  R1*4 | \mBreak
  R1*4 | \mBreak
  R1*4 | \mBreak
  \relative d {
    d4.^\tuttiMarkup d8 d4 r4 |
    d4. d8 d4 r4 |
    d4 d cis d |
    a' a r2 | \mBreak
    R1 |
    r4 a4 fis8[ a] d,4 |
    R1 |
    r4 a'4 fis8[ a] d,4 | \mBreak
    g4. g8 g2 |
    f4. f8 f2 |
    bes2 bes4 bes |
    bes4 a r2 |
    R1*2 |
    bes2 4 4 |
    4 a r2 |
    R1 \mBreak
    R1 |
    g2 a |
    d, g |
    a( a,) |
    d2 r \bar "|."
  }
}

bassTextKyrieATreVociHaydn = \lyricmode {
  Ky -- ri -- e, Ky -- ri -- e, Ky -- ri -- e e -- lei -- son,
  e -- lei -- son,
  e -- lei -- son,
  Ky -- ri -- e, Ky -- ri -- e e -- le -- i -- son,
  Ky -- ri -- e, Ky -- ri -- e e -- lei -- son.
  
  Ky -- ri -- e, Ky -- ri -- e, Ky -- ri -- e e -- lei -- son,
  e -- lei -- son,
  e -- lei -- son,
  Ky -- ri -- e, Ky -- ri -- e, Ky -- rie e -- lei -- son,
  Ky -- rie e -- lei -- son,
  e -- lei -- son, e -- lei -- son.
}

continuoNotenKyrieATreVociHaydn = \tempTranspose \relative c {
  \globalKyrieATreVociHaydn
  d8 d d d  d d fis d |
  d d d d d d g d |
  d d d d cis cis d d |
  a4 a8 b cis d e fis | \mBreak
  g4 r e a |
  d,2 r2 |
  d4 r cis a' |
  d,2~ d8 d fis a | \mBreak
  d,8 d d d d d d d |
  d8 d d d d d d d |
  g2 a4 g |
  fis8( g a g) g( fis) e8-. d-. | \mBreak
  d8 d d d d d d d |
  d8 d d d d d d d |
  g2 a4 a, |
  d a'8 fis d4 r | \mBreak
  \relative a {
    a8(-\senzaBassi b cis b a4) r4 |
    b8( cis d cis b4) r |
    r gis-\conBassi e gis |
    a2 r2 | \mBreak
    a8(-\senzaBassi b cis b a4) r4 |
    b8( cis d cis b4) r |
    r gis-\conBassi e gis |
    a4 a, a r4 | \mBreak
    a'2 a |
    gis r2 |
    g g |
    f r | \mBreak
    e2 gis4 e |
    a2 cis4 a |
    d,2 e4 e |
    a2~ a8 e cis e | \mBreak
    fis2 d |
    a' cis4 a |
    d,2 e4 e |
    a8 b16 a g8 fis g e a a, | \mBreak
    d8 d d d d d fis d |
    d8 d d d d d g d |
    d d d d cis cis d d |
    a4 a8 b cis d e fis | \mBreak
    g4 r e a |
    d,2 r |
    d4 r cis a' |
    d,2~ d8 fis a fis | \mBreak
    g g bes g  g g bes g |
    f f a f f f a f |
    bes bes d bes bes bes d bes |
    bes4 a r2 | \mBreak
    r2 g8(\p-\senzaBassi a b g) |
    r2 fis8( g a fis) |
    bes,\f-\conBassi bes' d bes g, bes' d bes |
    bes4 a r2 |
    r2 g8(\p-\senzaBassi a b g) |
    r2 fis8( g a fis) |
    g2\f-\conBassi a4 a, |
    d8 d d d g g g, g' |
    a a a, a' a4 a |
    d,4 a'8 fis d4 r \bar "|."
  }
}

orgelRHNotenKyrieATreVociHaydn = \tempTranspose \relative c' {
  \globalKyrieATreVociHaydn

}

orgelLHNotenKyrieATreVociHaydn = \tempTranspose \relative c {
  \globalKyrieATreVociHaydn

}

metronomZeileKyrieATreVociHaydn = \drummode {
}
\include "defKyrieATreVociHaydn.ly"

%***Arbeitspartitur
#(set-global-staff-size 14)
\book {
  \bookOutputName "KyrieATreVociHaydn-Arbeitspartitur"
  \score {
    \removeWithTag #'transponierendepartitur
    \removeWithTag #'klavierauszug
    \removeWithTag #'direction
    \removeWithTag #'einzelstimme
    \removeWithTag #'chorpartitur
    \removeWithTag #'midiausgabe
    \scoreKyrieATreVociHaydn
  }
}

\book {
  \bookOutputName "KyrieATreVociHaydn-midi"
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
    \scoreKyrieATreVociHaydn
  }
}
%Arbeitspartitur***
