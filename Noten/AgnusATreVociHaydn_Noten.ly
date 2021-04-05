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


ablaufzeileAgnusATreVociHaydn = {

}

globalAgnusATreVociHaydn = {
  \taktstil
  \accidentalStyle modern-voice
  \time 3/4
  \key d\minor
  \tempo "Adagio" 4 = 80
}

globalDonaATreVociHaydn = {
  \time 4/4
  \bar "||"
  \key d\major
  \tempo "Allegro" 4 = 120
}

violineINotenAgnusATreVociHaydn = \tempTranspose \relative a' {
  \globalAgnusATreVociHaydn
  a8\< a a a a a\! |
  a8([ b cis d]) e8.( f16) |
  g4 a,( g) |
  f8.( g16) a4 r |
  a8.( c32 b a8) a8 a a | \mBreak
  a8.( c32 b a8) a8 a a |
  a8.( c32 b a8) a8 a a |
  <a f>4 <a e> r |
  R2. |
  r4 g'8( d bes a) | \mBreak
  g4 r r |
  r g'8( ees c bes) |
  a4 r r |

  g( fis) g |
  d2. |
  a4 r r |
  \relative a' {
    a8\< a a a a a\! |
    a8( b cis d) e8. f16 |
    g4 a,4( g) |
    a8.( bes16) c4 r |
    g8.( bes32 a g8) g g g | \mBreak
    f8.( a32 g f8) f f f |
    g8.( a16 bes4) a |
    a4 g r |
  }
  \relative f'' {
    R2. |
    r4 f8( c a f) | \mBreak
    cis'4( g'4.) cis,8 |
    e16([ d cis d]) d4 r |
    ees8([ g bes g]) ees([ d]) |
    cis([ e g e]) cis([ d]) |
    d4.( e32[ d cis d]) e8([ d]) | \mBreak
    d4( cis) r4 |
  }
  \relative d'' {
    d8\< d d d f,8 f |
    e8(\! f g a) bes( g) |
    bes4( a) g |
    fis8.([ g16] a4) r8. c16 |
    c8 c bes bes g8 g | \mBreak
    d'4 cis r4 |
    a8.( c32 bes a8) a a a |
    a2 r4 |
  }
  \globalDonaATreVociHaydn
  \relative d'' {
    d8 d d a a16( d, fis a) d8\upbow a\upbow |
    d8 d d b b16( d, g b) d8\upbow b\upbow |
    d8 d a a g g fis fis |
    fis4( e8) b'8 cis d e fis |
    e4 r8 fis,8 g( fis) g( e) |
    fis( g a4) fis8( a d,4) |
    g4. a8 b([ a]) b(([ g]) |
    a([ b] c4) fis,8( a d,4) |

    b'8 b d8 d d d b b |
    a8([ cis]) d8 d d d a a  |
    a8([ g b g] fis4) e4 |
    fis8( g a g ) g8( fis) e8-. d-. |

    b'8 8 d8 8 8 cis8 d8([ b]) |
    a([ cis]) d8 8 8 a8 fis[ a] |
    a([ g]) fis8 8 8 8  e e |
    d8 a' fis d b'2:16 |
    a8 a a a  cis2:16 |
    d8 a fis d b'2:16 |
    a8 a fis fis g4:16 cis4:16 |
    d4 r e,4\p-. e8.-. e16-. |
    e4-. e-. e-. fis-. |
    g2 cis2:16\f | \mBreak
    d2:16 d4:16 cis4:16 |
    d4 r e,4\p-. e8.-. e16-. |
    e4-. e-. e-. fis-. |
    g2 g2:16\p |
    fis4 r cis'2:16\f |
    d4 r4 r2 \bar "|."
  }
}

violineIINotenAgnusATreVociHaydn = \tempTranspose \relative a' {
  \globalAgnusATreVociHaydn
  f8\< f f f f f\! |
  f8([ g a b]) cis8.( d16) |
  e4 e,2 |
  d8.( e16) f4 r |
  a8.( c32 b a8) cis,8 cis cis | \mBreak
  a'8.( c32 b a8) d,8 d d |
  a'8.( c32 b a8) g8 f f |
  d4 cis r4 |
  a'2 c4 |
  c16([ d a bes]) bes4 r |
  b2 d4 |
  d16([ ees b c]) c4 r |
  ees4( d) cis |
  d( c) bes |
  bes8. a16 g4( f) |
  e4 r r | \mBreak
  \relative f' {
    f8\< f f f f f\! |
    f8([ g a b]) cis8.( d16) |
    e4 f,4( e) |
    f8.( g16) a4 r |
    g8.( bes32 a g8) g g g | \mBreak
    f8.( a32 g f8) f f f |
    e8.( f16 g4) f |
    f4 e r |
  }
  \relative c'' {
    c4..( b32[ c d8]) bes |
    a16([ bes a bes]) c4 r |
    R2. |
    r4 a'8( f) cis( d) |
    ees8([ g, bes g]) ees([ d]) |
    cis([ e g e]) cis([ d]) |
    d4.( e32[ d cis d]) e8([ d]) | \mBreak
    d4( cis) r4 |
  }
  \relative f' {
    f8\< f f f d d |
    e8(\! d e f) g( e) |
    e2 e4 |
    d8.( e16 fis4) r8. d16 |
    d8 d d d d d | \mBreak
    g4 g r |
    r4 r8 g f d |
    cis2 r4 |
  }
  \globalDonaATreVociHaydn
  \relative fis' {
    fis8 fis fis fis a16( d, fis a) d8\upbow a\upbow |
    b8 b b b b16( d, g b) d8\upbow b\upbow |
    fis fis fis fis e e d d  |
    d4( cis8) b8 cis d e fis |
    e4 r8 d e( d) e( cis) |
    d( e fis4) fis8( a d,4) |
    e4. fis8 g([ fis]) g([ e]) |
    fis([ g] a4) fis8( a d,4) |

    g8 g b b b b g g |
    a8( g) fis fis fis fis fis fis |
    fis8([ e g e] d4) cis4 |
    fis8( g a g ) g8( fis) e8-. d-. |

    g8 8 b8 b b8[ a] b[ g] |
    a8( g) fis fis a a d, d |
    fis8([ e]) d8 d d d cis cis |
    d8 a' fis d d2:16 |
    d8 d fis fis e2:16 | \mBreak
    fis8 d' a fis d2:16 |
    d8 d d d e4:16 g4:16 |
    fis4 r4 d4\p-. d8.-. 16-. |
    d4-. d-. cis-. d-. |
    e2 a2:16\f | \mBreak
    a4:16 fis4:16 e2:16 |
    fis4 r d4\p-. d8.-. 16-. |
    d4-. d-. cis-. d-. |
    e2 e2:16\p |
    d4 r g2:16\f |
    fis4 r r2 |
    \bar "|."
  }
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
  f4 a r | \mBreak
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
    a2 cis,2 |
    d4 r a'\f r |
    d, r r2 \bar "|."
  }
}

