\version "2.22.0"

\include "../Noten/dynamicparams.ly"
\include "../Noten/formatangaben.ly"
\include "../Noten/mergerests.ly"
\include "../Noten/optionaltranspose.ly"
\include "../Noten/Bezeichnungen.ly"
\include "../Noten/generaldefinitions.ly"
\include "../Noten/mydrums2.ly"
\include "../Noten/drumdefinitions.ly"
\include "../Noten/mBreak.ly"

tempTranspose = #(define-music-function (music)
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
  \tempo "Allegro" 2 = 90
}


violineINotenBenedictusATreVociHaydn = \tempTranspose \relative g' {
  \globalBenedictusATreVociHaydn
  R2.*12
  g2 b8.([ g16]) |
  d'2 b4 |
  \relative d' {
    r8 \hptb d( \upbow \< e d e d) | \mBreak
    e4(\> d)\! d |
    a'8( g fis e d4) |
    g4 r r |
    r8 \hptb g( \upbow \< a g a g) |
    a4(\> g)\! g | \mBreak
    e'( d) c |
    c4( b4) r |
    r4 g\p g |
    r4 g g8 \breathe g'\f |
    g8.[ d16] d4. g8 | \mBreak |
    g8. c,16 c4 c |
    b4 e8([ d] c[ b]) |
    b4( a) r4 |
    c2 c4 |
    ais( b) r | \mBreak
    e2 e4 |
    cis4( d) r |
    b2 b4 |
    c4( d) e( |
    d8 e16 c) b4( a) | \mBreak
    g4 r4 r |
    g2 b8.([ g16]) |
    d'2 b4 |
    r8 a8 gis a gis a |
    g4( b) fis' |
    g4( e) cis | \mBreak
    d4 a r |
    r8 \hptb f(\upbow \< e f e f) |
    e4(\> g)\! f' |
    g4( e) cis |
    d4( a) a |
    bes2 4 |
    bes2 4|
    a4( c) bes |
    a( g) r |
    R2. | \mBreak
    r4 r bes4 |
    a4( c) bes |
    a4( g) g |
    g2. |
    f |

    ees2.( |
    d2) r4 |
    d2 d'4 |
    cis( d) b |
    a2( g4) |
    fis4 r r | \mBreak
    e2 d'4 |
    cis( d4) b |
    a2 a4 |
    d,4 r d |
    d8([ fis e d]) a'( g) |
    fis([ c' b a]) e'( d | \mBreak
    c4) c b8([ d]) |
    d8.( b16) a2\fermata |
  }
  \relative g' {
    r8 \hptb d( \upbow \< e d e d) |
    e4(\> d)\! d |
    a'8( g fis e) d4 |
    g4 r r |
    r8 \hptb g( \upbow \< a g a g) |
    a4(\> g)\! g |
    e'( d) c |
    c4( b4) b16( c d e) |
    f2 f4 | \mBreak
    dis4( e) a,16( b c d) |
    d2 d4 |
    b4( c) r8. e16 |
    e8([ g fis e]) d\upbow c\upbow |
    c8([ e d c]) b8\upbow a\upbow | \mBreak
    g2( fis4) |
    d'4 r r8 g, |
    e'8( g fis e) d( c) |
    c( e d c) b( a |
    b8 c16 a) g4( fis) | \mBreak
  }
  \globalHosannaBenedictusATreVociHaydn
  \relative g' { g8 g fis g d g b d | }
  \relative d'' {
    d4( b) a8 b16( c) d4 |
    e( c) g8 a16( b) c4 |
    c8\< 8 8 8  a8 a a a8 | \mBreak
    d4(\> b)\! a8 b16( c) d4 |
    d2 b4\<\upbow b\upbow |
    c4.(\> d8 e4)\! c8\upbow c\upbow |
    b d, g b a d, fis a |
    g8 g fis g d g b, b' |
    b8( f) g b d( g,) b d |
    f4\fermata r r4 d4 |
    d2 b4\upbow b\upbow |
    c4.( d8 e4) c8\upbow c\upbow | \mBreak
    b d, g b a d, fis a |
    g8 g fis g d g b, b' |
    b8( f) g b d( g,) b d |
    f4\fermata r r d4 |
    d2 b4\upbow b\upbow | \mBreak
    c4.( d8 e4) c8\upbow \upbow c |
    b8 b b b a a fis'8 fis |
    g8 d b g e8 a c e |
    g2:16 fis2:16 |
    <g b,>4 r r2 \bar "|."
  }
}

