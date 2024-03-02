---
order: -1
tags: [aws, sagemaker, reinforcement learning]
title: Reinforcement Learning
---

It is useful to navigate through a virtual environment.

Environment state $S$, possible actions $A$, and a value of each state/action $Q$. Taking an action will impact the $Q$ value.

$$
Q^{n e w}\left(s_{t}, a_{t}\right) \leftarrow \underbrace{Q\left(s_{t}, a_{t}\right)}_{\text {old value }}+\underbrace{\alpha}_{\text {learning rate }} \cdot \overbrace{(\underbrace{r_{t}}_{\text {reward }}+\underbrace{\gamma}_{\text {discount factor }} \cdot \underbrace{\max _{a} Q\left(s_{t+1}, a\right)}_{\text {estimate of optimal future value}}-\underbrace{Q\left(s_{t}, a_{t}\right)}_{\text {old value }})}_{\text {new value (temporal difference target) }}^{\text {temporal difference}}
$$

aka. *Markov Decision Process*

[[SageMaker]] uses Tensorflow and MXNet

## Input

## Details

## Hyperparameters

Depends on your task

## Instance Choice

multi-core and multi-instance