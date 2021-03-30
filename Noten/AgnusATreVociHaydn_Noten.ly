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




globalAgnusATreVociHaydn = {
  \taktstil
  \accidentalStyle modern-voice
  \time 3/4
  \key d\minor
}

globalDonaATreVociHaydn = {
  \tempo "Allegro"
  \time 4/4
  \bar "||"
  \key d\major
}

violineINotenAgnusATreVociHaydn = \tempTranspose \relative c' {
  \globalAgnusATreVociHaydn

}

violineIINotenAgnusATreVociHaydn = \tempTranspose \relative c' {
  \globalAgnusATreVociHaydn

}

sopranNotenAgnusATreVociHaydn = \tempTranspose \relative a' {
  \globalAgnusATreVociHaydn
  \autoBeamOff
  a2 d4 |
  d4 cis r |
  bes( a) g |
  f8.[ g16] a4 r8. a16 |
  a2 a8. a16 | \mBreak
  a2 a4 |
  a2. |
  a2 r4 |
  a2^\soloMarkup c4 |
  c16[ d a bes] bes4 r | \mBreak
  b2 d4 |
  d16[ ees b c] c4 r |
  ees4( d) cis |
  d( c) bes |
  bes2. |
  a4 r r | \mBreak
  a2^\tuttiMarkup d4 |
  d cis r |
  bes4( a) g |
  a8.[ bes16] c4 r8. c16 |
  c2 c8. c16 | \mBreak
  c2 c4 |
  c2. |
  c2 r4 |
  c4..(^\soloMarkup b32[ c d8]) bes |
  a16[ bes a bes] c4 r | \mBreak
  cis4( g'4.) cis,8 |
  e16[ d cis d] d4 r |
  ees8[ g bes g] ees[ d] |
  cis[ e g e] cis[ d] |
  d4.( e32[ d cis d] e8[ d]) | \mBreak
  d4( cis) r |
  d2^\tuttiMarkup f,4 |
  e4 e r |
  bes'( a) g |
  fis8.[ g16] a4 r8. c16 |
  c4 bes8. 16 g8 g | \mBreak
  d'4 cis r |
  R2.*2 |
  \globalDonaATreVociHaydn
  \relative d'' {
    d4.( a8) a4 r |
    d4.( b8) b4 r | \mBreak
    d4 a g fis |
    fis e r2 |
    e4. fis8 g[ fis] g[ e] |
    fis[ g] a4 r2 |
    g4. a8 b[ a] b[ g] | \mBreak
    a8[ b] c4 r2 |
    b4( d2) b4 |
    a8[ cis] d2 a8 a |
    a8([ g b g] fis4 e) |
    a2 r2 | \mBreak
    b4( d4. cis8) d[ b] |
    a([ cis] d4.) a8 fis a |
    a([ g] fis2 e4) |
    d4 r b'4. 8 |
    a4 a cis2 | \mBreak
    d4 r b4. b8 |
    a4 fis g4( e) |
    d4 r4 r2 |
    R1 |
    r2 cis'4. 8 | \mBreak
    d4 d d( cis) |
    d4 r r2 |
    R1 |
    r2 g,2-\tweak X-offset #-3 \p |
    fis4 r e2 |
    d4 r r2 | 
    \bar "|."
  }
}

sopranTextAgnusATreVociHaydn = \lyricmode {
  A -- gnus De -- i,
  A -- gnus De -- i,
  qui tol -- lis pec -- ca -- ta mun -- di:
  mi -- se -- re -- re,
  mi -- se -- re -- re,
  mi -- se -- re -- re no -- bis.

  A -- gnus De -- i,
  A -- gnus De -- i,
  qui tol -- lis pec -- ca -- ta mun -- di:
  mi -- se -- re -- re,
  mi -- se -- re -- re,
  mi -- se -- re -- re no -- bis. __

  A -- gnus De -- i,
  A -- gnus De -- i,
  qui tol -- lis pec -- ca -- ta mun -- di:
  
  Do -- na, do -- na,
  do -- na no -- bis pa -- cem, 
  do -- na no -- bis pa -- cem, 
  do -- na no -- bis pa -- cem, 
  do -- na no -- bis, do -- na pa -- cem,
  do -- na, do -- na no -- bis pa -- cem,
  do -- na no -- bis pa -- cem,
  do -- na no -- bis pa -- cem,
  do -- na no -- bis pa -- cem,
  do -- na pa -- cem.

  
}

