---
order: -1
tags: [aws, sagemaker, machine learning, time series]
title: DeepAR
---

DeepAR is for forecasting one-dimensional time series data. It is able to find the frequencies and seasonalities.

## Input

- jsonl (timestamp, dynamic or categorical features, target)

## Training

- Use all the data when possible
- Inference on a small window in the future
- Train on many series if possible

## Hyperparameters

- Context length
- Epochs
- Batch size
- Learning rate
- Hidden dimension/cells

CPU can be sufficient, especially for inference.