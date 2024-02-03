---
order: -1
tags: [cs224n, course, natural language processing]
title: Lecture 13 Contextual Word Embeddings
updated: '10-16-2021 14:11'
---

## Reflections on Word Representations

Only **one representation** for a word so far: [[Lecture 1 Overview#Word2vec]], [[Lecture 2 Word Vectors and Word Senses#4 GloVe]] and [[Lecture 12 Subword Models#fastText]].

Randomly initialized and trained word embeddings work if the dataset is large enough. But pre-trained word vectors help because you can train the word embeddings with much larger data and larger vocabulary.

*UNK*: Using the same UNK token for all OOV words makes them indistinguishable from each other. (character-level model can remedy that)

*Word Sense Disambiguation*: one word should have different representations for different aspects.

We already have a solution to model a word in a context: we can simply treat LSTM hidden representations as such.

## Pre-ELMo and ELMo

*TagLM*: combine char embeddings + word embeddings and LM embeddings/hidden states. Using only LM embeddings wasn't great.

*ELMo*: a biLM (forward and backword models) with 2 BiLSTM layers. Using all layers' hidden states instead of only one of them.
Lower layer is better for lower-level syntax: POS, Dependency Parsing, and NER; Higher layer is better for higher level semantics: sentiment, SRL, QA, and NLI

## ULMfit

Use the same pre-trained BiLSTM LM and fine-tune it together with a classification head.

## Transformer

We need parallelization but RNNs won't cut it, and we still need attentions.

As $d_k$, the dimension of the hidden size gets larger, the variance of $q^Tk$ also gets larger. After the softmax, the gradients gets smaller, so the authors scaled the dot product by a factor of $\sqrt{d_k}$.

## BERT

*MLM, Masked Language Modeling*: predict masked tokens with bidirectional information;
*NSP, Next Sentence Prediction*: predict sentence relation, utilizing segment embeddings;

Fine-tuning like [[Lecture 13 Contextual Word Embeddings#ULMfit]].