---
aliases:
  - "RNN Variants: LSTM and GRU"
linter-yaml-title-alias: "RNN Variants: LSTM and GRU"
order: -1
tags: 
title: "RNN Variants: LSTM and GRU"
---

## Vanishing or Exploding Gradient Problem

 > gradients get smaller and smaller when back propagation.

 If gradients are getting smaller, there is no way to know if the dependency is not needed or not captured. Models can't learn distance dependencies.

### Syntactic Recency VS. Sequential Recency

- The **writer** of the books **is**
- The writer of the **books** **are**

### Exploding Gradients

- a large step change in parameters

### Gradient Clipping

- make smaller steps when the cliffs are steep

# RNN Variants: LSTM and GRU

## LSTM

  - Hidden state and cell state. Cell state stores long-term information

$$
\begin{align}
f^{t} &= \sigma(W_fh^{t-1} + U_fx^t + b_f)\\
i^{t} &= \sigma(W_ih^{t-1} + U_ix^t + b_i)\\
o^{t} &= \sigma(W_oh^{t-1} + U_ox^t + b_o)\\
\end{align}
$$

- Forget gate controls what is forgotten and kept
- Input gate controls what is updated
- Output gate controls what is output

$$
\begin{align}
\tilde{c}^t &= tanh(W_ch^{t-1} + U_cx^t + b_c)\\
c^t &= f^t \circ c^{t-1} + i^t \circ \tilde{c}^t\\
h^t &= o^t \circ tanh(c^t)
\end{align}
$$

## GRU

- no cell states

$$
\begin{align}
u^{t} &= \sigma(W_uh^{t-1} + U_ux^t + b_u)\\
r^{t} &= \sigma(W_rh^{t-1} + U_rx^t + b_r)
\tilde{h}^t &= tanh(W_h(r^t \circ h^{t-1}) + U_hx^t + b_h)\\
h^t &= (1 - u^t) \circ h^{t-1} + u^t \circ \tilde{h}^t\\
\end{align}
$$

# Gradient Clipping and Skip Connections

 allow gradients to flow

# Bidirectional RNN and Multi-layer RNN