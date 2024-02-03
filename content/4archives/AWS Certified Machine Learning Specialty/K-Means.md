---
order: -1
tags: [aws, sagemaker, clustering]
title: K-Means
---

## Input

- RecordIO-protobuf or CSV in file or pipe
- `ShardedByS3Key` for training and `FullyReplicated` for testing

## Details

- More clusters at the beginning in SageMaker
- K-means++
- Reduce clusters from K to k

## Hyperparameters

- k (elbow-method)
- mini-batch size
- extra center
- init method

## Instance Choice

CPU or single GPU machines