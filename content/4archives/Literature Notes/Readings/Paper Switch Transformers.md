---
order: -1
tags: 
title: Paper Switch Transformers
---

## Background: [Mixture of Experts](https://en.wikipedia.org/wiki/Mixture_of_experts)

It refers to a technique where `multiple experts (learners) are used to divide the problem space into homogeneous regions`, using a gating network to decide which expert to use. But it has some limitations like `training stability, complexity, and communication cost`. The paper then proposes a new architecture to solve those problems and provides some additional benchmarks and experiments for support.

## Model

One important hypothesis is that scaling the number of parameters in a neural network would increase the performance of the model but one can minimize the floating point operations (FLOPs) such neural networks so that the computation complexity is not increased.

Original MoE model uses a routing layer to assign weights across experts and routes the input into top K experts accordingly. The intuition behind this K > 1 is that the layer will not learn how to route effectively if it weren't as least comparing two experts. **However, in this paper, the authors claim that switching into only one experts shows reasonable performance.**

Skipped tokens (showed in red) are passed down to the next layer through a residual connection.

To ensure a balanced load across experts in a switch layer, they use an auxiliary scaled loss to encourage uniform routing.

However, their experiments show their `largest Switch models, do not always translate their upstream perplexity well to downstream fine-tuning on
the SuperGLUE task` partially because the dynamics within the expert-models `is very complicated and
is dependent on regularization, load-balancing, and fine-tuning hyper-parameters`.

 To me, it looks like the model is again a demonstration of a Google product that integrates very well with Google frameworks and hardware like Tensorflow, TPUs and neatly engineered for performance like selective half precision, parameter initialization, expert/different dropouts, distillation, parallelism. In their experiments, computation budget or data are not really a concern, which usually is not the case for most people outside those tech companies.

