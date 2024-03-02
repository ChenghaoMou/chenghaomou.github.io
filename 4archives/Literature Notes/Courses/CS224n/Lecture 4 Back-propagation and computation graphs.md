---
order: -1
tags: 
title: Lecture 4 Back-propagation and computation graphs
---

$$\frac{\partial s}{\partial W} = \delta^T x^T $$

where $\delta$ is the error signal from above (later layers) and $x$ is the local gradiaent signal.

**Tips on deriving gradients**:
- Keep track of dimensionality
- Chain rule
- Softmax: two cases, one for correct label and one for others
- Element-wise derivatives first if you are getting confused
- Use shape convention

- Use pre-trained word vectors
- Train/fine-tune them only when you have a large dataset

## Backpropagation

$$
\begin{align}
\frac{\partial s}{\partial h} &\rightarrow \frac{\partial h}{\partial z} \rightarrow \frac{\partial s}{\partial z}
\end{align}
$$

Upstream graident * local gradients -> downstream gradients

### Gradient Checking:

For small delta, compute the gradients using $f'(x) = \frac{f(x+h) - f(x-h)}{2h}$

## Regularization

$J(\theta) = ... + \lambda \sum_k \theta_k^2$

## Non-linear Activations

## Parameter Initialization

## Optimizers

## Learning Rates

- start small
- or if you are using fancy optimizers, start large (0.1 e.g.)
