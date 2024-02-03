---
order: -1
tags: [course, natural language processing, co-reference resolution, cs224n]
title: Lecture 16 Coreference Resolution
updated: '10-31-2021 13:58'
---

## Definitions

- *Coreference*: mentions that refer to the same entity
- *anaphora*: entities come before the word (VS. cataphora)
	- *Barack Obama* said *he* will sign the bill. In this case *he* refers to *Barack Obama* instead of linking to the entity directly
	- We wen to see *a concert* last night. *The tickets* were really expensive. (Bridging anaphora)

## Applications

- *Machine Translation*: especially for languages that drop pronouns
- *Dialogue Systems*

## Pipeline:

1. *Mention Detection*: pronouns/POS, named entities/NER, or noun phrases/NP
2. *Coreference resolution*

## Model Architectures

- *Rule-based*
- *Mention Pair*
- *Mention Ranking*: rank antecedents + NA/Dummy mention
- *End-to-end Neural Model*:
	- word and character embeddings
	- Bi-LSTM
	- span detection + attention
	- calculate a coreference score for each span pair $i$ and $j$
- *Clustering*: agglomerative clustering

### Features Used in Those Models

- *Statistical features*
- *Embeddings*

## Evaluation

- *B-cubed*: average of precision and recall of all clusters and gold clusters

