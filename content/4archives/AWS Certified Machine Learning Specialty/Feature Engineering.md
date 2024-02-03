---
order: -1
tags: [aws, data]
title: Feature Engineering
---

Apply your knowledge to the data and build models upon it.

## Features

Not all features are relevant and all features can be harmful.

## Imputation

Replace missing values with computed/inferred values.

- Correlations between columns might be missed
- Dropping missing data might bias the dataset

Try:
- KNN
- DL models (categorical labels)
- Regression models
- Get more data

## Unbalanced Data

- Oversampling
- SMOTE

## Outliers

The `Kinesis Analytics` from [[Kinesis#Kinesis Analytics]] can be used to identify outliers.

## Binning

Bucketization: smooth out uncertainty in the measurements

## Transformation

- One-hot encoding
- Scaling
- Normalization
- Shuffling

