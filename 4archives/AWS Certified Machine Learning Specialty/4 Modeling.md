---
order: -1
tags: [aws, machine learning]
title: 4 Modeling
---

[[Activation Functions]]

Deep Learning on EC2/[[Elastic MapReduce]]
- EMR
- Variant EC2 instances
- Deep Learning AMI

Batch Size
- smaller batch size can get out of local minima
- larger batch size can converge on the wrong solution

Learning Rate
- the larger the learning rate is, the more easily a model overshoots
- the smaller the learning rate is, the longer the training is going to take

Regularization
- Dropout
- Trimming
- Early stopping
- L1 (feature selection, sparse) and L2 (computational efficient, dense)

Vanishing Gradients
- Sub-networks
- Gates
- Residual connections
- [[Activation Functions]]

Recall, aka completeness
Precision, aka relevancy

Bagging VS. boosting
- Bagging can be parallelized
- Bagging prevents overfitting
- Boosting usually yields better results

[[SageMaker]]
[[High Level ML Services]]

