---
title: "Faster and More Affordable LLM Serving"
created: 2024-08-28
modified: 2024-08-28
---

Speaker: Xupeng Miao @ Purdue University

- Existing models use autoregressive decoding method;

Key challenges:
- Latency and Response Time [[20240803213014|LLM Speed Metrics]]
- Memory Footprint (e.g. KV cache) and Model Size (hardware requirement)
- Scalability and Throughput (batch, online processing)
- Hardware Compatibility (GPUs, TPUs) and Acceleration (Runtime)
- Trade-offs between Accuracy and Efficiency (quantisation, distillation)

## SpecInfer

Based on [[20231203142406|Speculative Decoding]]. A speculator proposes generation hypothesis and the original model is used as a sequence verifier.

However, this makes the speculator and verifier sequentially dependent of each other in each round.
SpecInfer uses **tree-based** speculator (how is this different from beam search? This could use one or more small models to generate the tree)

### Tree Verification

![[CleanShot 2024-08-28 at 17.23.19@2x.png]]

Tree attention with specialised kernel to eliminate data and computation redundancy.

[GitHub - flexflow/FlexFlow: FlexFlow Serve: Low-Latency, High-Performance LLM Serving](https://github.com/flexflow/FlexFlow/tree/inference)

## SpotServe

Using spot machines for inference to reduce the cost. However, spot machines can be preempted and cause downtime. By leveraging the grace period, we can reduce the downtime.

[GitHub - Hsword/SpotServe: SpotServe: Serving Generative Large Language Models on Preemptible Instances](https://github.com/Hsword/SpotServe)

## Mirage

Generating operator-level Kernel code from python by optimising at the thread graph level, better than existing compilers [[20210926153100|Machine Learning Compilers and Optimizers]].

[GitHub - mirage-project/mirage: A multi-level tensor algebra superoptimizer](https://github.com/mirage-project/mirage/tree/main)