---
ctime: 2024-03-04
---
[[Blog]] #blog
[[convex analysis]]
# Convex sets
Let $X \in \mathbb{R}_+^n$ be a convex  polytope with faces $Ax \leq b$, $x_i \geq 0$ for a matrix $A \in \mathbb{R}^{m \times n}$, and $b \in \mathbb{R}^m$.
Consider $X^\circ$ the polar set of $X$ in $\mathbb{R}^n_+$, meaning that
$$
X^\circ := \{ z \in \mathbb{R}^n_+ | z \cdot x \leq 1 \}.
$$
Note that $\forall y \in X^\circ$, $y$ corresponds to the constraint $y \cdot x \leq 1$ $\forall x \in X$.

## A simplified picture of the objective function
Let $c \in\mathbb{R}^n$. We would like to maximize the function $(x \to c \cdot x)$ when constrained to $X$. This is the so-called primal problem.

We extract information about the optimal solution of the primal problem from the dual space. Bounds on the solution are given by vectors $z \in X^\circ$ that satisfy $z \geq c$, where the inequality holds over all components of the vectors. Indeed, then
$$
\forall x \in X, \quad  x\cdot c \leq x\cdot z \leq 1
$$
and therefore for such $y$ we get a bound of $1$ on the optimum. This may seem trivial as presented, but it becomes meaningful in the next section.
## The objective function: a full picture
Now consider pairs $(\bar{z}, b) \in \mathbb{R}^n \times \mathbb{R}$ satisfying the condition that $\frac{\bar{z}}{b} \in X^\circ$.
The set of pairs can be understood as taking $X^\circ$ and adding one extra degree of freedom. That extra degree of freedom is in the joint scaling of the pairs (which preserves their mapping into $X^\circ$). Then using a similar logic as before, $x\cdot \frac{y}{b} \leq 1 \iff x\cdot y \leq b$.

This extra degree of freedom allows us to deal with the objective function induced by the vector $c \in \mathbb{R}^n$ meaningfully. Denote a *feasible pair* $(\bar{z}, b) \in X^\circ$ to be such that $\bar{z} \geq c$. Then for any feasible pair $(\bar{z}, b)$, we find a corresponding bound on the optimum
$$
c \cdot x \leq \bar{z} \cdot x \leq b.
$$
It is noteworthy that any $z \in X^\circ$ yields a bound on the optimum. Indeed, any $z$ with non-zero entries can be scaled up by some $b \in \mathbb{R}_+$ until $z b \geq c$. Then letting $\bar{z} = z b$, the pair $(\bar{z}, b)$ yields the bound $c \cdot x \leq \bar{z} \cdot x \leq b$.
## Parameterizing the dual problem
Now that we understand that feasible dual vectors yield bounds on the primal solution, we derive the form of the dual problem.

We can parameterize any relevant dual vector in terms of the vectors associated with the faces of the polytope $X$, which was defined to have $m$ faces. We restrict our search of bounds from dual vectors to the pairs that are both feasible and for which the vector $\bar{z}$ is a linear combination of the faces.

Fortunately, the bounds $b$ vary in a  linear fashion. For each face, we have a pair $(\bar{z}_i, b_i)$. Setting the face vectors $\{ \bar{z}_i \}_{i \in [m]}$ as the rows of a matrix $A \in \mathbb{R}^{m \times n}$, any dual vector that is meaningful is of the form $y^T A$ for some coefficient vector $y \in \mathbb{R}^m_+$. The coefficient vector $y$ must satisfy $y^TA \geq c^T$ for the resulting dual vector $(y^T A)$ to be feasible. The bound induced by a dual vector $y^TA$ is given by examining the following inequality
$$
\forall x \in  X, \quad  Ax \leq b
$$
$$
\implies y^T A x \leq y^T b.
$$
Then,
$$
c \cdot x \leq y^T A x \leq y^T b,
$$
and therefore we find that provided that $y$ is feasible (that $y^T A \geq c^T$), then $y^T b$ is an upper bound on the optimum. Therefore we find the dual linear program.
Maximize
$$
 \quad b^T y
$$
subject to
$$
y \in \mathbb{R}^m_+, \quad  -A^T y \leq -c^T.
$$