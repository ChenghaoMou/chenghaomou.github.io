---
order: -1
tags: [statistics, two-sample test]
title: "202205241113 Hotelling's Two-sample T-squared Test"
---

Multivariate (multiple features) two-sample test.

## Assumptions

1. Both samples are **independent**;
2. Both samples are **multivariate normal**;
3. Both samples have equal **variance-covariance** matrices;

$H_0$: Samples drawn from populations with the **same multivariate mean**.

## Formula

$$
\begin{align}
T^2 &= \frac{n_1n_2}{n}(\bar{x_1} - \bar{x_2})^TS^{*-1}(\bar{x_1} - \bar{x_2})\\
S &= \frac{(n_1 - 1)S_1 + (n_2 - 1)S_2}{n_1+n_2-2}
\end{align}
$$

where $S$ is the covariance matrix and $S^*$ is the pooled covariance matrix.

## Results

$T^2$ would be zero if two samples share the same means and therefore $H_0$ is true.
If $T^2$ is larger than zero, then we should convert it to F statistic for significance testing:

$$
F = \frac{n-k-1}{k(n-2)}T^2
$$

where n is the sample size and k is the number of variables/features.

## Reporting

$T^2 = 3.41, F(n, k) = 1.76, p = 0.23$
