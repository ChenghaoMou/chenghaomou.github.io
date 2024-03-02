---
created: 2022-05-23
desc: "Different ways of transfer learning"
order: -1
tags: [machine learning, natural language processing, transfer learning]
title: 202205231931 Transfer Learning Approaches
updated: 2022-05-23
---

**Multitask Training**: Train the model on all tasks/datasets all at once;

**Sequential Multitask Training**: Train the model on some tasks/datasets first before continue training it with the target tasks/datasets; ^3f3b27

**Multitask Training and Fine-tuning**: Train the model on some tasks first and fine-tuning it with target tasks/datasets;

Findings from [@lourie_2021](zotero://select/items/@lourie_2021) that
1. [[#^3f3b27]] almost always outperform other methods.
2. Multitask training helps the most when target data is scarce.
3. Larger models see more gains from transfer learning.

---
References:
- [[UNICORN on RAINBOW A Universal Commonsense Reasoning Model on a New Multitask Benchmark]] [@lourie_2021](zotero://select/items/@lourie_2021)