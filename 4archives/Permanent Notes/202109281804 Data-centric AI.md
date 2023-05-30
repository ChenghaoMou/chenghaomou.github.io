---
aliases:
  - Data-centric AI
linter-yaml-title-alias: Data-centric AI
order: -1
tags: [ai, data-centric, machine learning, data]
title: Data-centric AI
updated: '2021-09-28 18:04'
---

# Data-centric AI

A paradigm shift from model-centric AI to data-centric AI, advocated by many companies and scholars recently, especially [Andrew Ng](https://en.wikipedia.org/wiki/Andrew_Ng) and his [famous talk](https://www.youtube.com/watch?v=06-AZXmwHjo).

Previously, we have model-centric AI where people focus mostly on
- feature engineering
- model architecture design
- training algorithm design

However, those tasks soon are marginalized by the popularization of large pre-trained models where general knowledge is learned through huge datasets and parameters. Any work that tries to compete with those pre-trained models with new architectures will find themselves in need for pre-training from scratch, which will most likely burn many holes in their wallets.

In short, those pre-trained models are powerful, increasingly data-hungry, and less practically modifiable.

The easy way out for now is redirecting the attention back to data:
- data collection
- labeling
- augmentation
- slicing
- management

## Key Components in Data-centric AI

1. Data
2. Programmatic access: higher level of data manipulation that also takes into considerations such as:
	1. Privacy concerns
	2. Domain expertise
	3. Rapid changes in the real world
	4. Ethical concerns (bias, audits, lineage)
3. Expertise: labeling and modeling should be unified into a positive feedback loop instead of individual components. Labeled data help to design better models and algorithms and the modeling process provide the labeling process with guidance.

