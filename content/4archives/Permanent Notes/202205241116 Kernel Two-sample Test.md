---
order: -1
tags: [statistics, two-sample test]
title: 202205241116 Kernel Two-sample Test
---

## Maximum Mean Discrepancy (MMD)

Multivariate two-sample test.

### Formula

$$
\widehat{MMD}(P, Q) = \frac{1}{n^2} \sum_{i=1}^n\sum_{j=1}^nk(x_i, x_j) + \frac{1}{m^2} \sum_{i=1}^m\sum_{j=1}^mk(y_i, y_j) - \frac{2}{nm}\sum_{i=1}^n\sum_{j=1}^mk(x_i, y_j)
$$

$k$ refers to the kernel function.