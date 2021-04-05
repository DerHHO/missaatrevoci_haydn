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



ablaufzeileGloriaATreVociHaydn = {
  
}

globalGloriaATreVociHaydn = {
  \taktstil
  \accidentalStyle modern-voice
  \key d\major
  \time 4/4
}

globalQuiTollisGloriaATreVociHaydn = {
  \key d\minor
  \time 3/4
  \bar "||"
  \tempo "Andante" 4 = 80
}

globalQuoniamGloriaATreVociHaydn = {
  \key d\major
  \time 4/4
  \bar "||"
  \tempo "Allegro" 2 = 80
}

violineINotenGloriaATreVociHaydn = \tempTranspose \relative d'' {
  \globalGloriaATreVociHaydn
  d2 \f fis, |
  g4 b r2 |
  e,4 \p e fis fis |
  e r4 r2 | \mBreak
  b'2 \f cis, |
  d4 fis g b |
  a8 a a a  cis cis cis cis |
  d8 fis8 a g fis e d cis |

  d4 fis8([ e]) d4 d8 cis |
  b d fis e d cis b ais |
  b4 d8( cis) b4 b8 a |
  g b d cis b a g fis |

  b4( a g) fis |
  e4 r fis\upbow fis\upbow |
  g2( fis) |
  e2 r2 |

  d'2 \f fis,4\upbow fis\upbow |
  g4 b r2 |
  e,4 \p e fis4 fis |
  e4 r4 r2 |
  b'4. \f b8\upbow cis,2\upbow |
  d4 fis8\upbow fis\upbow g4 b8\upbow b\upbow |
  a8 a a a cis cis cis cis |
  d8 d a fis a4 a |

  b2 g |
  fis4. a8 a8 d a fis
  b2 g4\upbow g\upbow |
  fis4.( a8) a8 fis a d |

  bes2 bes4 bes |
  bes4( a) a a |
  a1 |
  a |
  bes2 bes |
  bes4( a) a4 a |
  a2 a |
  a2. r4 |

  d4( fis8[ e] d4) d |
  d8 fis a g fis e d cis |
  d4.( cis8 b4) b4 |
  b8 d fis e d cis b a |
  b8 fis g a g b d cis |
  b4( a) b e8 e |
  d8 d d d  cis cis cis cis |
  d8 d fis e d cis b a |

  b8 fis g a g b d cis |
  d4 d d g8 g |
  fis8 fis fis fis e cis' cis cis |
  d4 r4 r2 |
  \globalQuiTollisGloriaATreVociHaydn
  \relative bes' {
    bes8( c) c( d) r4 |
    r4 f,8( g) g( a) |
    r4 bes8( c) c( d) |
    d4( f) r |
    r4 g,8( a) a( bes) | \mBreak
    cis2 cis4 |
    d2 a4 |
    g4( f2) |
    e4 e8( f) f( g) |
    r4 e8( f) f( g) | \mBreak
    r4 f8( g) g( a) |
    d4( c) r4 |
    r4 a8( bes) bes( c) |
    a2 a4 |
    bes( c) d8( bes) | \mBreak
    a8( bes) a4( g) |
    f4 a8( bes) bes( c) |
    r4 a8( bes) bes( c) |
    r4 c8( d) d( e) |
    r4 cis8( d) d( e) | \mBreak
    r4 f8( g) g( a) |
    d,4( ees) d |
    cis( d) bes |
    a2( cis4) |

  }
  \globalQuoniamGloriaATreVociHaydn
  \relative d'' {
    d8\< fis, d fis a a fis a |
    d2\f fis, |
    g4 b r2 |
    e,4 \p e fis fis |
    fis( e) r2 |
    b'2 \f cis, |
    d4.( e8 fis4) g |
    a8 a a a  cis cis e e  |
    fis8 fis8 a g fis e d cis |
    b2 g4 g |
    fis4.( a8 fis8) d' a fis |
    b2 g |
    fis4.( a8) a8 d b\upbow g\upbow |
    c2 c |
    b4.( a8 g4) a |
    b4 d8\upbow d\upbow e8 e fis fis
    g4 cis, r2 |
    d4( fis8[ e] d4) d4 |
    b8 d fis e d cis b ais |
    b4( d8[ cis] b4) b |
    g8 b d cis b a g fis |
    b2 b |
    a4( cis d) e |
    d8 d d d cis cis e g |
    fis8 d fis e d cis b a |
    b8 fis g a g b d cis |
    d4 d d g8 g\upbow |
    fis8 fis fis fis e cis' cis cis |
    d4 r4 r2 |
    \bar "|."
  }
}

