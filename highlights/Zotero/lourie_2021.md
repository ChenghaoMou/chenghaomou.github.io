---
aliases:
  - 'UNICORN on RAINBOW: A Universal Commonsense Reasoning Model on a New Multitask Benchmark'
  - "UNICORN on RAINBOW: A Universal Commonsense Reasoning Model on a New Multitask Benchmark"
authors: "Nicholas Lourie, Ronan Le Bras, Chandra Bhagavatula, Yejin Choi"
date: '2023-11-13 21:43:10'
tags:
title: 'UNICORN on RAINBOW: A Universal Commonsense Reasoning Model on a New Multitask Benchmark'
url: "http://arxiv.org/abs/2103.13009"
---

# UNICORN on RAINBOW: A Universal Commonsense Reasoning Model on a New Multitask Benchmark

## Abstract
Commonsense AI has long been seen as a near impossible goal -- until recently. Now, research interest has sharply increased with an influx of new benchmarks and models. We propose two new ways to evaluate commonsense models, emphasizing their generality on new tasks and building on diverse, recently introduced benchmarks. First, we propose a new multitask benchmark, RAINBOW, to promote research on commonsense models that generalize well over multiple tasks and datasets. Second, we propose a novel evaluation, the cost equivalent curve, that sheds new insight on how the choice of source datasets, pretrained language models, and transfer learning methods impacts performance and data efficiency. We perform extensive experiments -- over 200 experiments encompassing 4800 models -- and report multiple valuable and sometimes surprising findings, e.g., that transfer almost always leads to better or equivalent performance if following a particular recipe, that QA-based commonsense datasets transfer well with each other, while commonsense knowledge graphs do not, and that perhaps counter-intuitively, larger models benefit more from transfer than smaller ones. Last but not least, we introduce a new universal commonsense reasoning model, UNICORN, that establishes new state-of-the-art performance across 8 popular commonsense benchmarks, aNLI (87.3%), CosmosQA (91.8%), HellaSWAG (93.9%), PIQA (90.1%), SocialIQa (83.2%), WinoGrande (86.6%), CycIC (94.0%) and CommonsenseQA (79.3%).

> First, we propose a new multitask benchmark, RAINBOW, to promote research on commonsense models that generalize well over multiple tasks and datasets [(p. 1)](zotero://open-pdf/library/items/FDDDW3S9?page=1)

> a novel evaluation, the cost equivalent curve, that sheds new insight on how the choice of source datasets, pretrained language models, and transfer learning methods impacts performance and data efficiency. [(p. 1)](zotero://open-pdf/library/items/FDDDW3S9?page=1)

> we define cost as the number of training examples in the target dataset. [(p. 2)](zotero://open-pdf/library/items/FDDDW3S9?page=2)

> The construction of cost equivalent curves makes one technical assumption: the relationship between performance and cost is continuous and strictly monotonic (i.e., increasing or decreasing) [(p. 2)](zotero://open-pdf/library/items/FDDDW3S9?page=2)

> multitask training (Caruana 1995): training on multiple datasets (including the target dataset) all at once, [(p. 3)](zotero://open-pdf/library/items/FDDDW3S9?page=3)

> multitask fine-tuning (Liu et al. 2019a): first training on all datasets (including the target dataset) through multitask training, and then continuing to fine-tune on the target dataset alone. [(p. 3)](zotero://open-pdf/library/items/FDDDW3S9?page=3)

> Finding 1: Sequential training almost always matches or beats other approaches. [(p. 3)](zotero://open-pdf/library/items/FDDDW3S9?page=3)

> Finding 2: Sequential training rarely hurts performance. [(p. 4)](zotero://open-pdf/library/items/FDDDW3S9?page=4)

> Multitask training helps most often in the lowdata regime. [(p. 4)](zotero://open-pdf/library/items/FDDDW3S9?page=4)

> multitask learning tends to help when data is scarce, but may hurt performance if data is plentiful. [(p. 4)](zotero://open-pdf/library/items/FDDDW3S9?page=4)

> The off-the-shelf T5’s weights come from multitask pretraining, where many tasks are mixed with a language modeling objective to learn a powerful initialization for the weights. In fact, both GLUE and SUPERGLUE were mixed into the pretraining (Raffel et al. 2019). [(p. 5)](zotero://open-pdf/library/items/FDDDW3S9?page=5)

> Larger models benefit more from transfer [(p. 5)](zotero://open-pdf/library/items/FDDDW3S9?page=5)

> the serialized language from the knowledge graphs is not in a QA format, and the knowledge graph completion task is generative while all other tasks are discriminative [(p. 6)](zotero://open-pdf/library/items/FDDDW3S9?page=6)

> Knowledge augmented lm

## Notes

---
Comment: 27 pages, 19 figures, 34 tables. Accepted to AAAI 2021. For associated code and data see https://github.com/allenai/rainbow

```
@book{Lourie_Bras_Bhagavatula_Choi_2021, title={UNICORN on RAINBOW: A Universal Commonsense Reasoning Model on a New Multitask Benchmark}, url={[http://arxiv.org/abs/2103.13009](http://arxiv.org/abs/2103.13009)}, DOI={[10.48550/arXiv.2103.13009](https://doi.org/10.48550/arXiv.2103.13009)}, abstractNote={Commonsense AI has long been seen as a near impossible goal -- until recently. Now, research interest has sharply increased with an influx of new benchmarks and models. We propose two new ways to evaluate commonsense models, emphasizing their generality on new tasks and building on diverse, recently introduced benchmarks. First, we propose a new multitask benchmark, RAINBOW, to promote research on commonsense models that generalize well over multiple tasks and datasets. Second, we propose a novel evaluation, the cost equivalent curve, that sheds new insight on how the choice of source datasets, pretrained language models, and transfer learning methods impacts performance and data efficiency. We perform extensive experiments -- over 200 experiments encompassing 4800 models -- and report multiple valuable and sometimes surprising findings, e.g., that transfer almost always leads to better or equivalent performance if following a particular recipe, that QA-based commonsense datasets transfer well with each other, while commonsense knowledge graphs do not, and that perhaps counter-intuitively, larger models benefit more from transfer than smaller ones. Last but not least, we introduce a new universal commonsense reasoning model, UNICORN, that establishes new state-of-the-art performance across 8 popular commonsense benchmarks, aNLI (87.3%), CosmosQA (91.8%), HellaSWAG (93.9%), PIQA (90.1%), SocialIQa (83.2%), WinoGrande (86.6%), CycIC (94.0%) and CommonsenseQA (79.3%).}, note={38 citations (Semantic Scholar/arXiv) [2022-05-23]  arXiv:2103.13009 [cs] type: article}, number={arXiv:2103.13009}, institution={arXiv}, author={Lourie, Nicholas and Bras, Ronan Le and Bhagavatula, Chandra and Choi, Yejin}, year={2021}, month=mar }
```