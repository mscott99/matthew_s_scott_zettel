---
ctime: 2024-03-04
mtime: 2024-03-07
---
[[Blog]] #blog
[[Duality in linear programming from a Lagrangian perspective]]
[[convex analysis]]
# Preliminaries
> Change the notation to non-infinite vectors and letting $b$ go to zero.

> Useful notions: recession cone.
## Extending the space
Let us introduce $\bar{\mathbb{R}}^n$ to be the vectors in $\mathbb{R}^n$ extended with vectors with infinite magnitude but well-defined direction. For some $v \in \mathbb{R}^n$, let $\bar{v} = \infty v$ be the vector pointing in the direction of $v$ but with infinite magnitude. We extend the canonical inner product to these vectors by letting
$$
\forall v, a \in  \mathbb{R}^n, \quad ( \infty v) \cdot a = \begin{cases}
-\infty &  v \cdot a < 0 \\
0 &  v \cdot a =0 \\
\infty  &  v \cdot a > 0 \\
\end{cases}
$$
and with a similar definition for $\langle \infty v, \infty a\rangle$. We also define scalar multiplication to follow the standard rules, and additionally that $\frac{v}{0} = \infty v$. We further define the convex hull to be
$$
\text{conv}(\infty v_{1}, u, \infty v_2, \dots) := \cup_{ \lambda \to \infty } \text{conv}(\lambda v_{1}, u, \lambda v_{2}, \dots)
$$
for $u,v_{1}, v_{2} \in \mathbb{R}^n$.
> [!note] The space $\bar{\mathbb{R}}^n$ falls short of being a vector space because of the ambiguous notion of addition $\infty v- \infty u$ which has no intuitive behaviour. However, even without addition, it turns out that the notion of convex hull can be made to be well-defined.
## Convex sets
For any $S \subseteq \mathbb{R}^n$, define its polar to be
$$
S^\circ := \{ z \in \bar{\mathbb{R}}^n |\forall s \in S, \, z \cdot x \leq 1  \}
$$
We now consider polytopes that contain the origin, which are the types of convex sets that occur in linear programming. Let $X = \{ Ax \leq b | x \in \bar{ \mathbb{R}}^n\}$ for a matrix $A$ with $m$ rows in $\mathbb{R}^n$, and $\boldsymbol{b} \in \mathbb{R}_{+}^m$.
> [!note] Note that $\forall y \in X^\circ$, $y$ corresponds to a constraint on $X$; that $y \cdot x \leq 1$ $\forall x \in X$.

## An over-simplified discussion of the objective function
Let $c \in \mathbb{R}^n$. We would like to maximize the objective function $(x \to c \cdot x)$ when constrained to a polyhedral set $X \subseteq \bar{\mathbb{R}}$. This is the so-called primal problem. The maximal value that the objective function takes is the optimum.

We can extract information about the optimal solution of the primal problem from the dual space. Bounds on the solution are given by vectors $z \in X^\circ$ that satisfy $z \geq c$, by which we mean that inequality holds component-wise. Observe that
$$
\forall x \in X, \quad  x\cdot c \leq x\cdot z,
$$
and furthermore that $x \cdot z \leq 1$ since $z \in X^\circ$.
Therefore, a vector $z \in X^\circ$ with the property that $z \geq c$ yields a bound of $1$ on the optimum. This may seem to be a trivial bound, but the method becomes meaningful in the next section.
## The objective function: a full picture
> The set of pairs is the epigraph of the support function.

Consider now the space of *pairs* $(\bar{z}, b) \in  \mathbb{R}^n \times \mathbb{R}^{+}$. Let $\mathcal{P} \subseteq \mathbb{R}^n \times \mathbb{R}^{+}$ be the subset of pairs satisfying the condition that $\frac{\bar{z}}{b} \in X^\circ$.
> Define what division by zero means.

It is possible that $b = 0$, in which case we understand the statement $\frac{\bar{z}}{b} \in X^\circ$ to mean that $\forall b> 0, \frac{\bar{z}}{b} \in X^\circ$.

The set $\mathcal{P}$ is obtained by adding one extra degree of freedom to $X^\circ$. That extra degree of freedom is in the joint scaling of the pairs (which preserves their mapping into $X^\circ$). Then using a similar logic as before, for $x \in X$, 
$$
x \cdot \frac{\bar{z}}{b} \leq 1 \iff x \cdot \bar{z} \leq b
$$.
This extra degree of freedom allows us to deal with the objective function induced by $c \in \mathbb{R}^n$ meaningfully. Any pair in $\mathcal{P}$ yields a constraint on $X$. Denote a $\mathcal{P}'$ to be the set of *feasible pairs* $\{  (\bar{z}, b) \in \mathcal{P}| \bar{z} \geq c\}$. This subset corresponds to the pairs that yield a bound on the optimum; $\forall (\bar{z}, b) \in \mathcal{P}',$
$$
c \cdot x \leq \bar{z} \cdot x \leq b.
$$
> [!note] Any $z \in X^\circ$ that can be scaled up to dominate $c$ yields a bound on the optimum.
>  Any $z \in X^{\circ}$ such that $z b \geq c$ for some $b \in \mathbb{R}^{+}$ yields a bound. Indeed, let $\bar{z} = z b$, then the pair $(\bar{z}, b)$ yields the bound $c \cdot x \leq \bar{z} \cdot x \leq b$.
## Parameterizing the dual problem
Now that we understand that feasible dual vectors yield bounds on the primal solution, we derive the the dual problem in its standard form. The dual problem consists of finding a minimal $b$ of a pair in $\mathcal{P}'$.

> A convex hull is not enough, I would need to define a joint convex hull.

Consider the set of all pairs that lie in the pre-image of the convex hull of the faces.

Consider conical combinations of pairs, in the sense that for any $\alpha_1, \alpha_{2} \geq 0$,
$$
\alpha_{1}(\bar{z}_1, b_1) + \alpha_{2}(\bar{z}_2, b_{2}) = (\alpha_{1} \bar{z}_1 + \alpha_{2} \bar{z}_2, \alpha_{1}b_{1}+\alpha_{2}b_{2}).
$$
We can parameterize any pair in $\mathcal{P}$ as a conical combination of pairs associated with the faces of the polytope $X$, which from the definition of $X$ are given by the rows of $A$ and the corresponding entries of the vector $\boldsymbol{b}$.

For any row of $A$ which has infinite magnitude, let us scale it 

Then any vector in $\mathcal{P}$ is parameterized by some $y \in \mathbb{R}_+^m$. Specifically
 $$
\mathcal{P}' = \{(A^T y, \boldsymbol{b}^T y) |  A^T y \geq \boldsymbol{c},\in y \in  \mathbb{R}_+^m\},
 $$
 with the convention that $0 v = 0 \forall v \in \bar{\mathbb{R}}^n$.

For each face, we have a pair $(\bar{z}_i, b_i)$. Setting the face vectors $\{ \bar{z}_i \}_{i \in [m]}$ as the rows of a matrix $A \in \mathbb{R}^{m \times n}$, any dual vector that is meaningful is of the form $y^T A$ for some coefficient vector $y \in \mathbb{R}^m_+$. The coefficient vector $y$ must satisfy $y^TA \geq c^T$ for the resulting dual vector $(y^T A)$ to be feasible. The bound induced by a dual vector $y^TA$ is given by examining the following inequality
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