violineIINotenGloriaATreVociHaydn = \tempTranspose \relative d'' {
  \globalGloriaATreVociHaydn
  d2\f fis, |
  g4 b r2 |
  cis,4\p cis d d |
  cis r4 r2 | \mBreak
  b'2\f cis, |
  d4 fis g d |
  fis8 fis fis fis e e g g |
  fis8 fis a g fis e d cis |

  d4 r r d8 cis |
  b d fis e d cis b ais |
  b4 r r b8 a |
  g b d cis b a g fis' |

  g4( fis e) d |
  cis4 r d\upbow d\upbow |
  e2( d) |
  cis2 r |

  d'2\f fis,4\upbow fis\upbow |
  g4 b r2 |
  cis,4 \p 4 d4 d |
  cis r4 r2 |
  b'4.\f b8\upbow cis,2\upbow |
  d4 fis8\upbow fis\upbow g4 d8\upbow d\upbow |
  fis8 fis fis fis e e g g |
  fis8 d' a fis fis4 fis |

  g2 e |
  d4. fis8 fis8 d' a fis
  g2 e4\upbow e\upbow |
  d4.( fis8) fis8 fis a d |

  R1 |
  \relative e' {
    e2 cis4 e |
    f4( e8[ f]) g4 f |
    f2( e) |
    R1 |
    e2 cis4\upbow e\upbow |
    f4( e8[ f] g4) f |
    f4.( e8) e4 r4

    fis4( d4 a') fis |
    d8 fis a g fis e d cis |
    fis2. d4 |
    b8 d fis e d cis b a |
    d8 fis g a g b d cis |
    d4( d) d g8 g |
    fis8 fis fis fis e e e e |
    d8 d fis e d cis b a |

    d8 fis, g a g b d cis |
    b4 a b e8 e |
    d8 d d d  cis e e e |
    fis4 r r2 |
  }
  \globalQuiTollisGloriaATreVociHaydn
  \relative g' {
    g8( a) a( bes) r4 |
    r4 d,8( e) e( f) |
    r4 g8( a) a( bes) |
    f4( b) r |
    r4 e,8( f) f( g) | \mBreak
    g2 bes4 |
    a4( g) f4 |
    e4( d2) |
    cis4 cis8( d8) d( e) |
    r4 cis8( d) d( e) | \mBreak
    r4 d8( e) e( f) |
    bes4( a) r4 |
    r4 f8( g) g( a) |
    c,4( f) e4 |
    d4( f) f4 | \mBreak
    f4 f( e) |
    f4 f8( g) g( a) |
    r4 f8( g) g( a) |
    r4 g8( b) b( c) |
    r4 a8( b) b( cis) | \mBreak
    r4 d8( e) e( f) |
    a,4( bes) a |
    g( a) d, |
    f4( e2) |

  }
  \globalQuoniamGloriaATreVociHaydn
  \relative d' {
    \globalQuoniamGloriaATreVociHaydn
    d8\< fis d fis a a fis a |
    d2\f fis, |
    g4 b r2 |
    cis,4\p cis d d |
    d( cis) r2 |
    b'2\f cis, |
    d4.( e8 fis4) g |
    fis8 fis fis fis e e g g |
    a8 fis a g fis e d cis |
    g'2 e4 e |
    d4.( fis8 fis8) d' a fis
    g2 e |
    d4.( fis8) fis8 d' b\upbow g\upbow |
    a2 a |
    d,4. d8 d4 fis |
    g4 a8\upbow a\upbow g8 g a a |
    a4 g r2 |
    R1 |
    b8 d fis e d cis b ais |
    b8 r8 r4 r2 |
    g8 b d cis b a g fis |
    g4( fis) e( d) |
    e4( g fis) b |
    fis8 fis fis fis  e e g cis
    d8 d fis e d cis b a |
    d8 fis, g a g b d cis |
    b4( a b) e8\upbow e\upbow |
    d8 d d d  cis e e e |
    fis4 r r2 |
    \bar "|."
  }
}