violineIINotenBenedictusATreVociHaydn = \tempTranspose \relative c' {
  \globalBenedictusATreVociHaydn
  R2.*12
  \tag #'partitur { R2.*2 }
  \tag #'midiausgabe { R2.*2 }
  \tag #'klavierauszug { R2.*2 }
  \tag #'chorpartitur { R2.*2 }
  \tag #'einzelstimme {
    <<
      { s2.*2 }
      \new CueVoice = "cuev2-1" \relative g' {
        \autoBeamOff
        g2^\sopranSoloMarkup b8.[ g16] |
        d'2 b4 |
      }
      \addlyrics { Be -- ne -- di -- ctus }
    >>
  }
  \relative d' {
    r8 \hptb b( \upbow \< c b c b) |
    c4(\> b)\! b |
    d2. |
    b4 r r |
    r8 \hptb e( \upbow \<f e f e) |
    f4(\> e)\! e | \mBreak
    c'4( b) a |
    a4( g) r |
    r4 d\p d |
    r e e |
    r g g | \mBreak
    r r e |
    d c'8( b a g) |
    g4( fis) r |
    e2 fis4 |
    fis( g) r |
    c2 c4 |
    ais( b) r4 |
    g4 d2 |
    e4( fis) g4( |
    b8 c16 a) g4( fis) |
    g4 r4 r |
    R2.*2 |
    r8 fis eis fis eis fis |
    e4( g) a4 |
    a4 r e |
    fis fis r |
    r8 \hptb a,(\upbow \< gis a gis a) |
    g4(\> bes) \! a' |
    e'4( cis) g |
    f2 f4 | \mBreak
    d2 4 |
    g4( f) e |
    f4( a) d4 |
    f4( e) r4 |
    R2. | \mBreak
  }
  \relative e' {
    r4 r e4 |
    f4( a) d,4 |
    f4( e) e |
    r4 <e a,> q |
    r4 <f a,> q | \mBreak
    r4 <ees a,> q |
    <bes d>2 r4 |
    r4 d2 |
    g4 a d |
    fis2( e4) |
    d4 r r | \mBreak
  }
  \relative e' {
    r4 e2 |
    a2 d,4 |
    fis2( e4) |
    d4 r4 d |
    d8([ fis e d]) a'( g) |
    d([ a' g fis]) c'( b | \mBreak
    a4) a g8( b) |
    b8.( g16) fis2\fermata |
  }
  \relative d' {
    r8 \hptb b( \upbow \< c b c b) |
    c4(\> b)\! b |
    d2. |
    b4 r r |
    r8 \hptb e( \upbow \<f e f e) |
    f4(\> e)\! e |
    c'4( b) a |
    a4( g) g16( a b c) |
    d2 d4 | \mBreak
    b4( c) fis,16( g a b) |
    gis2 gis4 |
    e2 r8. c'16 |
    c8([ e d c]) b\upbow a\upbow |
    a([ c b a]) g\upbow fis\upbow | \mBreak
    b2( a4) |
    g4 r4  r8 g |
    g2.( |
    fis4) g\upbow e'\upbow |
    d8([ e16 c] b4) a4 |
  }
  \globalHosannaBenedictusATreVociHaydn
  \relative g' { g8 g fis g d g b d | }
  \relative b' {
    b4( g) fis8 g16( a) b4 |
    c( e,) e8 fis16( g) a4 |
    a8\< a a a d,8 d fis fis8 | \mBreak
    g4(\> d)\! fis8 g16( a) b4 |
    g( fis) g\<\upbow g\upbow |
    g2\>( c4\!) a8\upbow a\upbow |
    b d, g b a d, fis a |
    g8 g fis g d g b, b' |
    b8( f) g b d( g,) b d |
    b4\fermata r r4 f |
    g2 g4\upbow g\upbow |
    g4.( f8 g4) e8\upbow e\upbow | \mBreak
    b' d, g b a d, fis a |
    g8 g fis g d g b, b' |
    b8( f) g b d( g,) b d |
    b4\fermata r r f4 |
    gis2 e4\upbow gis\upbow |
    e4.( gis8 a4) e8\upbow e\upbow |
    g8 g g g fis fis a a |
    g d' b g e a c e |
    b2:16 a2:16 |
    <d g,>4 r r2 \bar "|."
  }
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
    d b r d |
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
  c8( e d c) b( a) |
  a( c b a) g( fis) |
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
  <<
    \relative g' {
      g2.~ |
      g |
      a2~ a8 b16 c |
      b4 r r |
      c2.~ | \mBreak
      c |
      e4 d c\trill |
      b4
    }
    \\
    \relative d' {
      r8 d e d e d |
      e4( d) d |
      a'8 g fis e d4 |
      g r r |
      r8 <g e> <a f> <g e> <a f> <g e> | \mBreak
      <a f>4( <g e>) q |
      g b a |
      d,4
    }
  >>
  \relative g'' {
    r4 r |
    g8. d16 d4. g8 |
    g8. c,16 c4.
    <<
      {
        b8 |
        b16 a c a g4 fis |
        g
      }
      \\
      \relative g' {
        g8 |
        e4 r d |
        b
      }
    >>
  }
  r4 r |
  R2.*2 |
  <<
    \relative g' {
      g2.~ |
      g |
      a8 g fis e d4 |
      g4
    }
    \\
    \relative d' {
      r8 <d b> <e c> <d b> <e c> <d b> |
      <e c>4( <d b>) q |
      d2. |
      <d b>4
    }
  >>
  r4 r |
  <<
    \relative c'' {
      c2.~ |
      c |
      <c e,>4 <b d,> a~ |
      a4 g
    }
    \\
    \relative e' {
      r8 <g e> <a f> <g e> <a f> <g e> |
      <a f>4( <g e>) q | \mBreak
      g2 <d c>4~ |
      q~ <d b>
    }
  >>
  r4 |
  \relative g'' {
    g8.\f d16 d4. g8 |
    g8. e16 e4 r |
    r4 <d g,>4\p q |
    r r\f e |
    d4 c8 b a g |
    g4 fis16 e fis g a g a b |
    a g fis g a8-. fis d fis |
    fis4 g8 d b' g | \mBreak
    c16 b c b c8-. e d c |
    ais4 b16 a b c d c d e |
    f8 d b g f d |
    e4 fis g |
    b8 c16 a <g d b>4 <fis d a> | \mBreak
    <g d b>4 r r |
    R2.*2 |
    r8 fis8 eis fis eis fis |
    e4( g) fis |
    e4 r4 <g e> | \mBreak
    <fis d>4 d16 cis d e fis e fis g |
    a8 f e f e f |
    e4( g) f |
    e4 r <g e> |
    <f d> d16 cis d e f e f d | \mBreak
    g8 d g bes a bes |
    g bes f bes e, bes' |
    <a f>2 <bes d,>4 |
    <a f>( <g e>) a |
    bes8 d, g bes a bes | \mBreak
    g8 bes f bes e, bes' |
    <a f>2 <b d,>4 |
    <a f>( <g e>) r4 |
    r4 <e a,> q |
    r <f a,> q | \mBreak
    r4 <ees f,>4 q |
    <d f,>2 r4 |
  }
  r4
  <<
    \relative bes' {
      bes4 d |
      cis d b |
      a2 g4 |
      f4
    }
    \\
    \relative d' {
      d2 |
      g4 a d, |
      f2 e4 |
      d4
    }
  >>
  r4 r | \mBreak
  r
  <<
    \relative d'' {
      d4 b |
      cis d b |
      a2 g4 |
      fis4
    }
    \\
    \relative e' {
      e2 |
      a2 d,4 |
      fis2 e4 |
      d4
    }
  >>
  r4 r |
  R2.*3 |
  R2.\fermata |
  <<
    \relative g' {
      g2.~ |
      g |
      a8 g fis e d4 |
      g4
    }
    \\
    \relative d' {
      r8 <d b> <e c> <d b> <e c> <d b> |
      <e c>4( <d b>) q |
      d2. |
      <d b>4
    }
  >>
  r4 r |
  <<
    \relative c'' {
      c2.~ |
      c |
      <c e,>4 <b d,> a~ |
      a4 g
    }
    \\
    \relative e' {
      r8 <g e> <a f> <g e> <a f> <g e> |
      <a f>4( <g e>) q |
      g2 <d c>4~ |
      q~ <d b>
    }
  >>
  r4
  \relative b' {
    b16 c d c b8-. d-. g,-. b-. | \mBreak
    b4 c8 e d a |
    gis16 a b a gis8-. b-. e,-. b'-. |
  }
  <<
    \relative d'' {
      d4 c
    }
    \\
    \relative e' {
      e2
    }
  >>
  \relative c'' {
    r8. c16 |
    c8 e d c b a |
    a c b a g fis | \mBreak
    b2 a4 |
    g4 r r |
    e'8 g fis e d c |
    c e d c b a |
    b8 c16 a g4 fis | \mBreak
  }
  \globalHosannaBenedictusATreVociHaydn
  \relative b' {
    <g d b>4 r r q |
    <g d b>1 |
    <g e c>1 |
    <a d, c> |
    <g d b>1 |
  }
  <<
    \relative d'' {
      d2 b2 |
      c4. d8 <e c>4 c4 |
      <b g>2 <a fis> |
      <g d>1 |
      <g f d> |
    }
    \\
    \relative g' {
      g4 fis g2 |
      g2. <a e>4 |
      d,1 |
      b1 |
      b1 |
    }
  >>
  \relative b' {
    r4\fermata r r2 |
    <b g d>1 |
    <c g e>4. <d g, f>8 <c g>4 <c a e> |
    <b g d>2~ <a fis d> |
    <g d b>1 |
    <b f d>1 |
    r4\fermata r4 r2 |
    <d gis, e>2 <d b e,>4 <d gis, e>4 |
    <c a e>4. <b gis d>8 <a e c>4 <c a e> |
    <b g d>2 <a fis d> |
    <g d>2 <c a e>2 |
    <b g d> <a fis c> |
    <g d b>4 r r2 \bar "|."
  }
}

