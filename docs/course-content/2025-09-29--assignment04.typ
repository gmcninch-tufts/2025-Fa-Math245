#import "@preview/grape-suite:3.1.0": exercise
#import exercise: project


#import "@preview/ctheorems:1.1.3": *
#show: thmrules

#let question = thmbox("question", "Question", base_level: 0, fill: rgb("#155DFC33"))

#show: project.with(
    title: "Problem Set 4",
    university: "Tufts University",
    semester: "Fall 2025",
    seminar: "Math 245",
    faculty: "Prof. George McNinch",
    date: [due: 2025-10-01] 
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

#let Cl = math.op("Cl")


#question[

  Let $G$ be a group and let $H,K subset.eq G$ be subgroups of
  $G$. Suppose that $H$ and $K$ are both normal in $G$, and that $H
  inter K = {1}.$ Recall that $H K$ is a subgroup of $G$. Prove that
  the natural map $H times K -> H K$ given by $(h,k) |-> h dot k$ is a
  group isomorphism.
  
  Recall that the group structure on the cartesian product is given
  for $(h,k), (h',k') in H times K$ by: $ (h,k) dot (h',k') = (h h', k
  k') "," #h(5mm) (h,k)^(-1) = (h^(-1),k^(-1)) #h(3mm) "and" 1_(H
  times K) = (1_H,1_K); $ this is the #highlight[direct product] of
  $G$ and $H$.  ]

#question[

  Let $phi:G -> H$ be a surjective group homomorphism, and suppose
  that $N subset.eq H$ is a normal subgroup of $H$.  Prove that
    $phi^(-1)(N) = {g in G | phi(g) in N}$ is a normal subgroup of $G$.

    *update:* The hypothesis that $phi$ is surjective is not needed.
  ]

#question[

  Suppose that $G$ and $G'$ are groups, let $H,K$ be subgroups of $G$,
  and let $H',K'$ be subgroups of $G'$.
    
  Assume that 
  - $H$ normalizes $K$ and $H'$ normalizes $K'.$
  - $G = angle.l K, H angle.r = K H$ and $G' = angle.l K', H' angle.r = K' H'.$
  - $K inter H = {1}$ and $K' inter H' = {1}.$
  
  - there are group isomorphisms $phi:H ->^tilde H'$ and $psi:K
  ->^tilde K'$.  Since $H$ normalizes $K$, for $h in H$ we know that
  the restriction of $Inn_h$ to $K$ determines an automorphism of $K$;
  similarly, for $h' in H'$, $Inn_h'$ determines an automorphism of
  $K'$.
   
  We finally suppose
  - for $h in H$ and $k in K$ we have $psi(Inn_h k) = Inn_phi(h) psi(k).$

  Then there is a group isomorphism $Phi:G -> G'$ given for $(k,h) in
  K H = G$ by the rule $ Phi(k,h) = psi(k) phi(h) in K' H' = G' $.

    *update:* I really should have written that $Phi:G -> G'$ is defined
    by the rule $ Phi(k h) = psi(k) phi(h) in K' H' = G' "for" k h in K H = G. $
    Note that under the hypotheses, $G$ may be identified as a set with the direct product
    $H times K$ - that is what a wrote $(k,h)$ for an element of $G$.
    
] <question:group-isom>

#question[

  For a prime number $p$, write $FF_p = ZZ slash p ZZ$ and let $ H_p =
  { mat(1, a, b; 0, 1, c; 0, 0, 1)|a,b,c in FF_p} $ so that $H_p$ is a
  subgroup of $GL_3 (FF_p)$ of order $p^3$. (You should at least think
  through why this is so, though you needn't submit the details).

  + Prove that $H_2$ is isomorphic to $D_8 = D_(2 dot 4)$, the dihedral group with 8 
    elements.

    *Hint*: find $sigma,tau in H_2$ with $o(sigma) = 4$, $o(tau) = 2$
    which have the property that $tau sigma tau = sigma^(-1)$. Then $H_2
    = angle.l sigma angle.r dot angle.l tau angle.r$. Now use the
    solution to @question:group-isom.

  + Show that $H_p$ is a $p$-Sylow subgroup of $GL_3(FF_p)$.
]

#question[

  Let $G$ be a finite group, let $p$ be a prime number, and let $P in
  Syl_p (G)$.  Let $ H = N_G (P) = { g in G | Inn_g P = P} $ be the
  normalizer of $P$ in $G$. Prove that $N_G (H) = H$. (In words: the
  normalizer of a Sylow $p$-subgroup is self-normalizing).  ]

#question[
  Suppose that $F$ is a field.
  + Show that the ideals of $F$ are ${0}$ and $F$.
  + Deduce that if $R$ is any commutative ring (with $0_R eq.not 1_R$), 
    then  any homomorphism $ phi:F -> R $ is injective.
  
  *Note*: We insist that a ring homomorphism $f:R_1 -> R_2$ preserve the identity elements:
  $f(1_R_1) = 1_R_2.$ 
]

#question[

  Let $D in ZZ$ and suppose that $D$ is square-free - i.e. for any
  prime number $p$, $p^2 divides.not D$.

  If $D equiv 1 (mod 4)$ let $ omega = (1 + sqrt(D))/2 $ and show that
  $ZZ[omega] = { a + b omega | a,b in ZZ}$ forms a subring of
  $CC$.
]