sopranNotenGloriaATreVociHaydn = \tempTranspose \relative d'' {
  \globalGloriaATreVociHaydn
  \autoBeamOff
  d2-\tweak X-offset #-3 \f fis, |
  g4 b r2 |
  e,4-\tweak X-offset #-3 \p e fis fis |
  e r4 r2 | \mBreak
  b'2-\tweak X-offset #-3 \f cis, |
  d4 fis g b |
  a2( cis) |
  d4 r r d^\soloMarkup | \mBreak
  d4 fis8[ e] d4 d^\tuttiMarkup |
  d4. d8 d4 b8 b |
  b4 d8 cis b4 b8^\tuttiMarkup b |
  b4 b8 b b4 b8 b | \mBreak
  b4( a g) fis |
  e4 r fis fis |
  g2 fis |
  e2 r2 | \mBreak
  d'2-\tweak X-offset #-3 \f fis,4 fis |
  g4 b r2 |
  e,4-\tweak X-offset #-3 \p e8 e fis4 fis |
  e4 r4 r2 | \mBreak
  b'4.-\tweak X-offset #-3 \f b8 cis,2 |
  d4 fis8 fis g4 b8 b |
  a2( cis) |
  d4 r a a | \mBreak
  b2 g |
  fis4. a8 a4 r |
  b2 g4 g |
  fis4.( a8) a4 r |
  bes2 bes4 bes |
  bes4 a a a |
  a1 |
  a | \mBreak
  bes2 bes |
  bes4( a) a4 a |
  a2 a |
  a2. r4 | \mBreak
  d4( fis8[ e]) d4 d |
  d2 d |
  d4.( cis8 b4) b4 |
  b4. b8 b2 | \mBreak
  b2 b |
  b4 a b e8 e |
  d2( cis) |
  d4 r r2 | \mBreak
  b2 b |
  b4 a b e8 e |
  d2( cis) |
  d4 r r2 |
  \globalQuiTollisGloriaATreVociHaydn
  \relative d'' {
    r4 r d4^\soloMarkup |
    d4 a r8. d16 |
    d4 bes r |
    d f e |
    d cis r | \mBreak
    cis2^\tuttiMarkup cis4 |
    d2 a4 |
    g4( f2) |
    e4 r bes'4^\soloMarkup |
    bes4 e, r8. a16 | \mBreak
    a4 d, r |
    d' c bes |
    bes a r |
    a4^\tuttiMarkup a a |
    bes4 c bes8 bes | \mBreak
    a8 bes a4( g) |
    f4 r c'^\soloMarkup |
    c2. |
    c2 c4 |
    cis e a, | \mBreak
    f'4 d r |
    d4(^\tuttiMarkup ees) d4 |
    cis( d) bes |
    a2( cis,4) |
    \globalQuoniamGloriaATreVociHaydn
    d4 r r2 |
  }
  \relative d'' {
    d4.-\tweak X-offset #-3 \f d8 fis,4 4 |
    g4 b r2 |
    e,2-\tweak X-offset #-3 \p fis4 fis | \mBreak
    fis4 e r2 |
    b'2-\tweak X-offset #-3 \f cis,4 4 |
    d4. e8 fis4 g |
    a4 a cis cis | \mBreak
    d4 r r a4 |
    b2 g4 g |
    fis4. a8 fis4 r |
    b2 g | \mBreak
    fis4.( a8) a4 b |
    c2 c |
    b4. a8 g4 a |
    b4 d8 d cis4 d | \mBreak
    e4 a, r2 |
    d4(^\soloMarkup fis8[ e] d4) d4 |
    d2^\tuttiMarkup d |
    b4(^\soloMarkup d8[ cis] b4) b | \mBreak
    b2^\tuttiMarkup b |
    b2 b |
    a4( cis d) e |
    d2( cis) | \mBreak
    d2 r |
    b2 b |
    b4( a b ) e4 |
    d2( cis) |
    d2 r \bar "|."
  }
}

