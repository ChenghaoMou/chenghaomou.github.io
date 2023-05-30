---
abstract: >
aliases:
  - Gradients without Backpropagation
authors: [Atılım Güneş Baydin, Barak A. Pearlmutter, Don Syme, Frank Wood, Philip Torr]
linter-yaml-title-alias: Gradients without Backpropagation
order: -1
tags: [backpropagation, algorithms, neural networks, gradients]
title: Gradients without Backpropagation
updated: 2022-02-21 10:30
---

# Gradients without Backpropagation

## Forward Mode VS. Reverse Mode

**Reverse mode** aka. backpropagation is often represented as

$$
\begin{align}
\underset{\mathcal{R}^n}{\theta} &\xrightarrow{\textit{forward}} \underset{\mathcal{R}^n \rightarrow \mathcal{R}^m}{f(\theta)}\\
\underset{\mathcal{R}^m \cdot \mathcal{R}^{m\times n}}{v^T J_f(\theta)} &\xleftarrow{\textit{reverse}} \underset{\mathcal{R}^m}{v}\\
\end{align}
$$

where $v \in \mathcal{R}^m$ is the gradients propagated to this point and $J_f{\theta} \in \mathcal{R}^{m\times n}$ is the partial derivatives evaluated at $f : \mathcal{R}^n \rightarrow \mathcal{R}^m$ with respect to the parameter $\theta \in \mathcal{R}^n$.

I think they use $\theta$ both as parameter and input which is really confusing. For example, if the $\theta \in \mathcal{R}^n$ is the parameter, then how come it has nothing to do with $m$ when $f: \mathcal{R}^n \rightarrow \mathcal{R}^m$? But if it is the input, why do they use $\theta_t$ as their parameter in the pseudo code description?

**Forward mode** computes the forward gradients as the following:

$$
\begin{align}
\underset{\mathcal{R}^n}{\theta} &\xrightarrow{\textit{forward}} \underset{\mathcal{R}^n \rightarrow \mathcal{R}^m}{f(\theta)}\\
\underset{\mathcal{R}^n}{v} &\xrightarrow{\textit{forward}} \underset{\mathcal{R}^{m\times n} \cdot \mathcal{R}^n}{J_f(\theta)v}\\
\underset{\mathcal{R}^n \rightarrow \mathcal{R}^n}{g(\theta)} &= \underset{
(\mathcal{R}^n \rightarrow \mathcal{R}^n \cdot \mathcal{R}^n) \mathcal{R}^n 
}{(\nabla f(\theta)\cdot v )v}
\end{align}
$$

Here $v \in \mathcal{R}^n$ is a perturbation vector ($vi \sim \mathcal{N}(0, 1)$). The calculation of $J_f(\theta)v$ is done by treating $v$ as a weight vector and $J_f(\theta)v$ is simply a weighted sums of $J_f(\theta)$, the sensitivities for $f$ given $\theta$.

“Given a function f : Rn → Rm and the values θ ∈ Rn, v ∈ Rn, forward mode AD computes f (θ) and the Jacobianvector product2 Jf (θ) v, where Jf (θ) ∈ Rm×n is the Jacobian matrix of all partial derivatives of f evaluated at θ, and v is a vector of perturbations.3 For the case of f : Rn → R the Jacobian–vector product corresponds to a directional derivative ∇f (θ) · v, which is the projection of the gradient ∇f at θ onto the direction vector v, representing the rate of change along that direction. It is important to note that the forward mode evaluates the function f and its Jacobian–vector product Jf v simultaneously in a single forward run. Also note that Jf v is obtained without having to compute the Jacobian Jf , a feature sometimes referred to as a matrix-free computation.4” ([Baydin et al., 2022, p. 2](zotero://select/library/items/UY35SN29)) ([pdf](zotero://open-pdf/library/items/XU5UUSFQ?page=2&annotation=YF5Y8PF4))

“v ∈ Rn is a perturbation vector taken as a multivariate random variable v ∼ p(v) such that v’s scalar components vi are independent and have zero mean and unit variance for all i, and ∇f (θ) · v ∈ R is the directional derivative of f at point θ in direction v.” ([Baydin et al., 2022, p. 3](zotero://select/library/items/UY35SN29)) ([pdf](zotero://open-pdf/library/items/XU5UUSFQ?page=3&annotation=PS5K8AG2))

“Computing ∇f using only forward mode is possible by evaluating f forward n times with direction vectors taken as standard basis (or one-hot) vectors ei ∈ Rn, i = 1 . . . n, where ei denotes a vector with a 1 in the ith coordinate and 0s elsewhere. This allows the evaluation of the sensitivity of f w.r.t. each input ∂f ∂θi separately, which when combined give us the gradient ∇f .” ([Baydin et al., 2022, p. 3](zotero://select/library/items/UY35SN29)) ([pdf](zotero://open-pdf/library/items/XU5UUSFQ?page=3&annotation=ZQGBFYU6))

“Importantly, there is virtually no difference in memory consumption between the two methods.” ([Baydin et al., 2022, p. 7](zotero://select/library/items/UY35SN29)) ([pdf](zotero://open-pdf/library/items/XU5UUSFQ?page=7&annotation=7E8P7UMR))
