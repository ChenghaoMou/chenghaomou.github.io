---
created: 2022-05-23
desc: "A new metric for performance evaluation"
order: -1
tags: [natural language processing, machine learning]
title: 202205231928 Cost Equivalent Curve
updated: 2022-05-23
---

## Definitions

**Cost**: the number of training examples in the training set used.
**Performance**: the performance given a model and a cost according to the task metric.
**Cost Equivalent Curve**: a curve depicting the relation between cost and performance. For a target performance score, the smaller the cost is, the better the model is.

The underlying assumption of the curve is that such relationship between cost and performance is *continuous* and *strictly monotonic*.

---
Reference:
- [[UNICORN on RAINBOW A Universal Commonsense Reasoning Model on a New Multitask Benchmark]] [@lourie_2021](zotero://select/items/@lourie_2021)