sopranTextGloriaATreVociHaydn = \lyricmode {
  Et in ter -- ra
  pax ho -- mi -- ni -- bus,
  bo -- næ, bo -- næ vo -- lun -- ta -- tis.
  Lau -- da -- mus te,
  lau -- da -- mus te.
  Be -- ne -- di -- ci -- mus te,
  be -- ne -- di -- ci -- mus te.
  Ad -- o -- ra -- mus te, ad -- o -- ra -- mus te.
  Glo -- ri -- fi -- ca -- mus,
  glo -- ri -- fi -- ca -- mus te.
  Gra -- ti -- as, gra -- ti -- as a -- gi -- mus ti -- bi
  pro -- pter ma -- gnam glo -- ri -- am,
  glo -- ri  -- am tu -- am,
  Do -- mi -- ne De -- us, Rex coe -- le -- stis,
  De -- us Pa -- ter om -- ni -- po -- tens.
  Do -- mi -- ne Fi -- li u -- ni -- ge -- ni -- te,
  Je -- su Chri -- ste, Do -- mi -- ne De -- us,
  A -- gnus De -- i, Fi -- li -- us Pa -- tris.

  Qui tol -- lis, qui tol -- lis pec -- ca -- ta mun -- di,
  mi -- se -- re -- re no -- bis.
  Qui tol -- lis, qui tol -- lis pec -- ca -- ta mun -- di,
  su -- sci -- pe de -- pre -- ca -- ti -- o -- nem no -- stram.
  Qui se -- des ad dex -- te -- ram Pa -- tris,
  mi -- se -- re -- re no -- bis.

  Quo -- ni -- am tu so -- lus,
  tu so -- lus san -- ctus.
  Tu so -- lus Do -- mi -- nus,
  tu so -- lus Do -- mi -- nus,
  tu so -- lus Al -- tis -- si -- mus,
  Je -- su Chri -- ste.
  Cum San -- cto Spi -- ri -- tu
  in glo -- ri -- a De -- i Pa -- tris.
  A -- men, a -- men, a -- men,
  a -- men, a -- men, __ a -- men, a -- men,
  a -- men, a -- men, a -- men.
}

altNotenGloriaATreVociHaydn = \tempTranspose \relative d'' {
  \globalGloriaATreVociHaydn
  \autoBeamOff
  d2-\tweak X-offset #-3 \f fis, |
  g4 b r2 |
  cis,4-\tweak X-offset #-3 \p cis d d |
  cis r4 r2 | \mBreak
  b'2-\tweak X-offset #-3 \f cis, |
  d4 fis g d |
  fis2( e) |
  fis4 r r2 | \mBreak
  r2 r4 fis |
  fis4. fis8 fis4 r |
  r2 r4 d8 d |
  d4 d8 d d4 d8 d | \mBreak
  g4( fis e) d |
  cis4 r d d |
  e2 d |
  cis2 r | \mBreak
  d'2-\tweak X-offset #-3 \f fis,4 fis |
  g4 b r2 |
  cis,4-\tweak X-offset #-3 \p 8 8 d4 d |
  cis r4 r2 | \mBreak
  b'4.-\tweak X-offset #-3 \f b8 cis,2 |
  d4 fis8 fis g4 d8 d |
  fis2( e) |
  fis4 r fis fis | \mBreak
  g2 e |
  d4. fis8 fis4 r |
  g2 e4 e |
  d4.( fis8) fis4 r | \mBreak
  R1 |
  e2 cis4 e |
  f4 e8[ f] g4 f |
  f2 e | \mBreak
  R1 |
  e2 cis4( e) |
  f4( e8[ f]) g4 f |
  f4. e8 e4 r4 \mBreak
  fis4( d4) a' fis |
  fis2 fis |
  fis2. d4 |
  d4. d8 d2 | \mBreak
  d2 d |
  d4 d d g8 g |
  fis2( e) |
  d4 r r2 | \mBreak
  d2 d |
  d4 d d g8 g |
  fis2( e) |
  fis4 r r2 | \mBreak
  \globalQuiTollisGloriaATreVociHaydn
  R2.*5 | \mBreak
  g2 bes4 |
  a4( g) f4 |
  e4( d2) |
  cis4 r r |
  R2. | \mBreak
  R2.*3 |
  c4 f e |
  d4 f f8 f | \mBreak
  f4 f e |
  f r r |
  R2.*3 | \mBreak
  R2. |
  a4( bes) a |
  g( a) d, |
  f4( e2) |
  \globalQuoniamGloriaATreVociHaydn
  \relative d'' {
    d4 r r2 |
    d4.-\tweak X-offset #-3 \f d8 fis,4 4 |
    g4 b r2 |
    cis,2-\tweak X-offset #-3 \p d4 4 | \mBreak
    fis4 e r2 |
    b'2-\tweak X-offset #-3 \f cis,4 4 |
    d4. e8 fis4 g |
    a4 a e e | \mBreak
    fis4 r4 r fis |
    g2 e4 e |
    d4. fis8 fis4 r |
    g2 e | \mBreak
    d4.( fis8) fis4 g |
    a2 a |
    d,4. d8 d4 fis |
    g4 a8 a g4 <a fis> | \mBreak
    a4 g r2 |
    R1 |
    fis2 fis |
    R1 | \mBreak
    d2 d |
    g4( fis) e( d) |
    e4( g fis) b |
    fis2( e) | \mBreak
    d2 r |
    d d |
    d2. g4 |
    fis2( e) |
    fis2 r |
    \bar "|."
  }
}

