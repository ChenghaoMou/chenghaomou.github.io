---
url: "https://www.anthropic.com/research/statistical-approach-to-model-evals"
author: "mfiguiere"
publisher: "anthropic.com"
published: 2024-11-19
aliases:
  -  "A statistical approach to model evaluations"
title: "A statistical approach to model evaluations"
tags: todo
---

## Highlights
> Fortunately, the problem of clustered standard errors has been extensively studied in the social sciences. When the inclusion of questions is non-independent, we recommend clustering standard errors on the unit of randomization (for example, passage of text), and we provide applicable formulas in our paper.

> In practice, we find the correlation of question scores on popular evals between frontier models to be substantial—between 0.3 and 0.7 on a scale of −1 to +1. Put another way, frontier models have an overall tendency to get the same questions right and wrong. Paired-difference analysis thus represents a “free” variance reduction technique that is very well suited for AI model evals. Therefore, in the interest of extracting the clearest signal from the data, our paper recommends reporting pairwise information—mean differences, standard errors, confidence intervals, and correlations—whenever two or more models are being compared.

