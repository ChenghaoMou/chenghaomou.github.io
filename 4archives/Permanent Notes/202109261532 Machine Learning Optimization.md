---
aliases:
  - Machine Learning Optimization
linter-yaml-title-alias: Machine Learning Optimization
order: -1
tags: [machine learning, optimization]
title: Machine Learning Optimization
updated: '2021-09-26 15:31'
---

# Machine Learning Optimization

In general, you can optimize your model locally or globally. Locally is when you improve operators, blocks, or layers of your model while globally is when you optimize your model end to end.

Specifically, you can optimize your model in the following areas:
- **From loops to vectorization**: The most obvious optimization we are doing nowadays is putting several examples into a small batch to improve the efficiency. Some other libraries ([Jax](https://github.com/google/jax)) can automatically batch processing with a function designed for one single input.
- **Parallelization**: One example of this is using CNNs to approximate RNNs to utilize GPUs powerful parallel computation. Recurrence is often helpful but sadly slow.
- **Hardware-specific optimization**: Depending on the hardware you are using, you can optimize your model, or data to be accessed/computed in a way that's easy for the hardware.
- **Framework-specific or model-specific optimization**: e.g. `torch.nn.CrossEntropyLoss` is known to be better than separated `LogSoftmax` and `NLLLoss`.

Outside the scope of the model itself, you can rely on [[202109261531 Machine Learning Compilers and Optimizers|compilers and optimizers]] to further improve the performance.