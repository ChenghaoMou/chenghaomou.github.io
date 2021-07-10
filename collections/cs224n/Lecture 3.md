# Word Window Classification, Neural Nets, and Calculus

## Classification revie/introduction
$$p(y|x) = \frac{\exp(W_y \cdot x)}{\sum_{c=1}^C\exp(W_c \cdot x)}$$
To maximize the probability for the correct class, one could minimize the negative log likelihood $-\log p(y|x)$. But in practice, people often use cross entropy instead.
$$H(p, q) = - \sum_{c=1}^C p(c)\log q(c)$$ where $p$ is the one-hot label vector and the $q$ is the predicted probability distribution, in which case, it is the same as negative log likelihood.

## Neural networks introduction
Running multiple logistic regressions at the same time.
Why do we need non-linear activation functions? Because multiple linear transformations is still a linear transformation.

## Named Entity Recognition
window-based classification: concatenate the window embeddings as the center word representation.
$$h = f(Wx + b)$$
$$\theta^{\mbox{new}} = \theta^{\mbox{old}} - \alpha\nabla_{\theta}J(\Theta)$$
## Binary true vs. corrupted word window classification
## Matrix calculus introduction
$$
\begin{align}
\frac{\partial}{\partial x}(Wx+b) &= W\\
\frac{\partial}{\partial b}(Wx+b) &= I\\
\frac{\partial}{\partial u}(u^Th) &= h^T
\end{align}
$$
