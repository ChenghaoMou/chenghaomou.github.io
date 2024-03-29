---
aliases:
  - Calibration in Machine Learning
linter-yaml-title-alias: Calibration in Machine Learning
order: -1
tags: [calibration, ml]
title: Calibration in Machine Learning
updated: '2021-10-03 18:00'
---

# Calibration in Machine Learning

Calibration refers to a practice where model's output logits are calibrated to reflect probabilities. More precisely, the predicted probabilities and distributions are close to what observed in training data. Models, especially large neural networks tend to overestimated the probabilities while being a good classifier/discriminator. Simply put, a working boundary might not be the best boundary, and that's where calibration comes into play.

Study [^1] and [^2] have shown most predictive models are not well calibrated.

## Calibration Curve

The easiest way to help you understand if your model is calibrated or not is to plot the calibration curve. If 70% of the data is observed positive, then a point should have a similar probability of *being positive*. Then you should expect your model's predicts have an expectation of 70% for being positive.

How to Draw a Calibration Curve Chart

1. Given a binary label set $Y$ and a prediction set with positive probabilities $\tilde{Y}$
2. Sort the data based on the predicted probabilities in ascending order
3. Bucketize the data based on the probabilities
4. Calculate the fraction of positive examples in each bucket/bin

```chart
type: bar
labels: [0.0, 0.2, 0.4, 0.6, 0.8, 1.0]
series:
  - title: Positive Percentage
    data: [0.0, 0.2, 0.4, 0.6, 0.8, 1.0]
tension: 0.2
width: 58%
labelColors: true
fill: true
beginAtZero: true
```

Above is a perfect calibrated model – for all examples predicted with around probability $x$, $x$ of them are actual positives.

## Mis-calibration

![](https://miro.medium.com/max/2000/1*862Gd5xzAt2fvp6o2hwuRg.png) [^3]

- **Systematic Overestimation**: This happens when you have less positive examples.
- **Systematic Underestimation**: This happens when you have less negative examples.
- **Center of the dist. is too heavy**: This happens when "algorithms such as support vector machines and boosted trees tend to push predicted probabilities away from 0 and 1"[^1]
- **Tails of the dist. are too heavy**: This happens when "Other methods such as naive bayes have the opposite bias and tend to push predictions closer to 0 and 1"[^2]

## How to Calibrate

- Isotonic Regression on dev set: A non-parametric algorithm that fits a non-decreasing free form line to the data. **The fact that the line is non-decreasing is fundamental because it respects the original sorting.**
- Logistic Regression on dev set

## Expected Calibration Error

```python
def expected_calibration_error(y, proba, bins = 'fd'):
	import numpy as np
	bin_count, bin_edges = np.histogram(proba, bins = bins)
	n_bins = len(bin_count)
	bin_edges[0] -= 1e-8 `#` because left edge is not included
	bin_id = np.digitize(proba, bin_edges, right = True) - 1
	bin_ysum = np.bincount(bin_id, weights = y, minlength = n_bins)
	bin_probasum = np.bincount(bin_id, weights = proba, minlength = n_bins)
	bin_ymean = np.divide(bin_ysum, bin_count, out = np.zeros(n_bins), where = bin_count > 0)
	bin_probamean = np.divide(bin_probasum, bin_count, out = np.zeros(n_bins), where = bin_count > 0)
	ece = np.abs((bin_probamean - bin_ymean) * bin_count).sum() / len(proba)
	return ece
```

[^3]: [Python’s «predict_proba» Doesn’t Actually Predict Probabilities (and How to Fix It) | by Samuele Mazzanti | Towards Data Science](https://towardsdatascience.com/pythons-predict-proba-doesn-t-actually-predict-probabilities-and-how-to-fix-it-f582c21d63fc)
[^1]: [(PDF) Predicting good probabilities with supervised learning](https://www.researchgate.net/publication/221344679_Predicting_good_probabilities_with_supervised_learning)
[^2]: [[1706.04599] On Calibration of Modern Neural Networks](https://arxiv.org/abs/1706.04599)