altTextGloriaATreVociHaydn = \lyricmode {
  Et in ter -- ra
  pax ho -- mi -- ni -- bus
  bo -- næ, bo -- næ vo -- lun -- ta -- tis.
  Lau -- da -- mus te.
  Be -- ne -- di -- ci -- mus te.
  Ad -- o -- ra -- mus te,
  ad -- o -- ra -- mus te.
  Glo -- ri -- fi -- ca -- mus,
  glo -- ri -- fi -- ca -- mus te.
  Gra -- ti -- as, gra -- ti -- as a -- gi -- mus ti -- bi
  pro -- pter ma -- gnam glo -- ri -- am,
  glo -- ri  -- am tu -- am,
  Do -- mi -- ne De -- us, Rex coe -- le -- stis,
  De -- us Pa -- ter om -- ni -- po -- tens.
  Do -- mi -- ne Fi -- li u -- ni -- ge -- ni -- te,
  Je -- su Chri -- ste, Do -- mi -- ne De -- us,
  A -- gnus De -- i, Fi -- li -- us Pa -- tris.

  Mi -- se -- re -- re no -- bis.
  Su -- sci -- pe de -- pre -- ca -- ti -- o -- nem no -- stram.
  Mi -- se -- re -- re no -- bis.

  Quo -- ni -- am tu so -- lus,
  tu so -- lus san -- ctus.
  Tu so -- lus Do -- mi -- nus,
  tu so -- lus Do -- mi -- nus,
  tu so -- lus Al -- tis -- si -- mus,
  Je -- su Chri -- ste.
  Cum San -- cto Spi -- ri -- tu
  in glo -- ri -- a De -- i Pa -- tris.
  A -- men,
  a -- men, a -- men, __ a -- men, a -- men,
  a -- men, a -- men, a -- men.
}

