---
order: -1
tags: 
title: Lecture 6 Language Modeling
---
Given a sequence of words, a language model computes the probability distribution of the next word.
$P(x^{t+1}|x^t, ..., x^1)$

## N-gram Language Models

N-gram here refers to the words instead of sub-word tokens.
Using a pre-defined $N$ prevents distant but relevant context being learned.
- Sparsity Problem:
	- Count-based probability can lead to zero probability in the nominator. Smoothing would help.
	- Count-based probability can lead to zero probability in the denominator. Fall-back (N-gram -> N-1 gram etc)would help
	- It will get worse as the N gets bigger. $N < 5$ in general.

## Neural Networks

- window based neural language models:
	- Still cannot handle remote context with a fixed window
	- No sparsity problem
	- Don't need to store counts

### Recurrent Neural Networks

- Same weight matrix is applied at each time step
- Can process input with any length
- Recurrent steps cannot be parallelized