---
aliases:
  - A Practical Guide to Maintaining Machine Learning in Production
url: https://eugeneyan.com/writing/practical-guide-to-maintaining-machine-learning/
author: Eugene Yan
publisher: Eugene Yan
order: -20200525163051
date: 2020-05-25
tags:
---

## Highlights
<mark>Data: Upstream schema changes contaminate data * Model: Increased complexity hampers maintainability * Engineering: Fragmented codebase, configuration, and infra * The Real World: Bias, feedback loops, and adversaries * Org Structure: Excessive division of labour slows down iteration * Customers: Frequent operational requests disrupt work</mark>

<mark>Validate your incoming data.</mark>

<mark>Check the data’s overall distribution.</mark>

<mark>Check the features’ distributions.</mark>

<mark>* Detect changes with homogeneity tests, ANOVAs, and time series analysis. Is gender distribution the same? Use a chi-squared test to (dis)confirm the null hypothesis. (However, if your data is large, statistical significance can be common.)</mark>

<mark>log the input data before and after processing and do some checks.</mark>

<mark>Shadow release your model. You can do this by running your model in production, running some live traffic through it, and logging the outcomes.</mark>

<mark>Monitor your model health. As a first step, check for model staleness. When was the last time you refreshed the production model?</mark>

<mark>Investing in finding dependable offline metrics will continuously pay dividends.</mark>

<mark>Log your configuration details.</mark>

<mark>Make a conscious effort to keep things simple. Start simple. Keep your system simple as long as possible.</mark>

<mark>Model validation before deployment: This</mark>

<mark>Input data validation:</mark>

<mark>Easy rollback:</mark>

