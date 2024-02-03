---
order: -1
tags: [aws, sagemaker]
title: SageMaker
---

Access:
- SageMaker notebook on EC2
- SageMaker console

Data:
- S3

## Training Job

- data
- compute resources
- output
- training code

## Deployment

- endpoint
- batch transform

## Built-in Algorithms

- Linear Learner
	- Input: RecordIO, CSV, file or pipe
	- Normalization
	- Hyperparameters:
		- class weights
		- learning rate
		- l1 or l2/weight decay
- [[XGBoost]]
- [[Seq2Seq]]
- [[DeepAR]]
- [[BlazingText]]
- [[Object2Vec]]
- [[Object Detection]]
- [[Image Classification]]
- [[Semantic Segmentation]]
- [[Random Cut Forest]]
- [[Neural Topic Model]]
- [[Latent Dirichlet Allocation]]
- [[KNN]]
- [[Reinforcement Learning]]
- [[Hyperparameter Tuning]]

## Spark and SageMaker

- `sagemaker-spark`
- `SageMakerEstimator` returns a `SageMakerModel`

## SageMaker Studio

Machine learning IDE

## SageMaker Experiments

Tracking and managing experiments

## SageMaker Debugger

- Saving gradients, model states or logs for debugging;
- Reports
- Build-in rules:
	- Monitor system metrics
	- Profile model operations
	- Debug model parameters
- `SMDebug` client
- Insights Dashboard
- ProfilerRule
- Notifications and actions

## SageMaker Autopilot

It supports:
- Algorithms
- Data preprocessing
- Model tuning
- Infrastructure

- Human in the loop
- Classification or Regression
- Tabular data
- Integrates with SageMaker Clarify

## SageMaker Model Monitor

- Drift:
	- Data
	- Model
	- Bias
	- Feature
- Outliers and anomalies
- New features
- Integration with SageMaker Clarify for bias

