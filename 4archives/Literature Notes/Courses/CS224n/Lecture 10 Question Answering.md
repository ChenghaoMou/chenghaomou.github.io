---
order: -1
reference: ''
tags: 
title: Lecture 10 Question Answering
updated: '09-04-2021 18:39'
---

## Motivation and History

Find needle in the hay. People want their questions/queries answered without going through all the documents on the Internet.

Typically it is done in two steps:
1. Find candidate documents that are likely to contain the answer.
2. Find the answer in those documents.

Large datasets and neural networks make it possible to train supervised models to do this during 2015/16. Before that, mostly are done by complex IR systems and linguistic rules.

*Factoid Question*: answer of which is an Named Entity.

## The SQuAD Dataset

Given a passage and a question, find a span in the passage that answers the question.

### 1.1 VS. 2.0

- 2.0 has half the question unanswerable based on the passage.
- NLI can be used as answer validation.

### Evaluation

- Exact match
- F1 score
- Both metric ignore the punctuations and articles

### Limitations

- Answer is always span-based (Open-domain should be harder but more realistic)
- Question is constructed by reading the passage (The question is not natural question and biased towards the passage)
- Answer is usually sentence bounded (We need multi sentence or passage based)

## The Stanford Attentive Reader Model

- BiLSTM for question
- BiLSTM for passage
- Use question representation as an attention query to look for the start and end positions of the answer

### Stanford Attentive Reader Model++

- Added more features: POS, NER, frequency and word matching

## BiDAF

### Attention Flow Layer

Both context to question and question to context should be attended.

```python
# Context to question attention

C = [S, 1, H] -> [S, L, H]
Q = [1, L, H] -> [S, L, H]
I = concat([C, Q, C x Q], dim=-1) -> [S, L, H + H + H]
I = Linear(I) -> [S, J, 1]
A = softmax(I) -> [S, J]

# Question to context attention
C = [S, 1, H] -> [S, L, H]
Q = [1, L, H] -> [S, L, H]
I = concat([C, Q, C x Q], dim=-1) -> [S, L, H + H + H]
I = Linear(I) -> [S, J, 1] -> [S, J]
M = argmax(I, dim=-1) -> [S]
M = softmax(M) -> [S]

```

## Recent Architectures (2019)

More complex architecture and attentions.

## ElMo and BERT

Beginning of an era.