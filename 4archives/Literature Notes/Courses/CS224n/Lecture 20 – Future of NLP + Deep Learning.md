---
order: -1
tags: [scaling, unsupervised learning, risks, social impact]
title: Lecture 20 – Future of NLP + Deep Learning
updated: '11-14-2021 14:33'
---

We want to utilize the **unlabeled data** for **low-resource languages** and also because of **rare labeled data**;

## Unsupervisation in Machine Translation

- Pre-training: train two LMs with unlabeled data;
- Back-translation: back translate the source and target sentences. Both models have perfect target reference translation;

## Unsupervised Word Translation

Align two word embedding spaces by learning an asymmetrical transformation matrix.

- Discriminator: given an embedding if it comes from space $X$ or space $Y$($WX$)

## Unsupervised NMT

- De-noising auto-encoder: to capture input meaning
- Back translation: the same model but different BOS(`<Fr>` and `<En>`)

## Cross-lingual BERT

- Language embeddings

## Social Impact

- decision making (bias)

## Future Directions

- Multitasking Training
- More difficult tasks
- Low-resource settings:
	- edge devices
	- low-resource data
	- meta-learning
- Interpretability
- Dialogue
- Healthcare
