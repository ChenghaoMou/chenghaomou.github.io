---
authors: [Nicholas Lourie, Ronan Le Bras, Chandra Bhagavatula, Yejin Choi]
created: 2022-05-23
order: -1
reference: "https://arxiv.org/abs/2103.13009"
tags: [paper reading, natural language processing, commonsense reasoning, benchmark]
title: UNICORN on RAINBOW A Universal Commonsense Reasoning Model on a New Multitask Benchmark
updated: 2022-05-23
---

[[202205231928 Cost Equivalent Curve]]
[[202205231931 Transfer Learning Approaches]]

Directly modeling commonsense knowledge graph does not help the model, maybe this calls for something like knowledge augmented language modeling.

#### [Page 1](highlights://2103.13009#page=1)

> First, we propose a new multitask benchmark, RAINBOW, to promote
> research on commonsense models that generalize well over
> multiple tasks and datasets

> a novel evaluation, the cost equivalent curve, that sheds new
> insight on how the choice of source datasets, pretrained
> language models, and transfer learning methods impacts
> performance and data efficiency.

#### [Page 2](highlights://2103.13009#page=2)

> we define cost as the number of training examples in the target
> dataset.

> The construction of cost equivalent curves makes one technical
> assumption: the relationship between performance and cost is
> continuous and strictly monotonic (i.e., increas- ing or
> decreasing)

#### [Page 3](highlights://2103.13009#page=3)

> multitask training (Caruana 1995): training on multi- ple
> datasets (including the target dataset) all at once,

> equential training (Pratt, Mostow, and Kamm 1991): first
> training on multiple datasets (excluding the target dataset)
> through multitask training, and then continuing to train on the
> target dataset alone,

> multitask fine-tuning (Liu et al. 2019a): first training on all
> datasets (including the target dataset) through mul- titask
> training, and then continuing to fine-tune on the tar- get
> dataset alone.

> Finding 1: Sequential training almost always matches or beats
> other approaches.

#### [Page 4](highlights://2103.13009#page=4)

> Finding 2: Sequential training rarely hurts performance.

> Multitask training helps most often in the low- data regime.

> multi- task learning tends to help when data is scarce, but may
> hurt performance if data is plentiful.

#### [Page 5](highlights://2103.13009#page=5)

> The off-the-shelf T5’s weights come from multitask pretraining,
> where many tasks are mixed with a language modeling objective to
> learn a powerful initialization for the weights. In fact, both
> GLUE and SUPERGLUE were mixed into the pretraining (Raffel et
> al. 2019).

> Larger models benefit more from transfer

#### [Page 6](highlights://2103.13009#page=6)

> the serialized language from the knowledge graphs is not in a QA
> format, and the knowledge graph com- pletion task is generative
> while all other tasks are discrimi- native