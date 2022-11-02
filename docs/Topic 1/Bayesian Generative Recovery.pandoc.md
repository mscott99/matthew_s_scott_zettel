#blog/draft #knownTheory

We first set out to describe the problem and what we seek as a result.
Given a signal [$z^{\ast} \in \mathbb{R}^{n}$]{.math .math-inline
.is-loaded} distributed according to some (prior) distribution
[$P_{z}$]{.math .math-inline .is-loaded} we measure [$z^{\ast}$]{.math
.math-inline .is-loaded} with a measurement matrix [$A$]{.math
.math-inline .is-loaded} which gives us the (then known) measurement
vector [$y:=Az^{\ast}$]{.math .math-inline .is-loaded}. Once [$y$]{.math
.math-inline .is-loaded} is known, we examine the posterior variable
[$\hat{z} \sim p_{z|y}( \cdot )$]{.math .math-inline .is-loaded}.

Specifically, we define [$\hat{z}$]{.math .math-inline .is-loaded} from
two properties:

-   [$\hat{z}$]{.math .math-inline .is-loaded} is distributed according
    to the same distribution as [$z^{\ast}$]{.math .math-inline
    .is-loaded}
-   [$\hat{z}$]{.math .math-inline .is-loaded} is conditionally
    independent of [$z^{\ast}$]{.math .math-inline .is-loaded} with
    respect to [$y$]{.math .math-inline .is-loaded}; [$\hat{z}$]{.math
    .math-inline .is-loaded} and [$z^{\ast}$]{.math .math-inline
    .is-loaded} are independent in all other respects than their mutual
    link to [$y$]{.math .math-inline .is-loaded}:
    [$Az^{\ast} = y = A\hat{z}$]{.math .math-inline .is-loaded}.

Then we wish to check that the probability that [$\hat{z}$]{.math
.math-inline .is-loaded} is far from [$z^{\ast}$]{.math .math-inline
.is-loaded} is low.

To show the result, we split the support of [$z^{\ast}$]{.math
.math-inline .is-loaded} into small components of radius
[$\varepsilon$]{.math .math-inline .is-loaded} and show that with high
probability [$z^{\ast}$]{.math .math-inline .is-loaded} and
[$\hat{z}$]{.math .math-inline .is-loaded} lie in the same component.

## Part 1: Splitting the Prior Into Components {#part-1-splitting-the-prior-into-components heading="Part 1: Splitting the Prior Into Components"}

We will use dependence on some deterministic random variable to split
the prior into components. Introduce the random variable
[$c^{\ast} \in \{ 0,\ldots,M\}$]{.math .math-inline .is-loaded} which we
make dependent on [$z^{\ast}$]{.math .math-inline .is-loaded} in a way
that lets us make a good split

::: {.math .math-block .is-loaded}
$$P_{z^{\ast}} = \sum\limits_{i = 1}^{M}P_{z^{\ast}}( \cdot |c^{\ast} = i)P(c = i).$$
:::

We make a smart split so that every component is of radius
[$2\varepsilon$]{.math .math-inline .is-loaded}. We make the flawed
assumption that if [$z_{\ast}$]{.math .math-inline .is-loaded} and
[$\hat{z}$]{.math .math-inline .is-loaded} are in different components,
then they are \"far apart\" and we have failure. If they are in the same
component, we have success.

We define [$\hat{c}$]{.math .math-inline .is-loaded} such that it is
dependent on [$\hat{z}$]{.math .math-inline .is-loaded} in exactly the
same way as [$c^{\ast}$]{.math .math-inline .is-loaded} is dependent on
[$z^{\ast}$]{.math .math-inline .is-loaded}. Then the event of failure
is [$\{\hat{c} \neq c^{\ast}\}$]{.math .math-inline .is-loaded}. Our aim
is now to show that this event occurs with low probability, specifically
exponentially small in the number of measurements.

## Part 2: Bounding the Probability of Failure {#part-2-bounding-the-probability-of-failure heading="Part 2: Bounding the Probability of Failure"}

We wish to bound [$P(\hat{c} \neq c^{\ast})$]{.math .math-inline
.is-loaded}. First we decompose this term by values of
[$c^{\ast}$]{.math .math-inline .is-loaded}.

::: {.math .math-block .is-loaded}
$$P(\hat{c} \neq c^{\ast}) = \sum\limits_{i = 1}^{M}P(\hat{c} \neq i,c^{\ast} = i)$$
:::

For simplicity, we will focus on evaluating
[$P(\hat{c} \neq 0,c^{\ast} = 0)$]{.math .math-inline .is-loaded}. We
will proceed by letting the event [$\{ c^{\ast} = 0\}$]{.math
.math-inline .is-loaded} occur first, and then decompose on all the
possibilities of y.

::: {.math .math-block .is-loaded}
$$P(\hat{c} \neq 0,c^{\ast} = 0) = P(c^{\ast} = 0)P(\hat{c} \neq 0|c^{\ast} = 0) = P(c^{\ast} = 0)\int P(\hat{c} \neq 0|y,c^{\ast} = 0)p_{y}(y|c^{\ast} = 0)\, dy$$
:::

Then we use the fact that
[$P(\hat{c} \neq 0|y,c^{\ast} = 0) = P(\hat{c} \neq 0|y)$]{.math
.math-inline .is-loaded} as a direct application of conditional
independence.

::: {.math .math-block .is-loaded}
$$\cdots = P(c^{\ast} = 0)\int P(\hat{c} \neq 0|y)p_{y}(y|c^{\ast} = 0)\, dy.$$
:::

