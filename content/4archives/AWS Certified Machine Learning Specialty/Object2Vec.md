---
order: -1
tags: [aws, sagemaker, machine learning]
title: Object2Vec
---

[[BlazingText#^8197ec|Word2Vec]] for arbitrary objects.

## Input

pair of tokens or a sequence of tokens

## Architecture

Siamese network with two encoders and a comparator

## Instance Choice

- Single machine only (CPU, GPU or GPUs – M5 or P2)
- Inference: M2 with `INFERENCE_PREFERRED_MODE`

