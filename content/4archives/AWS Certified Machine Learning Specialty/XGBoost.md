---
order: -1
tags: [aws, machine learning, xgboost, boosting]
title: XGBoost
---

e**X**treme **G**radient **B**oosting [`sagemaker.xgboost`](https://docs.aws.amazon.com/sagemaker/latest/dg/xgboost.html)

## Hyperparameters

- Subsample
	- Subsample ratio of the training instances. Setting it to 0.5 means that XGBoost would randomly sample half of the training data prior to growing trees. and this will prevent overfitting. Subsampling will occur once in every boosting iteration.
- Eta $\eta$
	- alias: `learning_rate`
    - Step size shrinkage used in update to prevents overfitting. After each boosting step, we can directly get the weights of new features, and `eta` shrinks the feature weights to make the boosting process more conservative.
- Gamma $\gamma$
	- Minimum loss reduction required to make a further partition on a leaf node of the tree. The larger `gamma` is, the more conservative the algorithm will be.
- Alpha $\alpha$
	- L1 regularization term on weights. Increasing this value will make model more conservative.
- Lambda $\lambda$
	- L2 regularization term on weights. Increasing this value will make model more conservative.
- eval_metric
- scale_pos_weight
	- useful for unbalanced data
- max_depth
	- prevents overfitting

## Instance Choice

- CPU: M5
- GPU: P3 (>=1.2)