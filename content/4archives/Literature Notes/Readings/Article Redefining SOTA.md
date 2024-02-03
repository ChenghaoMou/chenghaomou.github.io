---
order: -1
tags: 
title: Article Redefining SOTA
url: 'http://mitchgordon.me/ml/2021/08/31/sota.html'
---

> However, a SOTA score in today’s context accomplishes neither of those goals. Because of the way many benchmark datasets are constructed, a high test score (even surpassing human performance) is unlikely to mean that the model is ready for real-world deployment or that the task is “solved.” Furthermore, the ability of neural methods to predictably improve performance with scale means that a single SOTA score is not enough information to decide whether one neural method is better than another.

I think redefining SOTA can be more generally reframed as redefining benchmarking, and most likely some model can be SOTA in many tasks and areas but unlikely all around.

Having human-level performance on a dataset with specific evaluation metrics never means we achieve general AI. To me, it is a statement on how the community collaborative decides in what direction and area we need to improve our models (aka. Selection Bias from [[The Benchmark Lottery]])

> Any paper proposing a new “SOTA” neural method needs to report not just the data / compute used to achieve SOTA, but the score achieved at several at several points of data/compute. The slope of the curve should be better than all other known methods. SOTA scaling is the objective, not SOTA scores.

Interesting idea, SOTA scaling. Similarly, model performance metrics in other areas are also drawing more and more attention like the [[Dynaboard An Evaluation-As-A-Service Platform for Holistic Next-Generation Benchmarking|Dynascore]].

