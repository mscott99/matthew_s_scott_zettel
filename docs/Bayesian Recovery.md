---
tags:
- blog
- knownTheory
- longform
---

# Bayesian Recovery
## Introduction
This blog post is an attempt at a an alternative presentation of the results and ideas presented in this [paper](http://arxiv.org/abs/2106.11438).
## Body
We first set out to describe the problem and what we seek as a result. Given a signal $z^* \in \mathbb{R}^n$ distributed according to some (prior) distribution $P_{z}$ we measure $z^*$ with a random gaussian measurement matrix $A \in \mathbb{R}^{m \times n}$ with $m \leq n$ where each entry $A_{ij}$ is distributed i.i.d. $\sim \mathcal{N}\left( 0, \frac{1}{m} \right)$. This gives us the (known) measurement vector $y:= Az^*$. Once $y$ is known, we examine the posterior variable $\hat{z} \sim p_{z^*|y}(\cdot)$. 

Formally, we define $\hat{z}$ as the unique random variable satisfying the following two properties:

-  $\hat{z}$ is distributed according to the same distribution as $z^*$
- $\hat{z}$ is conditionally independent of $z^*$ with respect to $y$; this means that the dependence between the random variables $\hat{z}$ and $z^*$ only lies in the fact that $Az^*=y=A\hat{z}$.

We will try to establish that with high probability, $\hat{z}$ is no more than $\varepsilon$-away from $z^*$. This is what we call "signal recovery" because we can understand $\hat{z}$ as the conditioned $z^*$ once $y$ is known. Hence $\hat{z}$ is the posterior random variable

To show the result, we partition the support of  $z^*$ into small components $\{ E_{i} \}$ with each $E_{i} \subseteq \mathbb{R}^n$ of radius no more than $\frac{\varepsilon}{2}$, and show that with high probability $z^*$ and $\hat{z}$ lie in the same component.

## Part 1: Splitting the Prior Into Components

We will use dependence on some deterministic random variable to split the prior distribution into sub-distributions that are supported on individual components of the support. Introduce the random variable $c^* \in \{ 0,\dots,M \}$ which we make dependent on $z^*$ so that we obtain a split

$$
P_{z^*}(\cdot) = \sum_{i=1}^M P_{z^*}(\cdot|c^*=i)P(c=i).
$$

We make a smart split so that each distribution $P_{z^*}(\cdot|c^*=i)$ is supported in a single component $E_{i}$ of radius no more than $\frac{\varepsilon}{2}$. In the event that $\hat{z}$ lands in the same component as $z^*$, we get approximate recovery. We will show that this happens with high probability.

We define $\hat{c}$ such that it is dependent on $\hat{z}$ in exactly the same way as $c^*$ is dependent on $z^*$. Then the event of failure is $\{\hat{c} \neq c^*\}$. Our aim is now to show that this event occurs with low probability, specifically exponentially small in the number of measurements.

## Part 2: Bounding the Probability of Failure
We show the result when $M=2$.
We wish to bound $P(\hat{c} \neq c^*)$. First we decompose this term by values of $c^*$.

$$
P(\hat{c} \neq c^*) = \sum_{i = 1}^M P(\hat{c} \neq i, c^* =i)
$$

For simplicity, we will focus on evaluating $P(\hat{c} \neq 0, c^* = 0)$. We will proceed by letting the event $\{ c^* = 0 \}$ occur first, and then decompose on all the possibilities of y.
$$P(\hat{c}\neq 0, c^*=0) = P(c^*=0)P(\hat{c} \neq 0|c^*=0) = P(c^* =0) \int P(\hat{c} \neq 0|y, c^*=0)p_{y}(y| c^*=0) \, dy$$
Then we use the fact that $P(\hat{c} \neq 0 | y, c^*=0) = P(\hat{c} \neq 0|y)$ as a direct application of conditional independence.

$$\dots = P(c^* =0) \int P(\hat{c} \neq 0|y)p_{y}(y|c^*=0) \, dy.$$

Now is the time to apply Bayes rule. 
> We do so on the first factor. Because of the dependence of $y$ on the integral, this converts to a density function in $y$.

$$
\dots=P(c^*=0)\int p(y|\hat{c}\neq 0) \frac{P(\hat{c} \neq 0)}{p(y)} p(y|c^*=0) \, dy.
$$

Now we can perform the expansion $p(y) = P(\hat{c}=0)p(y|\hat{c}=0) + P(\hat{c} \neq 0)p(y|\hat{c}\neq 0)$. Plugging this into the above, and separating by the denominator,

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

the total variation term then corresponds to the success probability. In one phrase: the success probability is at least the total variation of the conditional distributions of the measurement vector.

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