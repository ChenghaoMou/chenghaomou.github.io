---
order: -1
tags: 
title: Paper Muppet Massive Multi-task Representations with Pre-Finetuning
---

## What's Wrong with the Current Multi-task Learning?

Labeled datasets vary in size and models might struggle to learn all the tasks (unstable) through varying losses as a result.

## What Are the Contributions of This Paper?

- Optimization and loss scaling to reconcile different tasks's losses, which leads to a more stable learning process
	- Within-batch heterogeneous data -> accumulating losses across tasks for each gradient update (better than one task by one task and one single task batch by one single task batch)
	- Additional loss term to coerce similar representation when input is perturbed
	- Scaled loss
	- Scaled loss $$L_{scaled}(x_i, y_i) = \frac{L(x_i, y_i)}{logn(i)}$$, where $n(i)$ is the decision dimension of the task (e.g. 2 for binary classification and the size of the vocabulary for generation)
	- Scaled loss
- Experiments on large scale multi-task pre-finetuning (adaptive finetuning)
	- Not to reiterate the success, but interestingly, it worsens the results on BART for three common-sense reasoning tasks

## Next

[[Sentence Ranking Loss]]