orgelRHNotenAgnusATreVociHaydn = \tempTranspose \relative a' {
  \globalAgnusATreVociHaydn
  <a f d>2 <d a d,>4 |
  <d a f> <cis a e> r |
  <<
    \relative bes' {
      bes4 a g |
      f2
    }
    \\
    \relative e' {
      e2. |
      d2
    }
  >>
  \oneVoice
  r4
  \relative a' {
    <a e cis>2.~ |
    <a f d >~ |
    <a e cis>2~ <a f d>4 |
    <a f d>~ <a e cis> r4 |
  }
  <<
    \relative a' {
      fis4 g a |
      <bes g>2 r4 |
      b4 c d |
      c2
    }
    \\
    \relative d' {
      d2.~ |
      d2 r4 |
      g2.~ |
      <g ees>2
    }
  >>
  r4 |
  \relative a' {
    <a ees>4 <g d>~ <g cis> |
    <g d> <fis c> <g d bes> |
    q2. |
    <a g e>4 r r |
  }
  \relative a' {
    <a f d>2 <d a d,>4 |
    <d a f> <cis a e> r |
    <bes g e> <a f> <g e> |
    <a f>2 r4 |
    <c g e>2. |
    <c f, c> |
  }
  <<
    \relative c'' {
      c2.~ |
      c2 r4 |
      c2 bes4 |
      a4 r r |
    }
    \\
    \relative g' {
      <g e>8. <a f>16 <g e>4 <a f> |
      q <g e> r |
      <g e>4 f <g c,> |
      <f c>4 r r |
    }
  >>
  \relative a' {
    <a g cis,>2 <a e cis>4 |
  }
  <<
    \relative a' {
      a2 d4 |
      <ees bes>2 ees8 d |
      cis2 cis8 d |
      d4 e d |
      d4 cis r
    }
    \\
    \relative f' {
      d4 <f d> <a d,> |
      g2 a4 |
      <g e>2 <a d,>4 |
      g4 <b e,>~ <gis e> |
      <a f>~ <a e> r |
    }
  >>
  \relative d'' {
    <a f d>2 <f d a>4 |
    <e d bes>2 r4 |
  }
  <<
    \relative bes' {
      bes4 a g |
      fis2 r4 |
      c' bes g |
      d'4 cis r |
    }
    \\
    \relative e' {
      e2 e4 |
      d2 r4 |
      <a' d,> <g d> d |
      <a' g e>2 r4 |
    }
  >>
  \relative a' {
    r4 r8 <g e a,> <f d a> <a d, a> |
    <a e cis>2 r4 |
  }
  \globalDonaATreVociHaydn
  \relative a' {
    <a fis d>1~ |
    <b g d> |
    <a fis d>2 <g e a,>4 <fis d a> |
    <fis d a>~ <e cis a> r2 |
    <e cis a>4 r4 <g cis, a>4 <g e cis> |
    <fis d a>2 r2 |
    <a fis d>4 r <a g e> <a g cis,> |
    <a fis d>2 r2 |
    <b g d>1 |
    <a fis d> |
    <a fis>8 <g e> <b g> <g e> <fis d>4 <e cis> |
    <a d,>2 r2 |
    <b g d>1 |
    <a fis d> |
    <a fis>8 <g e> <fis d>2 <e cis>4 |
    <fis d a>4 r4 <g d b>2 |
    <a d, a>4~ <a fis d>~ <a e cis>2 |
    <a fis d>4 r <g d b>2 |
    <a d, a>4~ <a fis d>~ <a e cis>2 |
    <a fis d>4 r <e d>4-. q8.-. q16-. |
    q4-. <e d gis,> <e cis a>2~ |
    q2 <cis' a e>2 |
    <d a d,>4~ <d a fis>~ <d a e>~ <cis a e> |
    <d a fis> r4 <e, d>4-. q8.-. q16-. |
    q4-. <e d gis,> <e cis a>2~ |
    q2 <g e a,> |
    <fis d a>4 r <e cis>4 r |
    <fis d a>4 r r2 |
  }
  \bar "|."
}

orgelLHNotenAgnusATreVociHaydn = \tempTranspose \relative c {
  \globalAgnusATreVociHaydn
  \continuoNotenAgnusATreVociHaydn
}

metronomZeileAgnusATreVociHaydn = \drummode {
}
\include "defAgnusATreVociHaydn.ly"

%{Arbeitspartitur
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
Arbeitspartitur%}
