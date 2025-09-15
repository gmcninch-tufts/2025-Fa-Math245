
#import "@preview/grape-suite:3.1.0": exercise
#import exercise: project


#show: project.with(
    title: [Assignment 2],
    seminar: [Math245],
    faculty: [George McNinch],
    semester: [Fall 2025, Tufts University],
    date: [due: 2025-09-15]
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
#let ZZn = n => $ZZ slash #n ZZ$
#let Inn= math.op("Inn")
#let Stab = math.op("Stab")

#set enum(numbering: "a.")  

#question[
    *Deleted* (see comments on the course web page.)

    #strike[Let $G$ be a group, let $S_1,S_2 subset.eq G$ be subsets and let $H_i = angle.l S_i angle.r$ for 
    $i=1,2.$ Suppose that $forall x in S_1$ and $forall y in S_2$ we have $x y x^(-1) in H_2$. Prove that $H_1$ normalizes $H_2$; i.e. prove that
    $forall x in H_1, forall y in H_2, x y x^(-1) in H_2$]
]

#question[
    Let $n in NN$, $n > 0$ and consider the group 
    $S = S(ZZn(n))$ of permutations of the set $ZZn(n)$.

    + For $x in ZZn(n)$, recall that the additive order $o(x)$ is a 
      divisor of $n$. 

      Describe the _cycle structure_ of the element $sigma in S$ defined by the rule $sigma(z) = z + x.$  Show that the order of $sigma$ is 
      $o(x)$. 
    + Suppose that $n =p$ is a prime number, and let $k in ZZ$ with $gcd(k,p)  = 1$. 
      Thus the class $overline(k)$ of $k$ in $ZZn(p)$ lies in the group $(ZZn(p))^times$
      of _units_. The multiplicative order $o(overline(k))$ of $overline(k)$ is a divisor of $p-1$.

      Describe the _cycle structure_ of the element $tau in S$ defined by the rule
      $tau(z) = overline(k) dot z$. Show that the order of $tau$ is 
      $o(overline(k))$.
]

#question[
    Let $G$ be the group of invertible $2 times 2$ matrices with entries in $F=ZZn(p)$ for a prime number $p$; the group operation is given by matrix multiplication.

    + Show that $|G| = (p^2 -1)(p^2 - p).$
    + Show that $T= { mat(t,0;0,s) | t,s in F^times}$ is a subgroup of $G$. Here
      $F^times$ denotes the multiplicative group of invertible elements of $F = ZZn(p).$ Also show that $ T "is isomorphic to" F^times times F^times $.
    + Show that $U = { mat(1,a;0,1) | a in F}$ is a subgroup of $G$ isomorphic to the  
      addtive group $F$.
    + Show that $T$ normalizes $U$. Find the order of the group $B=T U$.
    + A line in $F^2$ is by definition a linear subspace of dimension 1. 
      For any non-zero vector $v$, the set $F v = op("Span")(v)$ is a line.
      Note that $G$ acts in a natural way on the set of lines in $F^2$.

      If we write $e = mat(1;0)$ and $f = mat(0;1)$ for the standard basis of $F^2$, show that $B$ is the stabilizer of the line $F e$.
    + Show that $G$ acts transitively on the set of lines in $F^2$.
    + Conclude that the set of lines in $F^2$ is in bijection with the set $G slash B$.
      How many lines are there in $F^2$?
]

#question[
    Let $G$ be a group and let $Omega$ be a $G$-set.
    If $x,y in Omega$ and $x = g y$ for some $g in G$, prove that the stabilizers
    $G_x = Stab_G (x)$ and $G_y = Stab_G (y)$ are _conjugate_. More precisely, show that
    $ G_x = g dot G_y dot g^(-1) $
]

#question[
    Let $G$ be a group. $G$ acts on itself by conjugation: for $g,x in G$, the action of $g$ on $x$ is given by
    $Inn_g x = g x g^(-1)$.

    + Prove that the assignment $g |-> Inn_g$ determines a group homomorphism
      $G -> Aut(G)$ where $Aut(G)$ is the group of automorphisms of $G$.

    + Let $Z = {g in G | forall x in G, g x = x g}$ be the _center_ of $G$. Prove that
      $Z = ker Inn$.

]

For the action of $G$ on itself by conjugation, the stabilizer $Stab_G (x)$ of $x in G$ is usually written $C_G (x)$ and is called the _centralizer_ of $x$ in $G$. Note that
$ C_G (x) = {y in G | y x y^(-1) = x} = {y in G | y x = x y.} $

#question[
    Let $I = I_n$ be a finite set with $n$ elements, and let $S = S_n = S(I_n)$ be the group of permutations of $I$.
    Recall that $|S| = n!$.
    + Prove that there are $(n-1)!$ $n$-cycles in $S$. *Hint*: If the elements 
      of $I$ are writen $I= {a_1,a_2,...,a_n}$, then the $n$-cycles $(a_1,a_2,...,a_n)$ and $(a_2,a_3,...,a_n,a_1)$ are _equal_.
    + Prove that if $sigma$ is an $n$-cycle in $S$, then $C_S (sigma) = 
      angle.l sigma angle.r$
]