orgelLHNotenBenedictusATreVociHaydn = \tempTranspose \relative c {
  \globalBenedictusATreVociHaydn
  <<
    \relative b {
      r8 b c b c b |
      c4( b) r |
    }
    \\
    \relative g {
      g2.~ |
      g2 b8 g |
    }
  >>
  fis8 e d4 fis |
  g8 d g b, d g, |
  c2.~ | \mBreak
  c4 g' e |
  c d d' |
  g,8 d g d b d |
  g,4 r <d'' b>4 |
  <e c>4 r fis,8 g | \mBreak
  c8 a d4 d, |
  g4 d b |
  g4 r r |
  R2. |
  \relative g {
    g2.~ \mBreak
    g2 b8 g |
    fis8 e d4 fis |
    g8 d g b, d g, |
    c2.~ |
    c2.~ | \mBreak
    c4 d d |
    g8 d g d b d |
    g,4 <d'' b>\f q |
    r <e c> q |
    r b b | \mBreak
    r4 <c a> <a fis> |
    <b g>4 r c,8 cis |
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
    <<
      \relative a {
        r8 a gis a gis a |
        g4( b) a4 |
        a4
      }
      \\
      \relative d {
        d2.~ |
        d |
        cis4
      }
    >>
  }
  \relative a, {
    r4 a4 |
    d4 r r
  }
  <<
    \relative a {
      r8 a gis a gis a |
      g4( bes) a4 |
      a4
    }
    \\
    \relative d {
      d2.~ |
      d |
      cis4
    }
  >>
  \relative a, {
    r4 a |
    d4 r r | \mBreak
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
    c8( e d c) b( a) |
    a( c b a) g( fis) |
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
      \tempo 4 = 110
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
