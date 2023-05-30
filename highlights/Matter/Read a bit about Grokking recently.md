---
aliases:
  - Read a bit about Grokking recently
url: https://twitter.com/i/web/status/1542967463100305408
author: Awni Hannun
publisher: Twitter
order: -20220701132444
date: 2022-07-01
tags:
---

## Highlights
<mark>Some rough explanations of Grokking: After learning the training set, the model randomly walks between low-loss solutions (https://beren.io/2022-01-11-Grokking-...) ...and stays at generalizing solutions because they have slightly better training loss (https://www.alignmentforum.org/posts/...)</mark>

<mark>The "Slingshot mechanism": Observed late in training when a model has high training accuracy but makes a mistake. The loss spikes and the parameters are "slingshot" to a new part of the loss surface.</mark>

<mark>Grokking is always accompanied by a slingshot, though the inverse is not true. Also slingshots only happen with adaptive optimizers (Adam, AdamW, etc), and not e.g. vanilla SGD.</mark>

<mark>Grokking is a behavior of adaptive optimizers.</mark>

<mark>Adaptive optimizers are more likely to slingshot from high-curvature local optima to low-curvature local optima.</mark>

<mark>Low-curvature local optima are more likely to generalize better.</mark>

