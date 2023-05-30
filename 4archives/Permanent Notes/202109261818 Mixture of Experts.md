---
aliases:
  - Mixture of Experts
linter-yaml-title-alias: Mixture of Experts
order: -1
tags: [machine learning, optimization]
title: Mixture of Experts
updated: '2021-09-26 18:18'
---

# Mixture of Experts

Mixture of Experts (MoE) is special case of [[202109261533 Adaptive Computation]] where multiple experts or learners are used to solve a problem by dividing the problem space into regions. In neural networks, a MoE model can use a gating/routing network to decide which expert/sub-model to use. But it has some limitations like **training stability**, **complexity**, and **communication cost**.