altNotenAgnusATreVociHaydn = \tempTranspose \relative c' {
  \globalAgnusATreVociHaydn
  \autoBeamOff
  f2 a4 |
  f4 e r |
  e2 e4 |
  d8.[ e16] f4 r |
  r8. cis16 4 4 | \mBreak
  r8. f16 f4 f |
  r8. g16 g4 f |
  f e r |
  R2.*2 | \mBreak
  R2.*6 | \mBreak
  f2 a4 |
  f4 e r |
  g( f) e |
  f8.[ g16] a4 r |
  r8. e16 e4 e | \mBreak
  r8. f16 f4 f |
  r8. f16 g4 f |
  f4 e r |
  R2.*2 | \mBreak
  R2.*5 | \mBreak
  R2. |
  f2 d4 |
  d4 d r |
  e2 e4 |
  d8.[ e16] fis4 r8. d16 |
  d4 8. 16 8 8 | \mBreak
  g4 g r |
  R2.*2 |
  \globalDonaATreVociHaydn
  \relative fis' {
    fis2 fis4 r |
    g2 g4 r | \mBreak
    fis4 fis e d |
    d cis r2 |
    cis4. d8 e[ d] e[ cis] |
    d[ e] fis4 r2 |
    e4. fis8 g[ fis] g[ e] | \mBreak
    fis[ g] a4 r2 |
    g4 g b g |
    a4( fis) a fis8 8 |
    fis([ e g e] d4 cis) |
    d2 r2 | \mBreak
    g4 g b8[ a] b[ g] |
    a4( fis) a4 d,8 fis |
    fis8([ e] d2 cis4) |
    d4 r d4. d8 |
    d4 fis e2 | \mBreak
    fis4 r d4. 8 |
    d4 d e( cis) |
    d4 r r2 |
    R1 |
    r2 a'4. a8 | \mBreak
    a4 fis e2 |
    fis4 r r2 |
    R1 |
    r2 e-\tweak X-offset #-3 \p |
    d4 r cis2 |
    d4 r r2 \bar "|."
  }

}

altTextAgnusATreVociHaydn = \lyricmode {
  A -- gnus De -- i,
  A -- gnus De -- i,
  qui tol -- lis pec -- ca -- ta,
  pec -- ca -- ta mun -- di:

  A -- gnus De -- i,
  A -- gnus De -- i,
  qui tol -- lis pec -- ca -- ta,
  pec -- ca -- ta mun -- di:

  A -- gnus De -- i,
  A -- gnus De -- i,
  qui tol -- lis pec -- ca -- ta mun -- di:
  
  Do -- na, do -- na,
  do -- na no -- bis pa -- cem, 
  do -- na no -- bis pa -- cem, 
  do -- na no -- bis pa -- cem, 
  do -- na no -- bis pa -- cem, 
  do -- na pa -- cem,
  do -- na no -- bis pa -- cem,
  do -- na pa -- cem, do -- na no -- bis pa -- cem,
  do -- na no -- bis pa -- cem, 
  do -- na no -- bis pa -- cem,
  do -- na pa -- cem.
  
}

bassNotenAgnusATreVociHaydn = \tempTranspose \relative c {
  \globalAgnusATreVociHaydn
  \autoBeamOff
  d2 f4 |
  a4 a r |
  cis,2 cis4 |
  d4 d r |
  r8. a'16 4 4 | \mBreak
  r8. a16 a4 a |
  r8. cis16 4 d4 |
  a a r |
  R2.*2 | \mBreak
  R2.*6 | \mBreak
  d,2 f4 |
  a a r |
  c,2 c4 |
  f4 f r |
  r8. bes16 bes4 4 | \mBreak
  r8. a16 a4 a |
  r8. a16 bes4 a |
  a4 g r |
  R2.*2 | \mBreak
  R2.*5 | \mBreak
  R2. |
  d2 f4 |
  g4 g r |
  cis,2 cis4 |
  d4 d r8. fis16 |
  fis4 g8. g16 bes8 bes | \mBreak
  a4 a r |
  R2.*2 |
  \globalDonaATreVociHaydn
  \relative d {
    d2 d4 r |
    d2 d4 r | \mBreak
    d4 d cis d |
    a' a r2 |
    R1 |
    r4 a8 a fis[ a] d,4 |
    R1 | \mBreak
    r4 a'8 a fis[ a] d,4 |
    g4( b) g2 |
    fis4 a fis d |
    g2( a4 g) |
    fis2 r2 | \mBreak
    g4( b) g2 |
    fis4 a fis d |
    g2( a) |
    d,4 r g4. g8 |
    fis4 d a'2 | \mBreak
    d,4 r g4. g8 |
    fis4 d a'2 |
    d,4 r r2 |
    R1 |
    r2 g4. g8 | \mBreak
    fis4 d a'2 |
    d,4 r r2 |
    R1 |
    r2 cis-\tweak X-offset #-3 \p |
    d4 r a'2 |
    d,4 r r2 |
    \bar "|."
  }
}

