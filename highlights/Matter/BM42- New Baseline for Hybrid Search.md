---
url: "https://qdrant.tech/articles/bm42/"
author: "Andrey Vasnetsov"
publisher: "qdrant.tech"
aliases:
  - "BM42: New Baseline for Hybrid Search"
title: "BM42- New Baseline for Hybrid Search"
created: 2024-07-05
modified: 2024-07-05
---

## Highlights

> The resulting formula for the BM42 score would look like this: $$ \text{score}(D,Q) = \sum_{i=1}^{N} \text{IDF}(q_i) \times \text{Attention}(\text{CLS}, q_i) $$ Note that classical transformers have multiple attention heads, so we can get multiple importance vectors for the same document. The simplest way to combine them is to simply average them.

