;; -*- lexical-binding: t; -*-

(TeX-add-style-hook
 "sample-godement"
 (lambda ()
   (TeX-add-symbols
    "T")
   (LaTeX-add-environments
    '("comment_box" LaTeX-env-args ["argument"] 0)
    '("colored_box*" LaTeX-env-args ["argument"] 0)
    '("colored_box" LaTeX-env-args ["argument"] 1)
    '("last_exercise" LaTeX-env-args ["argument"] 0)
    '("centered-exercise-like" LaTeX-env-args ["argument"] 2)
    '("exercise-like" LaTeX-env-args ["argument"] 1)
    '("exercise" LaTeX-env-args ["argument"] 0)))
 :latex)