bassTextAgnusATreVociHaydn = \lyricmode {
  A -- gnus De -- i,
  A -- gnus De -- i,
  qui tol -- lis pec -- ca -- ta,
  pec -- ca -- ta mun -- di:

  A -- gnus De -- i,
  A -- gnus De -- i,
  qui tol -- lis pec -- ca -- ta,
  pec -- ca -- ta mun -- di:

  A -- gnus De -- i,
  A -- gnus De -- i,
  qui tol -- lis pec -- ca -- ta mun -- di:
  
  Do -- na, do -- na,
  do -- na no -- bis pa -- cem, 
  do -- na no -- bis,
  no -- bis pa -- cem, do -- na,
  do -- na no -- bis pa -- cem,
  do -- na, do -- na no -- bis pa -- cem, 
  do -- na no -- bis pa -- cem,
  do -- na no -- bis pa -- cem,
  do -- na no -- bis pa -- cem,
  do -- na pa -- cem.
}

continuoNotenAgnusATreVociHaydn = \tempTranspose \relative c {
  \globalAgnusATreVociHaydn
  d2 f4 |
  a2 r4 |
  cis,2. |
  d2 r4 |
  a'2.~ | \mBreak
  a~ |
  a |
  a2 r4 |
  d,4( e) fis |
  g2 r4 | \mBreak
  g4( a) b |
  c2 r4 |
  c4( bes) a |
  bes( a) g |
  g8. f16 e4( d) |
  cis4 r r | \mBreak
  d2 f4 |
  a2 r4 |
  c,2. |
  f2 r4 |
  bes2. | \mBreak
  a2. |
  c,2.~ |
  c2 r4 |
  c4( d) e |
  f4 r r | \mBreak
  e2 g4 |
  f4( d) f |
  g2 f4 |
  e2 f4 |
  g gis( e) | \mBreak
  a2 r4 |
  d,2 f4 |
  g2 r4 |
  cis,2. |
  d2 r4 |
  fis4( g) bes | \mBreak
  a4 a, r |
  r4 r8 cis d f |
  a2 r4 |
  \globalDonaATreVociHaydn
  \relative d {
    d8 d d d d d fis d |
    d8 d d d d d g d | \mBreak
    d8 d d d cis cis d d |
    a4 a8 b cis d e fis |
    g4 r e a |
    d,2 r2 |
    d4 r cis a' | \mBreak
    d,2~ d8 d fis a |
    d,8 d d d d d d d |
    d8 d d d d d d d |
    g2 a4 g |
    fis8( g a g) g( fis) e-. d-. | \mBreak
    d8 d d d d d d d |
    d8 d d d d d d d |
    g2 a4 a, |
    d8 a' fis d g,4 g' |
    fis4 d a' a, | \mBreak
    d8 a' fis d g,4 g' |
    fis d a' a, |
    d4 r4 gis4-.\p 8.-. 16-. |
    gis4-. e-. a2~ |
    a g\f |
    fis4 d a'2 |
    d,4 r gis4-.\p gis8. gis16 |
    gis4-. e-. a2~ |
    a2 r2 |
    d,4 r a' r |
    d, r r2 \bar "|."
  }
}

orgelRHNotenAgnusATreVociHaydn = \tempTranspose \relative c' {
  \globalAgnusATreVociHaydn

}

orgelLHNotenAgnusATreVociHaydn = \tempTranspose \relative c {
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
