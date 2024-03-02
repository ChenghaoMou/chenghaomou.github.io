---
order: -1
tags: [course, natural language processing, natural language generation, cs224n]
title: Lecture 15 Natural Language Generation
updated: '10-24-2021 12:27'
---

## What is Natural Language Generation

NLP refers to the property that a model generates text at the output side.

*Language model* and *conditional language model* are corner stones of NLG: *Language model* gives a probability distribution given an input. *Conditional language model* takes more than just the input but also other signals as well.

## Decoding

### Greedy Decoding

### Beam Search

- *small k*: deteriorates to greedy decoding, no backtracking and generally yields poor performance
- *large k*: better performance but expensive to track, higher beam size might lead to degraded performance as well (generic but less useful)

### Sampling

- Pure/naive sampling directly from the distribution instead of just argmax in greedy decoding
- Top-k sampling

### Temperature in Softmax

It changes the decoding probability distribution, not a decoding algorithm itself.

$$
P_t(w) = \frac{exp(s_w)}{\sum exp(s_o)} \rightarrow \frac{exp(s_w/\tau)}{\sum exp(s_o/\tau)}
$$

- *Higher temperature*: everything is squeezed towards 1/uniform and therefore have closer probabilities, thus more diverse output;
- *Lower temperature*: the distribution is more spiky and less diverse;

## Tasks and Approaches

### Summarization

- single-document summarization
- multi-document summarization

Or

- extractive summarization
- abstractive summarization

### Neural Summarization

- Pointer generator/copy mechanism
- Bottom-up summarization:
	- content selection: tag a word to include in the generation or not
	- generation: only generate on the selected words

### Dialogue

- Task-oriented
- Social dialogue

Traditional RNN models does not help in this take because of:
- *genericness*: change the sampling or change generation process (e.g. to add retrieval process)
- *irrelevant response*: use mutual information to penalize generic responses
- *repetition*: block generating same n-grams, coverage mechanism
- lack of context
- lack of consistency, persona

### Storytelling

Image or prompt -> story

## Evaluation

*ROUGE*: Recall-oriented Understudy for Gisting Evaluation, focusing more on recall(information retrieval) than precision(BLEU). Higher ROUGE score does not guarantee better summarization.

*Perplexity* only tells you how strong your LM is but not generation.

### Aspect-based Automatic Metrics

- Fluency
- Style
- Diversity
- Relevance

Human evaluations aren't perfect either.

## Trends and the Future

- incorporating discrete latent variables
- non-autoregressive generation
- better objectives

1. use constraints in open-end generation tasks
2. aim for specific targets for both the model and evaluation
3. automatic metrics help
4. reproducibility