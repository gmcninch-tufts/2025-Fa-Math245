#import "@preview/grape-suite:3.1.0": exercise
#import exercise: project


#import "@preview/commute:0.3.0": node, arr, commutative-diagram

#import "@preview/ctheorems:1.1.3": *
#show: thmrules

#let problem = thmbox("problem", "Problem", base_level: 0, fill: rgb("#155DFC33"))

#show: project.with(
    title: "Problem Set week 13",
    university: "Tufts University",
    semester: "Fall 2025",
    seminar: "Math 245",
    faculty: "Prof. George McNinch",
    date: [due: 2025-11-19] 
)

#set enum(numbering: "a.")  


// operators
#let tensor = [$times.o$]
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

#let calB = math.cal("B")

#problem[
  Let $A$ be a local ring with unique maximal ideal $mm$,
  and write $k = A slash mm$ for the residue field of $A$.

  Suppose that $M$ is a free $A$-module of finite rank $n$.  Let
  $alpha_1,...,alpha_n in M slash mm M$ be a $k=A slash mm$-basis for
  $M slash mm M$, and let $x_1,...,x_n in M$ be elements for which
  $alpha_i = x_i + mm M$ for $i = 1, ... n$. Prove that $x_1,...,x_n$
  forms an $A$-basis for $M$.

] 

#problem[
    Let $A$ be a commutative ring and $P subset A$ a prime ideal.
    Denote by $A_P$ the _localization_ of $A$ at $P$; thus $A_P$ is a local
    ring with unique maximal ideal $mm = P^e = P dot A_P$.

    + Prove that $A_P slash P dot A_P$ is isomorphic to the field of
      fractions of the integral domain $A slash P$.

    + If $P$ is a maximal ideal of $A$ conclude that the fields $A slash P$ and
      $A_P slash P dot A_P$ are isomorphic.
]

#problem[
    Let $A$ be a PID, $n in NN$, let $F$ be a free $A$-module of finite rank
    and let $Phi in End_A (F)$ be an $A$-linear endomorphism.

    For a prime $p in A$, write $A_(p A)$ for the localization of $A$ at $p A$.
    Note that $Phi$ determines an $A_(p A)$-homomorphism
    $ id tensor Phi: A_(p A) tensor_A F -> A_(p A) tensor_A F. $
       
    
    + Fix an $A$-basis $calB$ for $F$. For $v in M$, we write
      $ v = sum_(b in calB) alpha_b b "for a function" alpha : calB -> A $
      and we write $[v]_calB = alpha in A^calB$, where $A^calB$ is the module of 
      all functions $calB -> A$ (recall that $|calB|= n < infinity$!)

      Thus $v |-> [v]_calB:F -> A^calB $ is an isomorphism of
      $A$-modules where $A^calB$ is the module of

      Show that there is a matrix $M in Mat_(calB times calB) (A)$ for
      which $ [Phi v]_calB = M dot [v]_calB "for" v in F. $
    
    + Let $d = det(Phi)$.  Prove that $id tensor Phi$ is an
      isomorphism -- i.e. is an _automorphism_ of $A_(p A) tensor_A
      F$ -- if and only if $gcd(d,p) = 1$.
        
      In particular if $d eq.not 0$, then $id tensor Phi$ is an
      automorphism for all but finitely many primes $p in A$.

]

#problem[
    Let $A$ be a commutative ring and let $M,N,P$ be $A$-modules.
    Prove that there is an isomorphism
    $ M tensor_A (N plus.o P) tilde.eq (M tensor_A N) plus.o (N tensor_A P). $
]

#problem[ Let $A$ be a PID and let $p,q in A$. Write $d = gcd(p,q) in
A$ for a greatest common divisor.

    Prove that:
    $ (A slash p A) tensor_A (A slash q ) tilde.eq A slash d A. $
]

#problem[ Let $F$ be a field and let $V,W$ be a finite dimensional
    vector spaces over $F$.

    Recall that the dual space $V^*$ is the vector space $Hom_F (V,F)$.

    + Show that $dim_F V = dim_F V^*$. *Hint:* exhibit a basis for $V^*$.

    + Show that there is an isomorphism
      $ V^* tensor_A W ->^tilde Hom_F (V,W). $

      *Hint:* Use the mapping property of $tensor$ to define the indicated map.
      Basis considerations show that this map is surjective. Now compare
      the dimension of the domain and co-domain.

]


Let $A$ be a commutative ring. let $M,M',N,N'$ be $A$-modules
and let $phi:M -> N$ and $phi':M -> N'$ be $A$-module homomorphisms. There
is a unique homomorphism of $A$-modules
$ phi tensor phi': M tensor_A N -> M' tensor_A N' $
such that
$ (phi tensor phi')(m tensor n) = phi(m) tensor phi'(n). $



#problem[
    Let $F$ be a field and let $phi:V -> W$ be a homomorphism of $F$-vector spaces (a
    "linear transformation") and let $X$ be an $F$-vector space.

    If $phi$ is injective, prove that $id_X tensor phi:X tensor_F V ->
    X tensor_F W$ is injective.

    *Remark:* This shows that the functor $X tensor_F -$ is _exact_ for
    a field $F$; indeed, combine the preceding observation with the
    result proved in class that the functor $Y tensor_A -$ is always
    right exact.  In general, an $A$-module $Y$ is said to be
    #highlight[flat] if $Y tensor_A -$ is exact.  ]

#problem[
    Let $A$ be a commutative ring and let $M$ be an $A$-module.
    If $F$ is a free $A$-module on $beta:calB -> F$, prove
    that $F tensor_A M$ is isomorphic to $display(plus.o.big_(b in calB) M)$, a direct sum of
    copies of $M$ index by $calB$. 
]
