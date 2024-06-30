---
url: "https://eugeneyan.com/writing/practical-guide-to-maintaining-machine-learning/"
author: "Eugene Yan"
publisher: "eugeneyan.com"
published: 2020-05-26
title: "A Practical Guide to Maintaining Machine Learning in Production"
created: 2024-06-30
modified: 2024-06-30
---

## Highlights

> Data: Upstream schema changes contaminate data * Model: Increased complexity hampers maintainability * Engineering: Fragmented codebase, configuration, and infra * The Real World: Bias, feedback loops, and adversaries * Org Structure: Excessive division of labour slows down iteration * Customers: Frequent operational requests disrupt work

> Validate your incoming data.

> Check the data’s overall distribution.

> Check the features’ distributions.

> * Detect changes with homogeneity tests, ANOVAs, and time series analysis. Is gender distribution the same? Use a chi-squared test to (dis)confirm the null hypothesis. (However, if your data is large, statistical significance can be common.)

> log the input data before and after processing and do some checks.

> Shadow release your model. You can do this by running your model in production, running some live traffic through it, and logging the outcomes.

> Monitor your model health. As a first step, check for model staleness. When was the last time you refreshed the production model?

> Investing in finding dependable offline metrics will continuously pay dividends.

> Log your configuration details.

> Make a conscious effort to keep things simple. Start simple. Keep your system simple as long as possible.

> Model validation before deployment: This

> Input data validation:

> Easy rollback:

