;; -*- lexical-binding: t; -*-

(TeX-add-style-hook
 "2025-11-05--assignment09-tex"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("amsmath" "") ("amsfonts" "") ("amssymb" "") ("amsthm" "") ("tikz" "")))
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art10"
    "amsmath"
    "amsfonts"
    "amssymb"
    "amsthm"
    "tikz")
   (TeX-add-symbols
    '("mfk" 1)
    "Hom"
    "Aut"
    "End"
    "Gal"
    "Mat"
    "GL"
    "Inn"
    "Prop"
    "Stab"
    "Syl"
    "Cl"
    "ZZ"
    "QQ"
    "RR"
    "CC")
   (LaTeX-add-amsthm-newtheorems
    "problem"))
 :latex)

