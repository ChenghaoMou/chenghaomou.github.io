---
aliases:
  - "SBERT studies Meaning Representations: Decomposing Sentence Embeddings into Explainable Semantic Features"
authors: "Juri Opitz, Anette Frank"
date: 2023-01-10 19:24:30
linter-yaml-title-alias: "SBERT Studies Meaning Representations: Decomposing Sentence Embeddings into Explainable Semantic Features"
order: -1
tags: 
title: "SBERT Studies Meaning Representations: Decomposing Sentence Embeddings into Explainable Semantic Features"
url: "http://arxiv.org/abs/2206.07023"
---

# SBERT Studies Meaning Representations: Decomposing Sentence Embeddings into Explainable Semantic Features

## Abstract

Models based on large-pretrained language models, such as S(entence)BERT, provide effective and efficient sentence embeddings that show high correlation to human similarity ratings, but lack interpretability. On the other hand, graph metrics for graph-based meaning representations (e.g., Abstract Meaning Representation, AMR) can make explicit the semantic aspects in which two sentences are similar. However, such metrics tend to be slow, rely on parsers, and do not reach state-of-the-art performance when rating sentence similarity. In this work, we aim at the best of both worlds, by learning to induce $S$emantically $S$tructured $S$entence BERT embeddings (S$^3$BERT). Our S$^3$BERT embeddings are composed of explainable sub-embeddings that emphasize various semantic sentence features (e.g., semantic roles, negation, or quantification). We show how to i) learn a decomposition of the sentence embeddings into semantic features, through approximation of a suite of interpretable AMR graph metrics, and how to ii) preserve the overall power of the neural embeddings by controlling the decomposition learning process with a second objective that enforces consistency with the similarity ratings of an SBERT teacher model. In our experimental studies, we show that our approach offers interpretability -- while fully preserving the effectiveness and efficiency of the neural sentence embeddings.

<mark style="background: #5fb236">Instead, we target local self-explainability (Danilevsky et al., 2020) by structuring SBERT’s sentence embedding space into subspaces that emphasize explicit facets of meaning.</mark> [(p. 2)](zotero://open-pdf/library/items/9JANQWV5?page=2)

<mark style="background: #5fb236">We aim to overcome these weaknesses by making sentence embeddings capable of expressing AMR metrics while preserving the full power of neural sentence embeddings.</mark> [(p. 2)](zotero://open-pdf/library/items/9JANQWV5?page=2)

<mark style="background: #5fb236">We presume that SBERT already contains some semantic features in some embedding dimensions. Hence, we want to achieve an arrangement of the embedding space according to our pre-defined partitioning, but also give it the chance to instill new knowledge about AMR semantics.</mark> [(p. 3)](zotero://open-pdf/library/items/9JANQWV5?page=3)

![[statics/opitz_2022/4CZXDZGN.png]]

<mark style="background: #ff6666">Note that AMR graphs and metrics are only needed for training, not for inference.</mark> [(p. 4)](zotero://open-pdf/library/items/9JANQWV5?page=4)

<mark style="background: #5fb236">We use Frames: graph similarity with regard to PropBank predicates. Named entity: graph similarity based on named entity substructures (person, city, ...). Negation: graph similarity based on expressions of negation. Concepts: graph similarity based on node labels only. Coreference: graph similarity focused on co-referent structures. SRL: graph similarity considering predicate substructures. Finally, Unlabeled: not considering semantic edge labels.2</mark> [(p. 5)](zotero://open-pdf/library/items/9JANQWV5?page=5)

<mark style="background: #5fb236">Additionally, we observe that AMR contains information about quantifiers and define quantSim, which measures the (normalized) overlap of quantifier structure of two AMRs.</mark> [(p. 5)](zotero://open-pdf/library/items/9JANQWV5?page=5)

<mark style="background: #ffd400">We find that there are three AMR features that are very poorly modeled with global SBERT embeddings: named entities, negation, quantification.</mark> [(p. 7)](zotero://open-pdf/library/items/9JANQWV5?page=7)

<mark style="background: #ffd400">Interestingly, while one main goal was to prevent a performance drop, S3BERT tends to outperform all baselines, including SBERT (significant improvement for STSb). It is important to note that catastrophic forgetting indeed occurs if learning is not controlled by the consistency objective. In this case, the performance drops by about 20-30 points (S3BERT cons. in Table 2). We conclude that our consistency objective effectively prevented any loss of embedding power.</mark> [(p. 7)](zotero://open-pdf/library/items/9JANQWV5?page=7)

<mark style="background: #ffd400">This implies that there is potential room for further improvement of our method by using an even more accurate parser, but judging from the marginally lower score of JAMR, the gain may be small.</mark> [(p. 8)](zotero://open-pdf/library/items/9JANQWV5?page=8)

```
@article{Opitz_Frank_2022, title={SBERT studies Meaning Representations: Decomposing Sentence Embeddings into Explainable Semantic Features}, url={[http://arxiv.org/abs/2206.07023](http://arxiv.org/abs/2206.07023)}, DOI={[10.48550/arXiv.2206.07023](https://doi.org/10.48550/arXiv.2206.07023)}, abstractNote={Models based on large-pretrained language models, such as S(entence)BERT, provide effective and efficient sentence embeddings that show high correlation to human similarity ratings, but lack interpretability. On the other hand, graph metrics for graph-based meaning representations (e.g., Abstract Meaning Representation, AMR) can make explicit the semantic aspects in which two sentences are similar. However, such metrics tend to be slow, rely on parsers, and do not reach state-of-the-art performance when rating sentence similarity. In this work, we aim at the best of both worlds, by learning to induce $S$emantically $S$tructured $S$entence BERT embeddings (S$^3$BERT). Our S$^3$BERT embeddings are composed of explainable sub-embeddings that emphasize various semantic sentence features (e.g., semantic roles, negation, or quantification). We show how to i) learn a decomposition of the sentence embeddings into semantic features, through approximation of a suite of interpretable AMR graph metrics, and how to ii) preserve the overall power of the neural embeddings by controlling the decomposition learning process with a second objective that enforces consistency with the similarity ratings of an SBERT teacher model. In our experimental studies, we show that our approach offers interpretability -- while fully preserving the effectiveness and efficiency of the neural sentence embeddings.}, note={arXiv:2206.07023 [cs]}, number={arXiv:2206.07023}, author={Opitz, Juri and Frank, Anette}, year={2022}, month={Oct} }
```

%% Import Date: 2023-01-10T19:25:46.063-08:00 %%
