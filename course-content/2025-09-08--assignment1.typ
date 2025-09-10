
#import "@preview/grape-suite:3.1.0": exercise
#import exercise: project


#show: project.with(
    title: [Assignment 1],
    seminar: [Math245],
    faculty: [George McNinch],
    semester: [Fall 2025, Tufts University],
    date: [due: 2025-09-08]
)

#import "@preview/ctheorems:1.1.3": *
#show: thmrules

// #let question = thmbox("question", "Question", base_level: 0, fill: rgb("#4d9bdb25"))
#let question = thmbox("question", "Question", base_level: 0, fill: rgb("#155DFC33"))


// operators
#let Hom = math.op("Hom")
#let Aut = math.op("Aut")
#let End = math.op("End")
#let Gal = math.op("Gal")

#let GL = math.op("GL")
#let SL = math.op("SL")

#let Basis = math.cal("B")

#set enum(numbering: "a.")  

#question[
  Let $F$ be a field, let $I$ be a set, and let $V = V_I$ the set of finitely supported $F$-valued functions on $I$.
  + Explain why $V$ is an $F$-vector space.
  + For $i in I$, let $delta_i$ be the function
    $delta_i:I -> F$ given by the rule 
    $ delta_i (j) = cases(1 "if" i  =j,
                          0 "else") $
    Prove that $Basis = { delta_i | i in I}$ is a basis for $V_I$ as $F$-vector space. You need to prove that $Basis$ spans $V$ and that $Basis$ is linearly independent.
  + If $f:I -> J$ is a bijective function, prove that there is a 
    linear mapping $Phi_f:V_I -> V_J$ for which $Phi_f (delta_i) = delta_(f(i))$ for each $i in I$, and that $Phi_f$
    determines an isomorphism of $F$-vector space $V_I -> V_J.$ 
]

#question[
  Let $F$ be a field and let $V$ and $W$ be $F$-vector space. Suppose that $phi:V -> W$ is an invertible $F$-linear map. Using $phi$, define a group isomorphism $GL(V) -> GL(W)$.

]