Now is the time to apply Bayes rule. We do so on the first factor.
Because of the dependence of [$y$]{.math .math-inline .is-loaded} on the
integral, this converts to a density function in [$y$]{.math
.math-inline .is-loaded}.

::: {.math .math-block .is-loaded}
$$\cdots = P(c^{\ast} = 0)\int p(y|\hat{c} \neq 0)\frac{P(\hat{c} \neq 0)}{p(y)}p(y|c^{\ast} = 0)\, dy.$$
:::

Now we can perform the expansion
[$p(y) = P(\hat{c} = 0)p(y|\hat{c} = 0) + P(\hat{c} \neq 0)p(y|\hat{c} \neq 0)$]{.math
.math-inline .is-loaded}. Plugging this into the above, and separating
by the denominator,

::: {.math .math-block .is-loaded}
$$\cdots \leq \int\frac{P(c^{\ast} = 0)p(y|c^{\ast} = 0)P(\hat{c} \neq 0)p(y|\hat{c} \neq 0)}{2\max\lbrack P(\hat{c} = 0)p(y|\hat{c} = 0),P(\hat{c} \neq 0)p(y|\hat{c} \neq 0)\rbrack}\, dy$$
:::

Now notice that by the fact that [$c^{\ast}$]{.math .math-inline
.is-loaded} and [$\hat{c}$]{.math .math-inline .is-loaded} are
identically distributed, [$P(c^{\ast} = 0) = P(\hat{c} = 0)$]{.math
.math-inline .is-loaded} and
[$p(y|c^{\ast} = 0) = p(y|\hat{c} = 0)$]{.math .math-inline .is-loaded}.
Plugging this in,

::: {.math .math-block .is-loaded}
$$\cdots = \int\min\{ P(\hat{c} = 0)p(y|\hat{c} = 0),P(\hat{c} \neq 0)p(y|\hat{c} \neq 0)\}\, dy$$
:::

::: {.math .math-block .is-loaded}
$$\leq \int\min\{ p(y|\hat{c} = 0),p(y|\hat{c} \neq 0)\}\, dy$$
:::

::: {.math .math-block .is-loaded}
$$= 1 - TV(p_{y}( \cdot |\hat{c} = 0),p_{y}( \cdot |\hat{c} \neq 0))$$
:::

the total variation term then corresponds to the success probability. In
one phrase: the success probability is at least the total variation of
the conditional distributions of the measurement vector.

## Part 3: Bringing it Together {#part-3-bringing-it-together heading="Part 3: Bringing it Together"}

::: {.math .math-block .is-loaded}
$$P(\hat{c} \neq c^{\ast}) = \sum\limits_{i = 1}^{M}P(c^{\ast} = i,\hat{c} \neq i)$$
:::

::: {.math .math-block .is-loaded}
$$\leq M\max\limits_{i}(1 - TV(p_{y}( \cdot |\hat{c} = i),p_{y}( \cdot |\hat{c} \neq i))).$$
:::

This factor of [$M$]{.math .math-inline .is-loaded} can probably be
removed because of the loose upper bound from before.

## Part 4: Recovery {#part-4-recovery heading="Part 4: Recovery"}

Recovery occurs because a Gaussian matrix always separates a sphere from
its surroundings with high probability. Hence we get such a probability
for each sphere. With high probability this separation is great for all
the balls. Then conditionally on this, with high probability
[$\hat{c} = c^{\ast}$]{.math .math-inline .is-loaded} and therefore
[$\hat{c}$]{.math .math-inline .is-loaded} and [$c^{\ast}$]{.math
.math-inline .is-loaded} are within a distance [$\varepsilon$]{.math
.math-inline .is-loaded} of each other.

For some prior set [$T \in \mathbb{R}^{n}$]{.math .math-inline
.is-loaded} and a measurement basis
[$\{\phi_{i}\}_{i \in \lbrack n\rbrack}$]{.math .math-inline .is-loaded}
sampled with probability [$p = \{ p_{i}\}$]{.math .math-inline
.is-loaded} , we define the uneven-coherence as

::: {.math .math-block .is-loaded}
$$\alpha = \frac{1}{\sqrt{n}}\sup\limits_{i \in \lbrack n\rbrack,x \in T \cap B_{2}}\left\langle \phi_{i}\sqrt{\frac{1}{p_{i}}},x \right\rangle$$
:::

which in therms of the the coherences
[$\alpha_{i} = \sup\limits_{x \in T \cap B_{2}}\left\langle \phi_{i},x \right\rangle$]{.math
.math-inline .is-loaded} (the per-vector coherences), is

::: {.math .math-block .is-loaded}
$$\alpha = \max\limits_{i \in \lbrack n\rbrack}\left( \frac{\alpha_{i}}{\sqrt{np_{i}}} \right).$$
:::

If we maximise the [$p_{i}$]{.math .math-inline .is-loaded} for a given
set of incoherences [$\{\alpha_{i}\}$]{.math .math-inline
.is-loaded}(set which we think of as a vector), we further have that

::: {.math .math-block .is-loaded}
$$\alpha = \parallel \{\alpha_{i}\} \parallel_{2}^{2}.$$
:::

(see Optimal Incoherence of Unevenly Subsampled Measurements for the
proof).

Finally, we remark that we get back the standard coherence parameter if
we take [$p$]{.math .math-inline .is-loaded} as the uniform probability
vector.

------------------------------------------------------------------------

Main source: \@jalalInstanceOptimalCompressedSensing2021

------------------------------------------------------------------------

2022-11-01
