---
tags:
- blog
- knownTheory
- longform
title: "Bayesian signal recovery"
author:
  - name: "Matthew Scott"
    affiliation: "University of British Columbia"
date: "29 April 2024"
categories: [compressed sensing, Bayes theorem]
bibliography: references.bib
callout-icon: false
---
The field of compressed sensing consists of quantifying how many linear
measurements are required to locate an unknown signal within a known prior
set. The *a priori* knowledge is of a deterministic kind; we only know the set to which the signal belongs. In this post we explore the process of signal recovery with a different kind of prior knowledge: that we know the signal to be sampled from a prior distribution, instead of a prior set. 

This assumption puts us into a Bayesian setting, for we have a prior distribution—before the measurements—and a posterior distribution: a distribution which has a support limited to signals that have measurements matching the observed measurements. The posterior distribution is given by conditioning the prior distribution on the observed measurements.

We recover the signal by sampling from this posterior distribution. Then we ask: How close
to the true signal can we expect our guess to be?

I will develop a mathematical description of this setting and then find theoretical guarantees about the accuracy of the signal recovery.

This blog post is an alternative presentation of some of the results and ideas
presented in [@jalalInstanceOptimalCompressedSensing2021]. It is presented there in the context of generative compressed sensing (compressed sensing using the range of neural networks as priors). The motivating principle of this blog post is to try to be rigorous in the
sense of making the underlying probability theory as understandable as
possible, for I had difficulty understanding the theoretical foundations behind
the proof in the original work. This is
my attempt at clarifying the theory within, with a focus on connecting it to my
understanding of probability theory.

## Setting up the setting
Given a signal $z^*
\in \mathbb{R}^n$ distributed according to some (prior) distribution $P_{z}$,
we compute $y:= Az^*$ which we understand as measuring $z^*$ with a measurement matrix $A \in \mathbb{R}^{m
\times n}$ with $m \leq n$ measurements. This gives us the (known) measurement vector $y:= Az^*$. For simplicity, we assume that the random variable $y \in  \mathbb{R}^m$
admits a density, and also that $P_z(\cdot)$ is compactly supported. We can then examine the posterior variable
$\hat{z} \sim p_{z^*|y}(\cdot)$ to see if $\hat{z}$ tends to be a good approximation to $z^*$. 

But what is $\hat{z}$, exactly? We know it is the variable following the posterior distribution, but what does that mean exactly, and how does it depend on $z^*$ and $y$? To answer these questions we offer a precise definition for $\hat{z}$. 

Define $\hat{z}$ as the unique random
variable satisfying the following two properties: 

 * $\hat{z}$ has the same marginal
distribution as $z^*$. 
 * $\hat{z}$ is conditionally independent of $z^*$ with
respect to $y$. This means that the dependence between the random variables
$\hat{z}$ and $z^*$ exclusively lies in the fact that $Az^*=y=A\hat{z}$, and
that they are otherwise independent. Conditioning on any fixed value of $y$,
$z^*$ and $\hat{z}$ are independent. To be even more precise, the following
holds for Borel sets $\mathcal{A}, \mathcal{A}^* \subseteq \mathbb{R}^n$;
$P((z, z^*) \in \mathcal{A} \times \mathcal{A}^*|y) = P(z \in \mathcal{A})P(z^* \in \mathcal{A}^*)$. 

We aim to establish that with high probability, $\hat{z}$
is no more than $\varepsilon$-away from $z^*$ for some $\varepsilon > 0$. This
is what we call "signal recovery".

To show the result we partition the support of $z^*$ into small components $\{ E_{i} \}_{i \in  [M]}$ with each $E_{i} \subseteq \mathbb{R}^n$ of radius no more than
$\frac{\varepsilon}{2}$. We will show that with high probability $z^*$ and
$\hat{z}$ lie in the same component.

## Signal recovery guarantee

We will introduce some discrete random variable $c^*$ dependent on $z^*$ to partition the distribution of $z^*$ into "component distributions" each supported on a distinct component of the support of $z^*$.
$$ P_{z^*}(\cdot) = \sum_{i=1}^M P_{z^*}(\cdot|c^*=i)P(c=i).$$
We think of $P_{z^*}(\cdot|c^*=i)$ as re-normalized components of the prior distribution.
We choose $c^*$ to be such that each distribution
$P_{z^*}(\cdot|c^*=i)$ is supported within a single component $E_{i}$ of the partition of the support.

We define $\hat{c}$ so that it depends on $\hat{z}$ in exactly the same way
that $c^*$ depends on $z^*$ (which is possible because the marginal
distributions of $\hat{z}$ and $z^*$ are identical). In the event that $\hat{z}$ lands in the same component as $z^*$, it follows that $\lVert z^* - \hat{z}\rVert_{2} \leq \varepsilon$, which we understand as the event that the signal recovery has been successful; the guess $\hat{z}$ turned out to be close to the true signal $z^*$. We will show
that this happens with high probability. The event of failure
is then $\{\hat{c} \neq c^*\}$. Our aim is to show that this event occurs only with small probability. 