bassNotenGloriaATreVociHaydn = \tempTranspose \relative d' {
  \globalGloriaATreVociHaydn
  \autoBeamOff
  d2-\tweak X-offset #-3 \f fis, |
  g4 b r2 |
  a4-\tweak X-offset #-3 \p a gis gis |
  a4 r r2 | \mBreak
  b2-\tweak X-offset #-3 \f cis, |
  d4 fis g g |
  a1 |
  d,4 r r2 | \mBreak
  r2 r4 d |
  b4. b'8 b4 r |
  r2 r4 b8 a |
  g4 g8 g g4 g8 fis | \mBreak
  e4( fis g) gis |
  a1~ |
  a~ |
  a2 r | \mBreak
  d2-\tweak X-offset #-3 \f fis,4 fis |
  g4 b r2 |
  a4-\tweak X-offset #-3 \p  8 8 gis4 gis |
  a4 r r2 | \mBreak
  b4.-\tweak X-offset #-3 \f b8 cis,2 |
  d4 fis8 fis g4 g8 g |
  a1 |
  d4 r d d | \mBreak
  d,2 d |
  a'4. d,8 d4 r |
  d2 d4 d |
  a'4.( d,8) d4 r | \mBreak
  R1 |
  cis2 a4 cis |
  d4 cis8[ d] e4 d |
  a'2 a, | \mBreak
  R1 |
  cis2 a4( cis) |
  d4( cis8[ d]) e4 d |
  a'4. a,8 a4 r | \mBreak
  d4( a'8[ g]) fis8[ e] d4 |
  d2 d |
  b4( fis'8[ e] d[ cis]) b4 |
  b4. b8 b2 | \mBreak
  g'2 g |
  g4 fis g e8 e |
  a1 |
  b4 r4 r2 | \mBreak
  g2 g |
  g4 fis g e8 e |
  a1 |
  d,4 r r2 | \mBreak
  \globalQuiTollisGloriaATreVociHaydn
  \relative bes {
    R2.*5 | \mBreak
    bes4( a) g |
    f4( e) d |
    g2( gis4) |
    a4 r r |
    R2. | \mBreak
    R2.*3 |
    f4 d c |
    bes a bes8 d | \mBreak
    c4 c' c |
    f,4 r r |
    R2.*3 | \mBreak
    R2. |
    f4( g) f |
    e( f) g |
    a2. |
    \globalQuoniamGloriaATreVociHaydn
    d,4 r r2 |
  }
  \relative d' {
    d4.-\tweak X-offset #-3 \f d8 fis,4 4 |
    g4 b r2 |
    a2-\tweak X-offset #-3 \p gis4 4 | \mBreak
    a4 a r2 |
    b2-\tweak X-offset #-3 \f cis,4 4 |
    d4. e8 fis4 g |
    a4 a a a, | \mBreak
    d4 r r d4 |
    d2 d4 d |
    a'4. d,8 d4 r |
    d2 d | \mBreak
    a'4.( d,8) d4 r |
    r4 fis4 d fis |
    g4 a b a |
    g4 fis8 fis e4 d | \mBreak
    cis4 e r2 |
    R1 |
    b'2 b |
    R1 | \mBreak
    g2 g |
    e4( d) cis( b) |
    cis( a d) g |
    a1 | \mBreak
    b2 r |
    g g |
    g4( fis g) e |
    a1 |
    d,2 r2 \bar "|."
  }
}

bassTextGloriaATreVociHaydn = \lyricmode {
  Et in ter -- ra
  pax ho -- mi -- ni -- bus
  bo -- næ, bo -- næ vo -- lun -- ta -- tis.
  Lau -- da -- mus te.
  Be -- ne -- di -- ci -- mus te.
  Ad -- o -- ra -- mus te. __
  Glo -- ri -- fi -- ca -- mus,
  glo -- ri -- fi -- ca -- mus te.
  Gra -- ti -- as, gra -- ti -- as a -- gi -- mus ti -- bi
  pro -- pter ma -- gnam glo -- ri -- am,
  glo -- ri  -- am tu -- am,
  Do -- mi -- ne De -- us, Rex coe -- le -- stis,
  De -- us Pa -- ter om -- ni -- po -- tens.
  Do -- mi -- ne Fi -- li u -- ni -- ge -- ni -- te,
  Je -- su Chri -- ste, Do -- mi -- ne De -- us,
  A -- gnus De -- i, Fi -- li -- us Pa -- tris.

  Mi -- se -- re -- re no -- bis.
  Su -- sci -- pe de -- pre -- ca -- ti -- o -- nem no -- stram.
  Mi -- se -- re -- re no -- bis.

  Quo -- ni -- am tu so -- lus,
  tu so -- lus san -- ctus.
  Tu so -- lus Do -- mi -- nus,
  tu so -- lus Do -- mi -- nus,
  tu so -- lus Al -- tis -- si -- mus,
  Je -- su Chri -- ste.
  Cum San -- cto Spi -- ri -- tu
  in glo -- ri -- a De -- i Pa -- tris.
  A -- men,
  a -- men, a -- men, __ a -- men, a -- men,
  a -- men, a -- men, a -- men.
}

