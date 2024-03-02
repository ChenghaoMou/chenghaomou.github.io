---
order: -1
tags: ["machine learning", pitfalls, "scikit learn", programming]
title: Article Scikit-learn Pitfalls
url: "https://scikit-learn.org/stable/common_pitfalls.html"
---

- Use pipelines for both pre-processing transformations and models
- Test set is only for testing, nothing else
  - Always split the data first
  - `fit*` functions can never see test set, but usage of `transform` should be consistent
- Randomness
  - Use your own global `RandomState` to make sure it is reproducible, but also have some randomness between cross validations splits
  - Avoid setting global random seed, as it will fix any randomness for any code involved

