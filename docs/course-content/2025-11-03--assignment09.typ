#import "@preview/grape-suite:3.1.0": exercise
#import exercise: project


#import "@preview/commute:0.3.0": node, arr, commutative-diagram

#import "@preview/ctheorems:1.1.3": *
#show: thmrules

#let problem = thmbox("problem", "Problem", base_level: 0, fill: rgb("#155DFC33"))

#show: project.with(
    title: "Problem Set week 9",
    university: "Tufts University",
    semester: "Fall 2025",
    seminar: "Math 065",
    faculty: "Prof. George McNinch",
    date: [due: 2025-11-03] 
)

#set enum(numbering: "a.")  


// operators
#let Hom = math.op("Hom")
#let Aut = math.op("Aut")
#let End = math.op("End")
#let Gal = math.op("Gal")
#let Mat = math.op("Mat")
#let GL = math.op("GL")
#let Inn = math.op("Inn")
#let Prop = math.op("Prop")
#let Aut = math.op("Aut")
#let Stab = math.op("Stab") 
#let Syl = math.op("Syl")
#let Mat = math.op("Mat")

#let mm = math.frak("m")

#let Cl = math.op("Cl")

Let $A$ be a commutative ring (with identity). 

#problem[
  Suppose that $A$ is an integral domain. Prove that the polynomial ring $A[T]$ is 
  an integral domain.
]

#problem[
  Let $F$ be a field and let $f in F[T]$ be a polynomial of degree $>= 1$. An element $alpha in F$ is a root of $f$ if 
  $f(alpha) = 0$. Recall that $f(alpha) = phi(f)$ is the result 
  of applying 
  the ring homomorphism  $phi:F[T] -> F$ determined by the properties:
  $phi_(|F) = id$ and $phi(T) = alpha$. 

  + Prove that if $deg f = 2$ or $deg f = 3$ 
    then $f$ is irreducible if and only if 
    $f$ has no root in $F$.
  + Prove that in general, there are reducible polynomials with no root 
    in $f$ provided that $deg f >= 4.$
]

#problem[
  Let $d in ZZ$, let $f = T^2 - d in ZZ[T]$ 
  and consider the ring $ZZ[sqrt(d)] subset CC.$
  Assume that $forall a in ZZ, d eq.not a^2$. In that case, 
  one knows that $sqrt(d) in.not QQ$.

  +  Explain why $f = T^2 - d$ is irreducible in $QQ[T]$ and prove that
    $ QQ[T] slash angle.l T^2 - d angle.r tilde.eq QQ[sqrt(d)]. $
    (We often write $QQ(sqrt(d)) = QQ[sqrt(d)]$ for this field -- explanation later!)

  + Expain why $f = T^2 - d$ is irreducible in $ZZ[T]$ and prove that
    $ ZZ[T] slash angle.l T^2 - d angle.r tilde.eq ZZ[sqrt(d)] $
    is a free $ZZ$-module of rank 2.

  + Prove that $QQ(sqrt(d))$ may be identified with the field 
    of fractions of $ZZ[sqrt(d)].$
]

#problem[
  Let $A = ZZ[i]$. 
  Then $A$ is a Euclidean Domain with norm given by
  $ N(a  + b i ) = a^2 + b^2 "for" a,b in ZZ $ -- you are free to use this; for a reference see [Dummit-Foote, #math.section 8.1 example 3 p. 272].
  + Show that $N(alpha) = plus.minus 1 <=> alpha in A^times.$
  + Show for any integer $n$ that $A slash A dot n$ is a ring with 
    $n^2$ elements.
  + Show that $7$ is irreducible in $A$. 
    *Hint:* is it possible to write 
    $7 = a^2 + b^2$ for $a,b in ZZ$?
    Conclude that $A slash A dot 7$ is a field with $49$ elements.
]

#problem[
  Again let $A = ZZ[i]$ and keep the notation $N$ for the norm on $A$.
  + Show that if $N(alpha)$ is a prime integer, then $alpha$ is 
    irreducible and hence prime.
  + Show that $2 + i$ and $2 - i$ are both prime in $A$. 
  + Prove that $A slash A dot (2 + i)$ and $A slash A dot (2 -i)$ are 
    both fields, each with $5$ elements.
  + Prove that 
    $ A slash A dot 5 tilde.eq A slash A dot (2 + i) times A slash A dot (2 - i). $
    (Use the Chinese Remainder Theorem.)
]


#problem[
  Let $K$ be an uncountable field (e.g. $K = RR$ or $K = CC$).
  Prove that $K(T)$ contains a $K$-linearly independent subset which is uncountable.

  *Hint:* Consider the set $ { 1/(T-alpha) | alpha in K}. $
]


#problem[
  Let $K$ be a field, and let $p_1,p_2,...,p_r in K[T]$ be pairwise non-associate irreducible polynomials for some $r in NN$.
  Let $S$ be a new polynomial variable and consider the polynomial
  $ f = S^2 - p_1 dots p_r in K[S,T]. $

  + Prove that if $r > 0$ then $f$ is irreducible in $K(T)[S]$. 

    *Hint:* Argue that $f$ has no root in $K(T)$ just as in the classical proof that $sqrt(2)$ is irrational.

  + Explain how to deduce that $f$ is irreducible -- and hence prime -- 
    in $K[T,S]$. 

  + Let $A = K[T,S] slash angle.l f angle.r$ and write $s$ 
    for the image of $S$ in $A$. Prove that the integral domain $A$ 
    is a free $K[T]$-module on a basis ${1,s}$.

  + Prove that $K(T)[S] slash angle.l f angle.r$ may be identified with 
    the field of fractions of $K[S,T] slash angle.l f angle.r.$
]
