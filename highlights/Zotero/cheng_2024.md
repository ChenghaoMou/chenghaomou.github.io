---
aliases:
  - Inductive or Deductive? Rethinking the Fundamental Reasoning Abilities of LLMs
  - Inductive or Deductive? Rethinking the Fundamental Reasoning Abilities of LLMs
authors: Kewei Cheng, Jingfeng Yang, Haoming Jiang, Zhengyang Wang, Binxuan Huang, Ruirui Li, Shiyang Li, Zheng Li, Yifan Gao, Xian Li, Bing Yin, Yizhou Sun
date: 2024-09-05 14:47:26
tags: []
title: "Inductive or Deductive? Rethinking the Fundamental Reasoning Abilities of LLMs"
url: https://arxiv.org/abs/2408.00114v2
created: 2024-02-03
modified: 2024-09-05
---

# Inductive or Deductive? Rethinking the Fundamental Reasoning Abilities of LLMs

## Abstract

Reasoning encompasses two typical types: deductive reasoning and inductive reasoning. Despite extensive research into the reasoning capabilities of Large Language Models (LLMs), most studies have failed to rigorously differentiate between inductive and deductive reasoning, leading to a blending of the two. This raises an essential question: In LLM reasoning, which poses a greater challenge - deductive or inductive reasoning? While the deductive reasoning capabilities of LLMs, (i.e. their capacity to follow instructions in reasoning tasks), have received considerable attention, their abilities in true inductive reasoning remain largely unexplored. To investigate into the true inductive reasoning capabilities of LLMs, we propose a novel framework, SolverLearner. This framework enables LLMs to learn the underlying function (i.e., $y = f_w(x)$), that maps input data points $(x)$ to their corresponding output values $(y)$, using only in-context examples. By focusing on inductive reasoning and separating it from LLM-based deductive reasoning, we can isolate and investigate inductive reasoning of LLMs in its pure form via SolverLearner. Our observations reveal that LLMs demonstrate remarkable inductive reasoning capabilities through SolverLearner, achieving near-perfect performance with ACC of 1 in most cases. Surprisingly, despite their strong inductive reasoning abilities, LLMs tend to relatively lack deductive reasoning capabilities, particularly in tasks involving ``counterfactual'' reasoning.

> Our observations reveal that LLMs demonstrate remarkable inductive reasoning capabilities through SolverLearner, achieving near-perfect performance with ACC of 1 in most cases. Surprisingly, despite their strong inductive reasoning abilities, LLMs tend to relatively lack deductive reasoning capabilities, particularly in tasks involving “counterfactual” reasoning. [(p. )](zotero://open-pdf/library/items/ZFVNKI88?page=)

> Deductive reasoning starts with a general hypothesis and proceeds to derive specific conclusions about individual instances while inductive reasoning involves formulating broad generalizations or principles from a set of instance observations. [(p. )](zotero://open-pdf/library/items/ZFVNKI88?page=)

![[statics/cheng_2024/image-2-x66-y595.png]]

> We distinguish between the deductive and inductive settings as follows: • Deductive setting: we provide the models with direct input-output mappings (i.e., fw). • Inductive setting: we offer the models a few examples (i.e., (x, y) pairs) while intentionally leaving out input-output mappings (i.e., fw). [(p. 3)](zotero://open-pdf/library/items/ZFVNKI88?page=3)

> In order to separate inductive reasoning from deductive reasoning, the execution of the learned function should be completely detached from LLMs. To achieve this separation, external tools such as code interpreters serve as efficient way to execute these functions independently. [(p. 3)](zotero://open-pdf/library/items/ZFVNKI88?page=3)

![[statics/cheng_2024/image-4-x63-y599.png]]

> By comparing the gaps of SolverLearner and Zero-shot towards perfect reasoning, we can observe that in most cases, LLMs can complete the inductive step perfectly, while they rarely achieve perfect performance on the deductive step. This indicates that in LLM reasoning, deductive reasoning presents a greater challenge. Note that we avoid to phrasing it as directly comparing inductive and deductive reasoning capabilities. Instead, we examine whether the gaps mainly come from inductive or inductive reasoning, considering that LLMs could not achieve perfect counterfactual reasoning. [(p. 7)](zotero://open-pdf/library/items/ZFVNKI88?page=7)

```
@misc{Cheng_Yang_Jiang_Wang_Huang_Li_Li_Li_Gao_Li_et al._2024, title={Inductive or Deductive? Rethinking the Fundamental Reasoning Abilities of LLMs}, url={[https://arxiv.org/abs/2408.00114v2](https://arxiv.org/abs/2408.00114v2)}, abstractNote={Reasoning encompasses two typical types: deductive reasoning and inductive reasoning. Despite extensive research into the reasoning capabilities of Large Language Models (LLMs), most studies have failed to rigorously differentiate between inductive and deductive reasoning, leading to a blending of the two. This raises an essential question: In LLM reasoning, which poses a greater challenge - deductive or inductive reasoning? While the deductive reasoning capabilities of LLMs, (i.e. their capacity to follow instructions in reasoning tasks), have received considerable attention, their abilities in true inductive reasoning remain largely unexplored. To investigate into the true inductive reasoning capabilities of LLMs, we propose a novel framework, SolverLearner. This framework enables LLMs to learn the underlying function (i.e., $y = f_w(x)$), that maps input data points $(x)$ to their corresponding output values $(y)$, using only in-context examples. By focusing on inductive reasoning and separating it from LLM-based deductive reasoning, we can isolate and investigate inductive reasoning of LLMs in its pure form via SolverLearner. Our observations reveal that LLMs demonstrate remarkable inductive reasoning capabilities through SolverLearner, achieving near-perfect performance with ACC of 1 in most cases. Surprisingly, despite their strong inductive reasoning abilities, LLMs tend to relatively lack deductive reasoning capabilities, particularly in tasks involving ``counterfactual’’ reasoning.}, journal={arXiv.org}, author={Cheng, Kewei and Yang, Jingfeng and Jiang, Haoming and Wang, Zhengyang and Huang, Binxuan and Li, Ruirui and Li, Shiyang and Li, Zheng and Gao, Yifan and Li, Xian and Yin, Bing and Sun, Yizhou}, year={2024}, month=jul, language={en} }
```