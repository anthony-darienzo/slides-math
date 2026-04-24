;; -*- lexical-binding: t; -*-

(TeX-add-style-hook
 "sample"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("verbatimbox" "") ("biblatex" "" "backend=biber")))
   (TeX-run-style-hooks
    "biblatex")
   (LaTeX-add-environments
    '("commentbox" LaTeX-env-args ["argument"] 0)
    '("coloredbox*" LaTeX-env-args ["argument"] 0)
    '("coloredbox" LaTeX-env-args ["argument"] 1)
    '("last_exercise" LaTeX-env-args ["argument"] 0)
    '("centered-exercise-like" LaTeX-env-args ["argument"] 2)
    '("exercise-like" LaTeX-env-args ["argument"] 1)
    '("exercise" LaTeX-env-args ["argument"] 0))
   (LaTeX-add-bibliographies
    "refs"))
 :latex)

