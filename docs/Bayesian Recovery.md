---
tags:
- blog
- knownTheory
- longform
---
# Bayesian Recovery
The field of compressed sensing consists of quantifying how many measurements are required to locate an unknown measurement within a known prior set. In this post we explore how we might describe a Bayesian type of signal recovery. If a random signal is known to be sampled from a given prior distribution, and then we perform a number of linear measurements on the sampled signal, we obtain a posterior distribution on all possible signals which agree with the measurements. If we make a guess by sampling from this posterior distribution, how close can we expect our guess to be to the true signal?

We will develop a mathematical description of this setting with which we can find theoretical guarantees. This blog post is an attempt at a an alternative presentation of the results and ideas presented in this [paper](http://arxiv.org/abs/2106.11438) from the field of generative compressed sensing.

We first introduce some notation to describe the problem. Given a signal $z^* \in \mathbb{R}^n$ distributed according to some (prior) distribution $P_{z}$, we measure $z^*$ with a random gaussian measurement matrix $A \in \mathbb{R}^{m \times n}$ with $m \leq n$, and where each entry $A_{ij}$ of $A$ is distributed i.i.d. $\overset{\textrm{iid}}{\sim} \mathcal{N}\left( 0, \frac{1}{m} \right)$. This gives us the (known) measurement vector $y:= Az^*$. We can then examine the posterior variable $\hat{z} \sim p_{z^*|y}(\cdot)$. 

But what is $\hat{z}$, exactly? We define $\hat{z}$ as the unique random variable satisfying the following two properties:
- $\hat{z}$ has the same distribution as $z^*$.
- $\hat{z}$ is conditionally independent of $z^*$ with respect to $y$. This means that the dependence between the random variables $\hat{z}$ and $z^*$ exclusively lies in the fact that $Az^*=y=A\hat{z}$, and that they are otherwise independent. Conditioning on any fixed value of $y$, $z^*$ and $\hat{z}$ are independent.
We try to establish that with high probability, $\hat{z}$ is no more than $\varepsilon$-away from $z^*$ for some $\varepsilon > 0$. This is what we call "signal recovery" because we can understand $\hat{z}$ as the conditioned $z^*$ once $y$ is known. Hence $\hat{z}$ is the posterior random variable.

To show the result we partition the support of  $z^*$ into small components $\{ E_{i} \}$ with each $E_{i} \subseteq \mathbb{R}^n$ of radius no more than $\frac{\varepsilon}{2}$, and show that with high probability $z^*$ and $\hat{z}$ lie in the same component.

## Part 1: Splitting the Prior Into Components
We will use dependence on some deterministic random variable to split the prior distribution into sub-distributions each supported on a distinct component of the support. Introduce the random variable $c^* \in \{ 0,\dots,M \}$ to be dependent on $z^*$ with the sole purpose to split up the distribution of $z^*$ into pieces.
$$
P_{z^*}(\cdot) = \sum_{i=1}^M P_{z^*}(\cdot|c^*=i)P(c=i).
$$
We can make choose the split to be such that each distribution $P_{z^*}(\cdot|c^*=i)$ is supported within a single component $E_{i}$ of radius no more than $\frac{\varepsilon}{2}$. In the event that $\hat{z}$ lands in the same component as $z^*$, we get approximate recovery. We will show that this happens with high probability.

We define $\hat{c}$ so that it depends on $\hat{z}$ exactly in the way that $c^*$ depends on $z^*$ (which is possible because the marginal distributions of $\hat{z}$ and $z^*$ are identical). Then the event of failure is $\{\hat{c} \neq c^*\}$. Our aim is now to show that this event occurs only with small probability, exponentially decaying in the number of measurements.

We show the result when $M=2$, and leave the general case to the reader. We wish to bound $P(\hat{c} \neq c^*)$.
$$
P(\hat{c} \neq c^*) = \sum_{i = 1}^M P(\hat{c} \neq i, c^* =i)
$$
For simplicity, we will evaluate $P(\hat{c} \neq 0, c^* = 0)$. Let the event $\{ c^* = 0 \}$ occur, and then decompose the probability by values of $y$.
$$P(\hat{c}\neq 0, c^*=0) = P(c^*=0)P(\hat{c} \neq 0|c^*=0) = P(c^* =0) \int P(\hat{c} \neq 0|y, c^*=0)p_{y}(y| c^*=0) \, dy$$
Then we use the fact that $P(\hat{c} \neq 0 | y, c^*=0) = P(\hat{c} \neq 0|y)$ as a direct application of conditional independence.

$$\dots = P(c^* =0) \int P(\hat{c} \neq 0|y)p_{y}(y|c^*=0) \, dy.$$

Now is the time to apply Baye's rule on the first factor inside the integral. In this setting, Baye's rule yields a density function in $y$ because of the dependence of $y$ on the integral.
$$
\dots=P(c^*=0)\int p(y|\hat{c}\neq 0) \frac{P(\hat{c} \neq 0)}{p(y)} p(y|c^*=0) \, dy.
$$
Now we perform the expansion $p(y) = P(\hat{c}=0)p(y|\hat{c}=0) + P(\hat{c} \neq 0)p(y|\hat{c}\neq 0)$. Plugging this into the above, and separating by the denominator,

$$\dots \leq \int \frac{P(c^*=0) p(y|c^*=0)P(\hat{c}\neq 0)p(y|\hat{c} \neq 0)}{2\max[P(\hat{c} = 0)p(y|\hat{c}=0), P(\hat{c} \neq 0)p(y|\hat{c} \neq 0)]} \, dy$$

Now notice that by the fact that $c^*$ and $\hat{c}$ are identically distributed, $P(c^*=0) = P(\hat{c}=0)$ and $p(y|c^*=0) = p(y|\hat{c}=0)$. Plugging this in,

$$
\dots = \int \min\{P(\hat{c}=0)p(y|\hat{c}=0), P(\hat{c}\neq 0)p(y|\hat{c} \neq 0)\} \, dy 
$$

$$
\leq \int \min\{p(y|\hat{c}=0),p(y|\hat{c}\neq 0)\} \, dy
$$

$$
=1 - TV(p_{y}(\cdot|\hat{c}=0), p_{y}(\cdot|\hat{c} \neq 0))
$$

the total variation term then corresponds to the success probability. In one phrase: the success probability is at least the total variation distance between the conditional distributions of the measurements inside the piece versus outside the piece.

Then denote $\hat{i}$ the index of the piece which has the largest such total variation. 
# In progress: multiple classes.

$$
P(\hat{c} \neq c^*) = \sum_{i=1}^M P(c^*=i, \hat{c} \neq i)
$$

$$
\leq M \max_{i}(1-TV(p_{y}(\cdot|\hat{c}=i), p_{y}(\cdot|\hat{c} \neq i))).
$$

This factor of $M$ can probably be removed because of the loose upper bound from before.

Notice that when the total variation term is large, the probability of failure goes to zero. Hence we find that we have recovery with high probability.
___
Main source: [[@jalalInstanceOptimalCompressedSensing2021]]
[[2022-11-01]]