---
order: -1
tags: 
title: Paper Fastformer Additive Attention Can Be All You Need
---

## Problem Definition

- Quadratic time complexity in respect to the input sequence in vanilla attentions

## Proposed Solution

### Additive Attention

Original [[Lecture 8 Translation, Seq2Seq, Attention#Attention]] works in calculating interaction scores for pairs of tokens.
For an input sequence $E \in \mathbb{R}^{S \times H}$:
- Create a Query $Q$, a Key $K$ and a Value $Q$ vectors. $Q, K, V \in \mathbb{R}^{S \times H}$
- Instead of $Q \cdot K^{T}$, which is $\mathit{O}(S^2)$, create a global query vector $q \in \mathbb{R}^{H}$ (a weighted sum of $Q$). This force this attention head to form a query, somehow similar to [[Perceiver]] and [[Perceiver IO]] instead of a set of queries. *Does this mean the model can no longer focus on some details at a sub-input level?*
- The weights are calculated by one linear transformation $W_q$ of the $Q$ + one Softmax normalization. $W_q$ works like a feature extractor for all $q$s in $Q$, specifically in this head in this layer. ^ebd52c
- Each key vector $k_i$ is transformed into $p_i = q * k_i$ (element multiplication) [[Paper Fastformer Additive Attention Can Be All You Need#^ebd52c]] applies to the $K$ vectors, leading to a global $k$ vector ^2e4fce
- Apply the same [[Paper Fastformer Additive Attention Can Be All You Need#^2e4fce]] to global key vector $k$ and value vectors $V$
- Add query vectors and transformer value vectors as the final output. *Why?*

> Is this really attention if there are only two weight vector to extract the global query and global key?
>
> Comment from [@Yannic Kilcher](https://www.youtube.com/channel/UCZHmQk67mSJgfCCTn7xBfew)