continuoNotenGloriaATreVociHaydn = \tempTranspose \relative d' {
  \globalGloriaATreVociHaydn
  d2 \f fis, |
  g4 b r2 |
  a4 r gis gis |
  a r r2 | \mBreak
  b2 cis, |
  d4 fis g2 |
  a2 a, |
  d8 fis a g fis e d cis | \mBreak
  d8 fis a g fis e d cis |
  b d fis e d cis b ais |
  b d fis e d cis b a |
  g b d cis b a g fis | \mBreak
  e8 e' fis, fis' g, g' gis, gis' |
  a4 a,8 cis a'2 |
  a4 a,8 cis a'2 |
  a,2 r | \mBreak
  d'2\f fis, |
  g4 b r2 |
  a4\p r gis gis |
  a4 r4 r2 | \mBreak
  b2 cis, |
  d4 fis g2 |
  a a, |
  d8 d' a fis d d' a fis | \mBreak
  d d' b g d d' b g |
  d8 d' a fis d d' a fis |
  d d' b g d d' b g |
  d d' a fis d fis a d | \mBreak
  g,2 r |
  cis,2 a4 cis |
  d4 cis8[ d] e4 d |
  a'2 a, | \mBreak
  R1 |
  cis2 a4 cis |
  d4 cis8 d e4 d |
  a'2 a,4 r | \mBreak
  d8 fis a g fis e d cis |
  d fis a g fis e d cis |
  b d fis e d cis b ais |
  b d fis e d cis b a | \mBreak
  g4 r r2 |
  r2 r4 e'4 |
  a8 a, d fis a a, cis e |
  b d fis e d cis b a | \mBreak
  g4 r r2 |
  r2 r4 e' |
  a8 a, d fis a4 a, |
  d4 r r2 |
  \globalQuiTollisGloriaATreVociHaydn
  \relative g {
    g4 g, r |
    r d'' d, |
    r g g, |
    a gis2 |
    a2 r4 | \mBreak
    bes'4( a) g |
    f( e) d |
    g2 gis4 |
    a4 a, r |
    r a' a, | \mBreak
    r4 d' d, |
    c2 e4 |
    f4 f, r |
    f' d c |
    bes a bes8 d | \mBreak
    c2. |
    f4 f, r |
    f' f, r |
    e' e, r |
    a' a, r | \mBreak
    d'4 d, r |
    f( g) f |
    e( f) g |
    a2. |
    \globalQuoniamGloriaATreVociHaydn
    d,8\f fis d fis a a fis a |
  }
  \relative d' {
    d2 fis, |
    g4 b r2 |
    a4\p r gis gis | \mBreak
    a2 r |
    b2 cis, |
    d4. e8 fis4 g |
    a2 a4 a, | \mBreak
    d8 d' a fis d d' a fis |
    d d' b g d d' b g |
    d8 d' a fis d d' a fis |
    d d' b g d d' b g | \mBreak
    d d' a fis d d' b g |
    r4 fis d fis |
    g4 a b a |
    g fis e d | \mBreak
    cis4 e r2 |
    d8\p fis a g fis e d cis |
    b\f d fis e d cis b ais |
    b\p d fis e d cis b a | \mBreak
    g8\f b d cis b a g fis |
    e'4 d cis b |
    cis a d g |
    a8 a, d fis a a, cis e | \mBreak
    b8 d fis e d cis b a |
    g4 r r2 |
    g'4( fis g) e |
    a8 a, d fis a a, cis e |
    d2 r2 \bar "|."
  }
}


