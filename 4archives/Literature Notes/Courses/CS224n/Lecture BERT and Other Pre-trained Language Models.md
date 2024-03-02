---
order: -1
reference: ''
tags: 
title: Lecture BERT and Other Pre-trained Language Models
updated: '09-05-2021 15:14'
---

## ELMo

Dynamic embeddings not from the Embeeding layer but from two unidirectional LSTM layers.

## Transformer

- Multi-head self attention
	- No locality bias ($N \times N$)
	- One input with multiple type of information
- Feed-forward layers
- Layer norm and residuals
- Positional embeddings

## BERT

Bidirectional models enable the word to see themselves from context, then prediction of the next word is trivial.

- Predicting 15% word throughout the forword pass:
	- 80% of them are replaced with `[MASK]`
	- 10% of them are kept same
	- 10% of them are randomly replaced with other words
- Next sentence prediction (not so important compared to MLM based on [# On Losses for Modern Language Models](https://arxiv.org/abs/2010.01694)), but it looks still helpful for NLI in their ablation study
- Token embeddings + Segment embedings + Position embeddings
- One model to rule them all

## RoBERTa

- More data
- Better and longer training

## XLNet

- Relative positional embedding
- Permutation language model

## ALBERT

- Parameter sharing
- Factorized embedding
- Smaller but not faster

## T5

- Extensive ablation study

## Electra

- Discriminator to tell mask predictions from the truth

## Distillation

It works better than pretraining+fine-tuning for small models