We therefore consider
$$ P(\hat{c} \neq c^*) = \sum_{i = 1}^M
P(\hat{c} \neq i, c^* =i).$$
We begin by considering $P(\hat{c} \neq
0, c^* = 0)$. Decompose the probability by values of $y$: 
$$\begin{align*}
P(\hat{c}\neq 0, c^*=0) &= P(c^*=0)P(\hat{c} \neq 0|c^*=0)\\ &= P(c^* =0) \int
P(\hat{c} \neq 0|y, c^*=0)p_{y}(y| c^*=0) \, dy, 
\end{align*}$$
where
$P(\hat{c} \neq 0 | y, c^*=0)$ is the probability of the event $\{ \hat{c} \neq
0 \}$ conditioned on both the value that $y$ takes and on the event $\{ c^* =0
\}$. Then $P(\hat{c} \neq 0 | y, c^*=0) = P(\hat{c} \neq 0|y)$ is a direct
application of the conditional independence of $c$ and $\hat{c}$ with respect
to $y$. So we can write $$\ldots = P(c^* =0) \int P(\hat{c} \neq
0|y)p_{y}(y|c^*=0) \, dy.$$ Now is the time to apply Baye's rule on the first
factor inside the integral. In this setting, Baye's rule yields a density
function in $y$ because of the dependence of $y$ on the integral. 
$$\ldots=P(c^*=0)\int p(y|\hat{c}\neq 0) \frac{P(\hat{c} \neq 0)}{p(y)} p(y|c^*=0) \, dy.$$
We expand the density of $y$: $$p(y) = P(\hat{c}=0)p(y|\hat{c}=0) +
P(\hat{c} \neq 0)p(y|\hat{c}\neq 0).$$ Plugging this into the previous chain of
equalities, and separating by the denominator,

$$\ldots \leq \int \frac{P(c^*=0) p(y|c^*=0)P(\hat{c}\neq 0)p(y|\hat{c} \neq
0)}{2\max[P(\hat{c} = 0)p(y|\hat{c}=0), P(\hat{c} \neq 0)p(y|\hat{c} \neq 0)]}
\, dy$$

Now notice that by the fact that $c^*$ and $\hat{c}$ are identically
distributed, $P(c^*=0) = P(\hat{c}=0)$ and $p(y|c^*=0) = p(y|\hat{c}=0)$.
Plugging this in,

$$\ldots = \int \min\{P(\hat{c}=0)p(y|\hat{c}=0), P(\hat{c}\neq 0)p(y|\hat{c}
\neq 0)\} \, dy$$
$$\leq \int \min\{p(y|\hat{c}=0),p(y|\hat{c}\neq 0)\} \, dy$$
$$=1 - \text{TV}(p_{y}(\cdot|\hat{c}=0), p_{y}(\cdot|\hat{c} \neq 0)).$$

Then considering that the argument above holds identically for all other $i \in  [M]$, we find that
$$\begin{align*} P(\hat{c} \neq c^*) &= \sum_{i = 1}^M P(\hat{c} \neq i, c^*
=i)\\ &\leq \sum_{i = 1}^M (1- \text{TV}(p_{y}(\cdot|\hat{c}=i),
p_{y}(\cdot|\hat{c} \neq i))).\\ \end{align*}$$ So we can infer that $\hat{c} = c^*$ with probability at least 
$$1 - M + \sum_{i =
1}^M\text{TV}(p_{y}(\cdot|\hat{c}=i), p_{y}(\cdot|\hat{c} \neq i)).$$

Let us stare at this expression a little bit. We remember that the measurements $y$ is a vector-valued random variable dependent on $z^*$ through the action of $A$; $y = A z^*$. Different distributions on $z^*$ give rise to different distributions on $y$. The total variation in the expression above measures the
extent to which the distribution of the measurements arising from signals
*outside* of some fixed piece $E \subseteq \mathbb{R}^n$ of the prior distribution is mixed with the distribution of
measurement vectors arising from the signals *inside* of $E$. If these two induced distributions on $y$ have disjoint support, then the total
variation associated to $E$ is $1$. If this is the case for all pieces $\{E_i\}_{i \in  M}$, then we have a probability of success of $1$.
Intuitively, this makes sense because if the measurements are well separated for different
pieces of the support in the prior, then we should be able to reverse-engineer the true signal from the observed measurements.

## Conclusion
The result we derived yields a powerful insight: that whether we can recover a
random signal depends on how much the measurement process mixes up the prior
distribution of the signal. If there is not too much mixing, then the true signal
can be guessed by sampling from the posterior distribution. We also notice that
nowhere did we use the linearity of $A$, so this result seems to generalize to
nonlinear measurements.
