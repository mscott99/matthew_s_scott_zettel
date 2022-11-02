#blog/draft #knownTheory 

We first set out to describe the problem and what we seek as a result. Given a signal $z^* \in \mathbb{R}^n$ distributed according to some (prior) distribution $P_{z}$ we measure $z^*$ with a measurement matrix $A$ which gives us the (then known) measurement vector $y:= Az^*$. Once $y$ is known, we examine the posterior variable $\hat{z} \sim p_{z|y}(\cdot)$. 

Specifically, we define $\hat{z}$ from two properties:
- $\hat{z}$ is distributed according to the same distribution as $z^*$
- $\hat{z}$ is conditionally independent of $z^*$ with respect to $y$;  $\hat{z}$ and $z^*$ are independent in all other respects than their mutual link to $y$: $Az^*=y=A\hat{z}$.

Then we wish to check that the probability that $\hat{z}$ is far from $z^*$ is low. 

To show the result, we split the support of  $z^*$ into small components of radius $\varepsilon$ and show that with high probability $z^*$ and $\hat{z}$ lie in the same component.

## Part 1: Splitting the Prior Into Components

We will use dependence on some deterministic random variable to split the prior into components. Introduce the random variable $c^* \in \{ 0,\dots,M \}$ which we make dependent on $z^*$ in a way that lets us make a good split

$$
P_{z^*} = \sum_{i=1}^M P_{z^*}(\cdot|c^*=i)P(c=i).
$$

We make a smart split so that every component is of radius $2\varepsilon$. We make the flawed assumption that if $z_{*}$ and $\hat{z}$ are in different components, then they are "far apart" and we have failure. If they are in the same component, we have success.

We define $\hat{c}$ such that it is dependent on $\hat{z}$ in exactly the same way as $c^*$ is dependent on $z^*$. Then the event of failure is $\{\hat{c} \neq c^*\}$. Our aim is now to show that this event occurs with low probability, specifically exponentially small in the number of measurements.

## Part 2: Bounding the Probability of Failure

We wish to bound $P(\hat{c} \neq c^*)$. First we decompose this term by values of $c^*$.

$$
P(\hat{c} \neq c^*) = \sum_{i = 1}^M P(\hat{c} \neq i, c^* =i)
$$

For simplicity, we will focus on evaluating $P(\hat{c} \neq 0, c^* = 0)$. We will proceed by letting the event $\{ c^* = 0 \}$ occur first, and then decompose on all the possibilities of y.
$$P(\hat{c}\neq 0, c^*=0) = P(c^*=0)P(\hat{c} \neq 0|c^*=0) = P(c^* =0) \int P(\hat{c} \neq 0|y, c^*=0)p_{y}(y| c^*=0) \, dy$$
Then we use the fact that $P(\hat{c} \neq 0 | y, c^*=0) = P(\hat{c} \neq 0|y)$ as a direct application of conditional independence.

$$\dots = P(c^* =0) \int P(\hat{c} \neq 0|y)p_{y}(y|c^*=0) \, dy.$$

Now is the time to apply Bayes rule. We do so on the first factor. Because of the dependence of $y$ on the integral, this converts to a density function in $y$.

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

## Part 3: Bringing it Together

$$
P(\hat{c} \neq c^*) = \sum_{i=1}^M P(c^*=i, \hat{c} \neq i)
$$

$$
\leq M \max_{i}(1-TV(p_{y}(\cdot|\hat{c}=i), p_{y}(\cdot|\hat{c} \neq i))).
$$

This factor of $M$ can probably be removed because of the loose upper bound from before.

## Part 4: Recovery

Recovery occurs because a Gaussian matrix always separates a sphere from its surroundings with high probability. Hence we get such a probability for each sphere. With high probability this separation is great for all the balls. Then conditionally on this, with high probability $\hat{c} = c^*$ and therefore $\hat{c}$ and $c^*$ are within a distance $\varepsilon$ of each other.


![[Uneven-Coherence]]

---
Main source: [[@jalalInstanceOptimalCompressedSensing2021]]

---
[[2022-11-01]]