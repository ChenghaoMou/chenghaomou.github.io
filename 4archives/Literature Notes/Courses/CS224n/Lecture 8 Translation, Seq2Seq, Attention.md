---
order: -1
tags: 
title: Lecture 8 Translation, Seq2Seq, Attention
---

## Machine Translation

- Early Machine Translation: Rule-based and dictionary-based
- Statistical Machine Translation: Learning probability of $\text{argmax}_yP(y|x) \rightarrow \text{argmax}_yP(x|y)P(y)$ to find best $y$ (translation) of $x$ (input). $P(x|y)$ is considered a translation model and $P(y)$ is the language model

### Statistical Machine Translation

- $P(x|y)$ is learned approximately by learning $P(x, a|y)$ where $a$ is an alignment
- Decoding is a process finding the translation while pruning low-probability branches

### Neural Machine Translation

- Encoder captures the representation of the input source sentence with the last hidden state
- The hidden state is fed into decoder with an START token as input

## Sequence to Sequence

- Many applications: Summarization, dialogue, parsing, and code generation
- It is considered as a conditional language model
- Training can be done with teacher forcing, end to end

### Decoding

- Greedy decoding: Taking the output as input for next round, however local argmax is not global argmax
- Beam search:
	- Keep track of K most probable translations
	- Stop one hypothesis when an END token is generated
	- Till $t$ steps or $n$ complete hypotheses
	- Longer hypotheses have lower scores -> normalize by length

### Advantages

- Better performance: fluency, context usage and more capable of learning phrases
- Simplicity

### Disadvantages

- Interpretability
- Controllability

## Evaluation

- BLEU: n-gram precision + brevity penalty

## Problems

- OOV
- Domain mismatch
- Distance context
- Biases
- Commonsense
- Hallucination, repetition

## Attention

Seq2seq has an information bottleneck for using the last hidden state alone for decoding.

At each step of decoding, attention helps the model to focus on some part of the input directly. Single hidden state -> weighted hidden state from all hidden states, plus shortcut connections to remediate vanishing gradients. It also provides better interpretability.

### Variants

- dot-product attention scores: $e_i = s^Th_i$
- multiplicative attention: $e_i = s^TWh_i$
- additive attention: $e_i = v^T\text{tanh}(W_1h_i + W_2s)$

