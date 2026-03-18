;; -*- lexical-binding: t; -*-

(TeX-add-style-hook
 "homework-math"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("memoir" "ms" "article")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("fancyhdr" "") ("etoolbox" "") ("graphicx" "") ("scalerel" "") ("tikz" "") ("tikz-cd" "") ("tikz-3dplot" "") ("mathtools" "") ("amsthm" "") ("amsmath" "") ("amssymb" "") ("gensymb" "") ("faktor" "") ("stackengine" "") ("hyperref" "") ("extdash" "shortcuts") ("setspace" "") ("xcolor" "") ("tcolorbox" "") ("totcount" "") ("tocloft" "") ("environ" "") ("soul" "") ("titlesec" "explicit") ("plex-serif" "") ("plex-sans" "") ("plex-mono" "") ("datetime" "long" "nodayofweek" "24hr") ("memhfixc" "") ("geometry" "margin=1in") ("fourier" "upright") ("mathastext" "frenchmath" "italic" "nosmalldelims")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "memoir"
    "memoir10"
    "fancyhdr"
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
    "totcount"
    "tocloft"
    "environ"
    "soul"
    "titlesec"
    "plex-serif"
    "plex-sans"
    "plex-mono"
    "datetime"
    "memhfixc"
    "geometry"
    "fourier"
    "mathastext")
   (TeX-add-symbols
    '("dhorline" ["argument"] 2)
    '("cddescend" 6)
    '("cdlift" 6)
    '("cdsquare" 8)
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
    '("printtoctitle" 1)
    "japanese"
    "tinyslbf"
    "tenslbf"
    "smallslbf"
    "nosectionrule"
    "hmtableofcontents"
    "smalltableofcontents"
    "makehmtitle"
    "makecenteredtitle"
    "makehomeworktitle"
    "maketntitle"
    "catin"
    "eqdef"
    "equivdef"
    "id"
    "Dom"
    "dom"
    "Range"
    "Hom"
    "Sub"
    "Yo"
    "coYo"
    "pcal"
    "actson"
    "ep"
    "R"
    "N"
    "Q"
    "C"
    "Z"
    "op"
    "boxhrule"
    "ifempty"
    "subtitle"
    "contact"
    "titlecolor"
    "leftheader"
    "rightheader"
    "sectionrule"
    "comment"
    "temp"
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
    '("exercise" LaTeX-env-args ["argument"] 0)
    '("exercise_solution" LaTeX-env-args ["argument"] 0)
    '("warning_box" 1)
    "indented"
    "exercise*"
    "last_exercise*"
    "comment_box*"
    "warning_box*")
   (LaTeX-add-counters
    "exctr"
    "sectionrulechecker"
    "specialboxctr")
   (LaTeX-add-xcolor-definecolors
    "IlliniBlue"
    "UrbanaOrange"
    "UIUCTeal"
    "UIUCGray-blue"
    "UIUCCitron"
    "UIUCDark-yellow"
    "UIUCSalmon"
    "UIUCPeriwinkle"
    "ThesisSage")
   (LaTeX-add-amsthm-newtheorems
    "theorem"
    "proposition"
    "lemma"
    "claim"
    "corollary"
    "remark"
    "question"
    "researchquestion"
    "mathrule"
    "ansatz"
    "definition"
    "example"
    "fact"
    "conjecture"
    "definitionprop"
    "bigremark"))
 :latex)

