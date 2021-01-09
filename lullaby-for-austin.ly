% Copyright 2020 - Olmo Petrogalli, Izabela Stefaniak, Francesco Petrogalli

% This work is licensed under CC BY-SA 4.0. To view a copy of this
% license, visit https://creativecommons.org/licenses/by-sa/4.0"

\version "2.20.0"

Title = \markup {"Lullaby for Austin"}
Version = \markup {"v1.0"}
Github = \markup {\with-url #"http://github.com/fpetrogalli/lfa/releases/latest" "github.com/fpetrogalli/lfa" "-" \Version}
Composer = \markup {"Olmo Petrogalli, Izabela Stefaniak"}
Arranger = \markup {\with-url #"http://tubafranz.me" "tubafranz.me"}
Copyright = \markup {
  \center-column {
    \line { "Copyright © 2020 Olmo Petrogalli, Izabela Stefaniak, Francesco Petrogalli"}
    \line { "This work is licensed under CC BY-SA 4.0." }
    \line {
      "To view a copy of this license, visit"
      \with-url #"https://creativecommons.org/licenses/by-sa/4.0"
      "https://creativecommons.org/licenses/by-sa/4.0"
    }
  }
}
CCLogo = \markup {
  \general-align #Y #DOWN {
    \with-url #"https://creativecommons.org/licenses/by-sa/4.0" \epsfile #X #20 #"by-sa.eps"
  }
}
BuyMeCoffee = \markup { "Do you like it? Buy me a coffee!" \with-url #"https://ko-fi.com/tubafranz" "ko-fi.com/tubafranz"}

\header {
  title = \Title
  composer = \Composer
  arranger = \Arranger
  copyright = \Copyright
  opus= \BuyMeCoffee
  meter = \Github
  poet = \CCLogo
}
\paper {
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  #(set-paper-size "a4")
}

global = {
  \key d \minor
  \time 6/8
}

altoVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.
  R2.*2 |


  \repeat volta 3 {
    d4 a'8 g4 e8 |
    g4 f8 e4 d8 |
    d4 a'8 g4 e8 |
    g4 f8 e4 d8 |
    d8 a' g f g f |
    e8 f e d4 r8 |
    d8 a' g f g f |
    e8 f e d4 r8 |

    d4 a'8 g4 e8 |
    g4 f8 e4 d8 |
    d4 a'8 g4 e8 |
    g4 f8 e4 d8 |
    d8 a' g f g f |
    e8 f e d4 r8 |
    d8 a' g f g f |
    e8 f e d4 r8 |

    r2. |
    \time 9/8
    r2. r4.
  }

  \time 6/8
  R2.*8
  d4 a'8 g4 e8 |
  g4 f8 e4 d8~ |
  d2. |
  R2.*2 \bar "|."
}

verse_one = \lyricmode {
  % Lyrics follow here.
  Go to sleep my |
  lit -- tle dar -- ling |
  go to sleep my |
  lit -- tle dar -- ling |
  Ah --  _ _ _ _ _ |
  _ _ _  ""   |
  Ah --  _ _ _ _ _ |
  _ _ _ ""  |

  Go to sleep my |
  lit -- tle dar -- ling |
  go to sleep my |
  lit -- tle dar -- ling |
  Ah --  _ _ _ _ _ |
  _ _ _ ""   |
  Ah --  _ _ _ _ _ |
  _ _ _ ""  |

  Go to sleep my |
  lit -- tle dar -- ling
}
verse_two = \lyricmode {
  % Lyrics follow here.
  Ocz -- ka zmróż ko -- |
  cha -- nie mo -- je |
  wy -- pocz -- nij -- my |
  w~śnie we dwo -- je |
  Ah --  _ _ _ _ _ |
  _ _ _  ""   |
  Ah --  _ _ _ _ _ |
  _ _ _ ""  |

  Tam gdzie ma -- gja  |
  snów o -- gar -- nia  |
  na mi -- nut -- kę |
  wę -- dro -- wa -- nia |
  Ah --  _ _ _ _ _ |
  _ _ _ ""   |
  Ah --  _ _ _ _ _ |
  _ _ _ ""  |


}
verse_three = \lyricmode {
  % Lyrics follow here.
  Dor -- mi dor -- mi |
  mio te -- so -- ro |
  tut -- to~il tem -- po |
  ti a -- do -- ro |
  Ah --  _ _ _ _ _ |
  _ _ _  ""   |
  Ah --  _ _ _ _ _ |
  _ _ _ ""  |

  So -- no stan -- co |
  di~a -- do -- ra -- re|
  o -- ra de -- vo |
  ri -- po -- sa -- re |
  Ah --  _ _ _ _ _ |
  _ _ _ ""   |
  Ah --  _ _ _ _ _ |
  _ _ _ ""  |


}

flute = \relative c' {
  \global
  % Music follows here.
  R2.*2 |


  \repeat volta 3 {
    R2.*8|
    R2.*8|

    r2. |
    \time 9/8
    r2. r4.
  }
  \time 6/8
  d4. e |
  f4. g |
  bes4. a |
  g4.  e |
  f4. d |
  g4. ~g8 r r |
  a4. g |
  \times 3/2 {e8 f } \times 3/2 {cis8 e} |
  d4 a'8 g4 e8 |
  g4 f8 e4 d8~ |
  d2. |
  R2.*2 \bar "|."

}

contrabass = \relative c {
  \global
  % Music follows here.
  d4. bes |
  g4. a |

  \repeat volta 3 {

    d4. e |
    bes4. g' |
    f4. e |
    bes4. c |
    d8 f4 bes,4. |
    g8 a4 f'4. |
    d8 f4 bes4. |
    g8 a,4 d4. |

    f4. e |
    bes4. g' |
    f4. e |
    bes4. c |
    d8 d4 f8 bes,4 |
    g'8 a,4 d8 d4 |
    f8 d4 f8 bes4 |
    g,8 a4 d4. |

    g8 a g f d bes |
    \time 9/8
    a4. b cis |
  }
  \time 6/8
  d4. e |
  bes4. g' |
  f4. e |
  bes4. c |
  d8 f4 bes,4. |
  g8 a4 f'4. |
  d8 f4 bes4. |
  g8 a,4 d4. |
  R2.*2 |
  d4.  bes |
  g4. e'4.~
  e4. r

}

altoVoicePart = \new Staff \with {
  instrumentName = "Lyrics"
  shortInstrumentName = "ly"
  midiInstrument = "choir aahs"
} { \altoVoice }
\addlyrics { \verse_one }
\addlyrics { \verse_two }
\addlyrics { \verse_three }

flutePart = \new Staff \with {
  instrumentName = "Flute"
  shortInstrumentName = "fl"
  midiInstrument = "flute"
} \flute

contrabassPart = \new Staff \with {
  instrumentName = "Contrabass"
  shortInstrumentName = "cb"
  midiInstrument = "contrabass"
} { \clef bass \contrabass }

\score {
  <<
    \altoVoicePart
    \flutePart
    \contrabassPart
  >>
  \layout { \context {\Staff \RemoveEmptyStaves}}
  \midi {
    \tempo 4=100
  }
}