orgelRHNotenGloriaATreVociHaydn = \tempTranspose \relative d'' {
  \globalGloriaATreVociHaydn
  d2 \f fis, |
  g4 b r2 |
  <e, cis>4 r <fis d>2 |
  <e cis>4 r r2 | \mBreak
  b'2 cis, |
  d4 fis g4~ <g d b>~ |
  <fis d a>2~ <g cis, a> |
  <fis d a>4 r4 r2 | \mBreak
  r2 r4 <d' a fis> |
  <d b fis>2 r |
  r2 r4 <b fis d> |
  <b g d>2. q4 |
  <b g> <a fis> <g e> <fis d> |
  <e cis>2 <fis d> |
  <e cis> <fis d> |
  <e cis> r2 | \mBreak
  \relative d'' {
    d2 fis,4 fis |
    g4 b r2 |
    <e, cis>4 r <fis d>2 |
    <e cis>4 r r2 |
    b'4. b8 cis,2 |
    d4 fis g <b g d> |
    <a fis d>2 ~ <a g cis,>~ |
    <a fis d>2. q4 |
    <g d b>1~ |
    <a fis d>~ |
    <g d b>1~ |
    <a fis d>2. r4 | \mBreak
    
    <<
      { 
        bes1~ |
        bes4( a) a2 |
        a1~ |
        a1 |
        bes1 
        bes4( a) a2 |
        a1~ |
        a2. 
      }
      \\
      \relative e' {
        s1 |
        <g e>2 <e cis>4 <g e> |
        <f d>4 e8 <f d> <g cis,>4 <f d> |
        <f d>2 <e cis> |
        s1 |
        <g e>2 <e cis>4 <g e> |
        <f d>4 e8 <f d> <g cis,>4 <f d> |
        <f d>2 <e cis>4 
      }
    >>
  }
  r4 |
  \relative d'' {
    <a fis d>1~ |
    q1~ |
    <b fis d>~ |
    q1~ |
    <b g d>4 r4 r2 |
    r2 r4 <e b g> |
    <d a fis>2 <cis g e> |
    <d fis, d>4 r4 r2 |
    <b g d>4 r r2 |
    r2 r4 <e b g> |
    <d a fis>2 <cis a g> |
    <d a fis>4 r4 r2 |
  }
  \globalQuiTollisGloriaATreVociHaydn
  \relative bes' {
    <bes g>8( <c a>) q( <d bes>) r4 |
    r4 <f, d>8( <g e>) q( <a f>) |
    r4 <bes g>8( <c a>) q( <d bes>) |
    <d a f>4 <d b>2 |
    <d a f>4~ <cis a e> r |
  }
  <<
    \relative cis'' {
      c2. |
      d2 a4 |
      g4 f2 |
      e2
    }
    \\
    \relative g' {
      g2 bes4 |
      a4 g f |
      e4 d2 |
      cis2
    }
  >>
  r4 |
  \relative e' {
    r4 <e cis>8( <f d>) q( <g e>) |
    r4 <f d>8( <g e>) q( <a f>) |
    <d bes e,>4 <c a> <bes g c,> |
    <bes g c,>~ <a f c> r |
    <a f c>4~ <a f d>~ <a e> |
    <bes f d> <c f, c> <bes f d>8 <bes f> |
    <a f c>2~ <g e c>4 |
    <a f c>2 r4 |
    q2 r4 |
    <c g c,>2 r4 |
    <cis a e>2 r4 |
    <d a f>2 r4 |
    <d a> <ees bes> <d a> |
    <cis g> <d a> <bes g d> |
    <a f d>4~ <a e d>~ <a e cis> |
  }
  \globalQuoniamGloriaATreVociHaydn
  \relative a' {
    <a fis d>4 r r2 |
    d2 fis,2 |
    g4 b r2 |
    <e, cis>2 <fis d> |
    <fis d>4( <e cis>) r2 |
    b'2 cis, |
    d4. e8 fis4 g |
    <a fis d>2~ <a g cis,>~
    <a fis d>4 r r q |
    <b g d>2. q4 |
    <a fis d>2. r4 |
    <b g d>2. q4 |
    <a fis d>2. <b g>4 |
    r4 <c a d,> <c a fis> <c a d,> |
    <b g d>4. <a fis cis>8 <g d>4 <a fis cis> |
    <b g d>~ <a d,>~ <a g cis,>~ <a fis d>~ |
    <a g e>~ <a g cis,> r2 |
    <a fis d>1~ |
    <b fis d>~ |
    q~ |
    <b g d> |
  }
  <<
    \relative b' {
      b1 |
      a4 <cis g> <d a> <e b> |
      d2 cis |
      b2 r |
      b2 b |
      b4 a b <e b> |
      d2 cis |
      d2 r |
    }
    \\
    \relative g' {
      g4 fis e d |
      e2 fis4 e |
      <a fis>2~ <a e> |
      <fis d>2 r |
      <g d>2 q |
      d2. g4 |
      <a fis>2 <a e> |
      <a fis> r |
    }
  >>
  \bar "|."
}

orgelLHNotenGloriaATreVociHaydn = \tempTranspose \relative c {
  \globalGloriaATreVociHaydn
  \continuoNotenGloriaATreVociHaydn
}

metronomZeileGloriaATreVociHaydn = \drummode {
}
\include "defGloriaATreVociHaydn.ly"

%{Arbeitspartitur
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
      \tempo 2 = 80
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
Arbeitspartitur%}
