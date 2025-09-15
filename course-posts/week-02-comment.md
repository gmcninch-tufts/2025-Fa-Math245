---
title   : Week 2 comment about generators
date    : 2025-09-08
---

*Mea culpa* for the "generators" problem. This result is not correct:

> Let $G$ be a group, let $S_1,S_2 \subseteq G$ be subsets and let
> $H_i = \langle S_i \rangle$ for $i=1,2.$ Suppose that $\forall x \in
> S_1$ and $\forall y \in S_2$ we have $x y x^{-1} \in H_2$. Prove that
> $H_1$ normalizes $H_2$; i.e. prove that $\forall x \in H_1, \forall y
> \in H_2, x y x^{-1} \in H_2$

What I should have written was something like this:

> Let $G$ be a group, and let $H, K$ be subgroups of $G$. Suppose that
> $K = \langle S \rangle$ for some $S \subseteq G$.  Suppose that
> $\forall x \in H$ and $\forall y \in S$ we have $x y x^{-1}
> \in K$. Then  $H$ normalizes $K$.

For a proof, we can use the following statement:

> $(\clubsuit)$ \hspace[3mm] If $f:G \to H$ is a group homomorphism and if $S \subseteq G$ is any
> subset, then $f(\langle S \rangle) \subseteq \langle f(S) \rangle$.





