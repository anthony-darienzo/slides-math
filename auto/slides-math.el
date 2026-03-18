;; -*- lexical-binding: t; -*-

(TeX-add-style-hook
 "slides-math"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("beamer" "")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("fourier" "") ("mathastext" "frenchmath" "italic" "nosmalldelims") ("enumitem" "") ("iftex" "") ("pgfopts" "") ("etoolbox" "") ("graphicx" "") ("scalerel" "") ("tikz" "") ("tikz-cd" "") ("tikz-3dplot" "") ("mathtools" "") ("amsthm" "") ("amsmath" "") ("amssymb" "") ("gensymb" "") ("faktor" "") ("stackengine" "") ("hyperref" "") ("extdash" "shortcuts") ("setspace" "") ("xcolor" "") ("tcolorbox" "" "most") ("piton" "") ("soul" "") ("titlesec" "explicit") ("plex-otf" "") ("datetime" "long" "nodayofweek" "24hr") ("unicode-math" "" "mathrm=sym")))
   (add-to-list 'LaTeX-verbatim-environments-local "semiverbatim")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "beamer"
    "beamer10"
    "iftex"
    "pgfopts"
    "etoolbox"
    "graphicx"
    "scalerel"
    "tikz"
    "tikz-cd"
    "tikz-3dplot"
    "mathtools"
    "amsthm"
    "amsmath"
    "amssymb"
    "gensymb"
    "faktor"
    "stackengine"
    "hyperref"
    "extdash"
    "setspace"
    "xcolor"
    "tcolorbox"
    "piton"
    "soul"
    "titlesec"
    "plex-otf"
    "datetime"
    "unicode-math")
   (TeX-add-symbols
    '("cycle" 1)
    '("closure" 1)
    '("interior" 1)
    '("expo" 1)
    '("minisub" 2)
    '("fg" 2)
    '("restr" 2)
    '("brak" 1)
    '("norm" 1)
    '("abs" 1)
    '("bwrap" 1)
    '("pwrap" 1)
    '("fb" 1)
    '("bvec" 1)
    '("hw" 1)
    '("ul" 1)
    "japanese"
    "makebottomtitle"
    "moloch"
    "catin"
    "eqdef"
    "equivdef"
    "id"
    "pcal"
    "actson"
    "ep"
    "R"
    "N"
    "Q"
    "C"
    "Z"
    "op"
    "ifempty"
    "temp"
    "maincolor"
    "accentcolor"
    "comment"
    "TLiPoS"
    "xkcdto"
    "xkcdleftarrow"
    "xkcdmapsto")
   (LaTeX-add-environments
    '("comment_box" LaTeX-env-args ["argument"] 0)
    '("colored_box*" LaTeX-env-args ["argument"] 0)
    '("colored_box" LaTeX-env-args ["argument"] 1)
    '("last_exercise" LaTeX-env-args ["argument"] 0)
    '("centered-exercise-like" LaTeX-env-args ["argument"] 2)
    '("exercise-like" LaTeX-env-args ["argument"] 1)
    '("exercise" LaTeX-env-args ["argument"] 0))
   (LaTeX-add-xcolor-definecolors
    "IlliniBlue"
    "IlliniOrange"
    "UrbanaOrange"
    "UIUCTeal"
    "UIUCGray-blue"
    "UIUCCitron"
    "UIUCDark-yellow"
    "UIUCSalmon"
    "UIUCPeriwinkle"
    "ThesisSage"
    "UIUCIndustrial"
    "UIUCArches"
    "UIUCPatina"
    "UIUCBerry"
    "UIUCHarvest"
    "UIUCPrairie"
    "UIUCEarth"
    "Storm1"
    "Storm2"
    "Storm3"
    "Storm4"
    "Storm5"
    "Altgeld"
    "MainColor"
    "AccentColor"
    "MainDark1"
    "MainDark2"
    "MainDark3"
    "MainDark4"
    "MainLight1"
    "MainLight2"
    "MainLight3"
    "MainLight4"
    "AccentDark1"
    "AccentDark2"
    "AccentDark3"
    "AccentDark4"
    "AccentLight1"
    "AccentLight2"
    "AccentLight3"
    "AccentLight4"
    "mNormaltextFg"
    "mNormaltextBg"
    "mAlertFg"
    "mExampleFg"
    "mFrametitleFg"
    "mFrametitleBg"
    "mProgressbarFg"
    "mProgressbarBg"
    "mTitleseparatorFg"
    "mStandoutFg"
    "mStandoutBg"
    "mFootnoteFg"))
 :latex)

