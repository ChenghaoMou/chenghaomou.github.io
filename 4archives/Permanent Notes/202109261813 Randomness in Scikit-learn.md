---
aliases:
  - Randomness in Scikit-learn
linter-yaml-title-alias: Randomness in Scikit-learn
order: -1
tags: [machine learning, scikit-learn, pitfalls, programming]
title: Randomness in Scikit-learn
updated: '2021-09-26 18:13'
---

# Randomness in Scikit-learn

Use `RandomState` to make sure your code
- is reproducible between runs
- maintains randomness within the pipeline

Avoid setting the global random seed – it can fix all the randomness for any code subsequently involved, including caller code.
