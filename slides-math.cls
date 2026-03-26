\NeedsTeXFormat{LaTeX2e}
% Originally based on my homework-math and thesis-note classes.
\ProvidesClass{slides-math}[2026/03/16 Personal math beamer class]

%%% DEFAULTS %%%
\def\@true{1}
\def\@false{0}
\def\ifempty#1{\def\temp{#1} \ifx\temp\empty}

\def\@smmaincolor{black}%
\def\@smaccentcolor{gray}

% Some macros have a `@hm` prefix, whereas others have a `@tn`
% prefix. This is because the hm macros originate in the old
% homework-math class, and the tn macros came from a modified thesis
% note class. At some point this should change (we don't need to worry
% about backwards compatible since any macro with the `@` prefix is
% hidden from the user.

\newcommand\@tnnoplex\@false
\newcommand\@tndatetime\@true
\newcommand\@smdarkmode\@false

%\font\japanese=dmjhira
\font\japanese=IBMPlexSansJP
%%% OPTIONS %%%

\DeclareOption{defaultdate}{%
  \renewcommand\@tndatetime\@false
}%

\DeclareOption{noplex}{%
  \renewcommand\@tnnoplex\@true
}%

\DeclareOption{dark}{%
  \renewcommand\@smdarkmode\@true
}%

\ProcessOptions\relax

\LoadClass{beamer}
\usetheme[%
  progressbar=frametitle,
]{moloch}

%%% DEPENDENCIES %%%
\RequirePackage{iftex}
\RequireLuaTeX% Force user to use LuaLatex.

\RequirePackage{pgfopts}
\RequirePackage{etoolbox}% 
\RequirePackage{graphicx}
\RequirePackage{scalerel}
\RequirePackage{tikz,tikz-cd,tikz-3dplot}
\usetikzlibrary{%
  shapes, arrows, calc, positioning, shapes.geometric,%
  decorations.pathreplacing, decorations.markings, mindmap,%
	decorations, patterns, decorations.pathmorphing%
}%
\RequirePackage{mathtools}
\RequirePackage{amsthm,amsmath,amssymb}
\RequirePackage{gensymb}
\RequirePackage{faktor}
\RequirePackage{stackengine}
\RequirePackage{hyperref}
\RequirePackage[shortcuts]{extdash}
\RequirePackage{setspace}
\RequirePackage{xcolor}
\RequirePackage[most]{tcolorbox}

\RequirePackage{piton}

% Make pretty titles
\RequirePackage{soul}
\RequirePackage[explicit]{titlesec}

\if\@tnnoplex\@false
  \RequirePackage{plex-otf}
\fi

\if\@tndatetime\@true
  \RequirePackage[long,nodayofweek,24hr]{datetime}
\fi

%%% Any page modifications for DEPENDENCIES go here

%%% FONTS %%%

\RequirePackage{unicode-math}
\setmathfont{IBM Plex Math}
\setmathfont{STIXTwoMath-Regular.otf}[StylisticSet=1]
\setmathfont{STIXTwoMath-Regular.otf}[range={cal, bfcal}, StylisticSet=0]
\setmathfont[range={sfup, sfit}]{Fira Math}

%%% Any page modifications for FONTS go here

%%% DOCUMENT SETUP %%%

\newcommand*\makebottomtitle{%
  \begin{frame}[b]
    \titlepage%
  \end{frame}
}%

%% Setup

\definecolor{IlliniBlue}{RGB}{19,41,75}
\definecolor{IlliniOrange}{RGB}{255,95,5}
\definecolor{UrbanaOrange}{RGB}{232,74,39}
\definecolor{UIUCTeal}{RGB}{13,96,94}
\definecolor{UIUCGray-blue}{RGB}{111,175,199}
\definecolor{UIUCCitron}{RGB}{191,212,109}
\definecolor{UIUCDark-yellow}{RGB}{255,209,37}
\definecolor{UIUCSalmon}{RGB}{238,94,94}
\definecolor{UIUCPeriwinkle}{RGB}{79,104,152}
\definecolor{ThesisSage}{RGB}{127,160,110}

\definecolor{UIUCIndustrial}{RGB}{29,88,167}
\definecolor{UIUCArches}{RGB}{0,159,212}
\definecolor{UIUCPatina}{RGB}{0,126,142}
\definecolor{UIUCBerry}{RGB}{92,14,65}
\definecolor{UIUCHarvest}{RGB}{252,179,22}
\definecolor{UIUCPrairie}{RGB}{0,98,48}
\definecolor{UIUCEarth}{RGB}{125,62,19}

\definecolor{Storm1}{RGB}{00,00,00}
\definecolor{Storm2}{RGB}{112,115,114}
\definecolor{Storm3}{RGB}{156,154,157}
\definecolor{Storm4}{RGB}{200,198,199}
\definecolor{Storm5}{RGB}{255,255,255}

\definecolor{Altgeld}{RGB}{200,65,19}

\definecolor{ThesisSage}{RGB}{127,160,110}

\gdef\@smmaincolor{IlliniBlue}
\gdef\@smaccentcolor{IlliniOrange}

\newbox\@tnTitleUnderlineBox
\newcommand*\@tnTitleUnderline[1]{%
  \bgroup
  \setbox\@tnTitleUnderlineBox\hbox{\colorbox{AccentColor}\strut}%
  \setul{\dimexpr\dp\@tnTitleUnderlineBox-.3ex\relax}{.3ex}%
  \ul{\mbox{#1}}%
  \egroup%
}%
\newcommand*\@tnSectionNumberBox[1]{%
  \colorbox{AccentColor}
  {%
    \makebox[1.5em][c]{%
      \color{Storm5}%
      \strut%
      \csname the#1\endcsname
    }%
  }%
  \@tnTitleUnderline{\ \ \ }%
}%
\newcommand*\@tnBareNumberBox[1]{%
  \colorbox{AccentColor}
  {%
    \makebox[1.5em][c]{%
      \color{Storm5}%
      \strut%
      \csname the#1\endcsname
    }%
  }%
  {\ \ \ }%
}%

\newcommand*\@smNumberBox[1]{%
  \begin{tikzpicture}[baseline={([yshift=-.75ex]current bounding box.center)}]
    \node[fill=AccentDark4,scale=0.7] at (0,0) {\color{Storm5}\footnotesize{\textbf{#1}}};
  \end{tikzpicture}
}%
\newcommand*\@smEmptyBox{%
  \begin{tikzpicture}[baseline={([yshift=-.75ex]current bounding box.center)}]
    \node[fill=AccentDark4,scale=0.5] at (0,0) {\phantom{\footnotesize{\textbf{1}}}};
  \end{tikzpicture}
}%
  
% Style itemize and enumerate
\setbeamertemplate{enumerate item} {\@smNumberBox{\insertenumlabel}}
\setbeamertemplate{itemize item} {\@smEmptyBox}

%%% Any page modifications for DOCUMENT SETUP.setup go here
% tikz magic from:
% https://tex.stackexchange.com/questions/39296/simulating-hand-drawn-lines
\pgfset{%
  /pgf/decoration/randomness/.initial=5,%
  /pgf/decoration/wavelength/.initial=100%
}%
\pgfdeclaredecoration{sketch}{init}{%
  \state{init}[width=0pt,next state=draw,persistent precomputation={%
    \pgfmathsetmacro\pgf@lib@dec@sketch@t0%
  }]{}%
  \state{draw}[%
  width=\pgfdecorationsegmentlength,%
  auto corner on length=\pgfdecorationsegmentlength,%
  persistent precomputation={%
    \pgfmathsetmacro\pgf@lib@dec@sketch@t{%
      mod(\pgf@lib@dec@sketch@t+pow(\pgfkeysvalueof{/pgf/decoration/randomness},rand),\pgfkeysvalueof{/pgf/decoration/wavelength})
    }%
  }]{%
    \pgfmathparse{%
      sin(2*\pgf@lib@dec@sketch@t*pi/\pgfkeysvalueof{/pgf/decoration/wavelength}r)
    }%
    \pgfpathlineto{\pgfqpoint{\pgfdecorationsegmentlength}{\pgfmathresult\pgfdecorationsegmentamplitude}}%
  }%
  \state{final}{}%
}%

\tikzset{%
  xkcd/.style={%
    decorate,%
    decoration={sketch,segment length=0.5pt,amplitude=0.5pt}}%
}%
\tikzset{%
  xkcdto/.style={%
    decorate,%
    decoration{sketch,segment length=0.5pt,amplitude=0.5pt,mark=at
      position 0.5 with {\arrow{to}}}
  }% 
}%
\pgfmathsetseed{1}%
% End tikz magic

% header commands are called at the end to give a chance for the user to load
% the geometry package, which must be loaded before headers are defined
\AtEndPreamble{%

  % Generate color shades after user defines main and accent colors.
  \colorlet{MainColor}{\@smmaincolor}
  \colorlet{AccentColor}{\@smaccentcolor}

  \colorlet{MainDark1}{MainColor!20!black}
  \colorlet{MainDark2}{MainColor!40!black}
  \colorlet{MainDark3}{MainColor!60!black}
  \colorlet{MainDark4}{MainColor!80!black}

  \colorlet{MainLight1}{MainColor!20!white}
  \colorlet{MainLight2}{MainColor!40!white}
  \colorlet{MainLight3}{MainColor!60!white}
  \colorlet{MainLight4}{MainColor!80!white}

  \colorlet{AccentDark1}{AccentColor!20!black}
  \colorlet{AccentDark2}{AccentColor!40!black}
  \colorlet{AccentDark3}{AccentColor!60!black}
  \colorlet{AccentDark4}{AccentColor!80!black}

  \colorlet{AccentLight1}{AccentColor!20!white}
  \colorlet{AccentLight2}{AccentColor!40!white}
  \colorlet{AccentLight3}{AccentColor!60!white}
  \colorlet{AccentLight4}{AccentColor!80!white}
  
  \newcommand{\moloch@colortheme@sm}{%
    \moloch@register@light@colors{%
      \colorlet{mNormaltextFg}{Storm2}
      \colorlet{mNormaltextBg}{Storm5}
      \colorlet{mAlertFg}{Altgeld}
      \colorlet{mExampleFg}{UIUCBerry}
      \colorlet{mFrametitleFg}{Storm5}
      \colorlet{mFrametitleBg}{MainColor}
      \colorlet{mProgressbarFg}{AccentDark4}
      \colorlet{mProgressbarBg}{AccentDark2}
      \colorlet{mTitleseparatorFg}{AccentColor}
      \colorlet{mStandoutFg}{Storm5}
      \colorlet{mStandoutBg}{MainColor}
      \colorlet{mFootnoteFg}{Storm3}
      \moloch@apply@semantic@colors
    }

    \moloch@register@dark@colors{%
      \colorlet{mNormaltextFg}{Storm5}
      \colorlet{mNormaltextBg}{MainColor}
      \colorlet{mAlertFg}{Altgeld!80!white}
      \colorlet{mExampleFg}{UIUCBerry!40!white}
      \colorlet{mFrametitleFg}{Storm5}
      \colorlet{mFrametitleBg}{MainDark4}
      \colorlet{mProgressbarBg}{AccentLight2}
      \colorlet{mProgressbarFg}{AccentLight4}
      \colorlet{mTitleseparatorFg}{AccentColor}
      \colorlet{mStandoutFg}{Storm5}
      \colorlet{mStandoutBg}{AccentDark2}
      \colorlet{mFootnoteFg}{Storm1}
      \moloch@apply@semantic@colors
    }
    % Apply current variant after registering both
    \moloch@apply@current@variant
  }

  \if\@smdarkmode\@true
    \molochcolors{variant=dark}
  \fi%
  
  \moloch@colortheme@sm%
  \molochset{block=fill}
  \useinnertheme[shadow]{tcolorbox}
}%

%% Document methods %%

\def\maincolor#1{\gdef\@smmaincolor{#1}}%
\def\accentcolor#1{\gdef\@smaccentcolor{#1}}%

%%% FORMATTING METHODS %%%

\newenvironment<>{smpopupbox}[3][AccentDark4]%
{\begin{onlyenv}#4
  \begin{tikzpicture}[overlay, remember picture]
    \node[text width=#2] at ([#3]current page.center) \bgroup
    \begin{tcolorbox}[enhanced, sharpish corners, drop shadow, colframe=#1, colback=#1!50, width=#2]
    }% Begin text
    {\end{tcolorbox}
    \egroup;
  \end{tikzpicture}
\end{onlyenv}
}% End text

%%% ABBREVIATIONS %%%
% For declaring objects in a category (in a Haskell-like manner)
\providecommand{\catin}{\mathrel{::}}

\providecommand{\ul}[1]{\underline{#1}}
\providecommand{\hw}[1]{\widehat{#1}}
\providecommand{\bvec}[1]{\overrightarrow{#1}}

% Groupings macros.
\providecommand{\fb}[1]{{\left[#1\right]}}
\providecommand{\pwrap}[1]{{\left(#1\right)}}
\providecommand{\bwrap}[1]{{\left\{#1\right\}}}
\providecommand{\abs}[1]{{\left|#1\right|}}
\providecommand{\norm}[1]{{\left\|#1\right\|}}
\providecommand{\brak}[1]{{\left\langle#1\right\rangle}}

\providecommand\restr[2]{{% we make the whole thing an ordinary symbol
   \left.\kern-\nulldelimiterspace % automatically resize the bar with \right
    #1 % the function
    \vphantom{\big| } % pretend it's a little taller at normal size
    \right|_{#2} % this is the delimiter
}}

\providecommand{\eqdef}{\overset{\normalfont{\text{def}}}{=}}
\providecommand{\equivdef}{\overset{\normalfont{\text{def}}}{\equiv}}

\renewcommand{\leq}{\leqslant}
\renewcommand{\geq}{\geqslant}

% fg for "function group"
\providecommand{\fg}[2]{{#2}^{\scalebox{0.75}{#1}}}
\providecommand{\minisub}[2]{#1_{\scalebox{0.65}{#2}}}
\providecommand{\id}{\mathsf{id}}

\DeclareMathOperator{\Dom}{Dom}
\DeclareMathOperator{\dom}{dom}
\DeclareMathOperator{\Range}{Range}
\DeclareMathOperator{\Hom}{\normalfont{\text{Hom}}}
\DeclareMathOperator{\Sub}{\normalfont{\text{Sub}}}

% We are using LuaLaTeX for beamer, so we can use unicode input!
% \DeclareMathOperator\Yo{\text{\normalfont\japanese \char"48}}
\DeclareMathOperator\Yo{\text{\normalfont\japanese{よ}}}
\DeclareMathOperator\coYo{\rotatebox[origin=c]{180}{\(\Yo\)}}

%% For adding special characters from other fonts
%% https://tex.stackexchange.com/a/247819
\DeclareFontFamily{U}{BOONDOX-calo}{\skewchar\font=45}
\DeclareFontShape{U}{BOONDOX-calo}{m}{n}{
  <-> s*[1.05] BOONDOX-r-calo}{}
\DeclareFontShape{U}{BOONDOX-calo}{b}{n}{
  <-> s*[1.05] BOONDOX-b-calo}{}
\DeclareMathAlphabet{\mathbdc}{U}{BOONDOX-calo}{m}{n}
\SetMathAlphabet{\mathbdc}{bold}{U}{BOONDOX-calo}{b}{n}
\DeclareMathAlphabet{\mathbbdc}{U}{BOONDOX-calo}{b}{n}
\DeclareSymbolFont{BOONDOX-calo}{U}{BOONDOX-calo}{m}{n}
\DeclareMathSymbol{\pcal}{\mathalpha}{BOONDOX-calo}{112}

\providecommand{\expo}[1]{{%
  \text{\normalfont{exp}}\left(#1\right)%
}}%

\providecommand{\interior}[1]{{#1\degree}}
\providecommand{\closure}[1]{{\lbar{#1}}}

\DeclareRobustCommand{\actson}{\mathrel{\rotatebox[origin=c]{90}{\(\curvearrowleft\)}}}

\providecommand{\ep}{\varepsilon}
\providecommand{\R}{\mathbb{R}}
\providecommand{\N}{\mathbb{N}}
\providecommand{\Q}{\mathbb{Q}}
\providecommand{\C}{\mathbb{C}}
\providecommand{\Z}{\mathbb{Z}}
\providecommand\op{{\mathsf{op}}}

% Based on
% https://davidyat.es/2016/07/27/writing-a-latex-macro-that-takes-a-variable-number-of-arguments/
\newcommand\cycle[1]{%
  \begin{psmallmatrix}%
    #1\@cyclechecknextarg%
  }
  
\newcommand{\@cyclechecknextarg}{%
  \@ifnextchar\bgroup{\@cyclegobblenextarg}{%
  \end{psmallmatrix}}
}

\newcommand{\@cyclegobblenextarg}[1]{ & #1 \@ifnextchar\bgroup{\@cyclegobblenextarg}{%
  \end{psmallmatrix} }}

\def\comment#1{{\color{magenta} [#1]}}

% Silly things
\def\TLiPoS{%
    \normalfont%
    TL
    \kern-.35em
    {%
        \sbox\z@ A%
        \vbox to\ht\z@ {%
            \hbox{% start a horizontal box
                \check@mathfonts%
                \fontsize\sf@size\z@%
                \math@fontsfalse%
                \selectfont%
                I
            }%
            \vss%
        }%
    }%
    \kern-.30em%
    P
    \kern-.46em%
    o
    \kern-.36em%
    S
}

% Modifications to make certain macros look funnier in typewriter mode.
\def\xkcdto{\scalerel*{\begin{tikzpicture}%
	\draw[xkcd,->] (0,0) -- (0.5,0);%
\end{tikzpicture}}{-}}%
\def\xkcdleftarrow{\scalerel*{\begin{tikzpicture}%
	\draw[xkcd,<-] (0,0) -- (0.5,0);%
\end{tikzpicture}}{-}}%
\def\xkcdmapsto{\scalerel*{\begin{tikzpicture}%
	\draw[xkcd,|->] (0,0) -- (0.5,0);%
\end{tikzpicture}}{-}}%
