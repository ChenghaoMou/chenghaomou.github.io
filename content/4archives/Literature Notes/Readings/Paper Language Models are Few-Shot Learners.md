---
aliases:
  - Second Pass
linter-yaml-title-alias: Second Pass
order: -1
tags: 
title: Second Pass
---

## Content

- [x] Title, abstract, and introduction
- [x] All headings
- [x] Conclusion
- [] References

## Goals

- [x] What is the category of this paper
	- Autoregressive language model
	- Zero-shot, one-shot, and few-short learning
- [x] What is the context of this paper
	- Pre-trianed models have lend incredible help to current NLP tasks
	- Fine-tuning requires too much efforts for each new individual task
	- Fine-tuning does not give us a realistic idea about the model's generalization ability, i.e poor generalization out-of-distribution data
	- Fine-tuning might be biased with some suprious features in the data
- [x] What are the assumptions of this paper
	- The loss follows a smooth trend of improvement with scale
- [x] What are the main contributions of this paper
	- A new bigger autoregressive model with 175 billion parameters
	- Demonstration that this model is a strong competitor in zero-shot, one-shot, and few-shot settings
	- Better data contamination analysis in terms of training with the internet
- [] Is the paper well-written

# Second Pass

## Content

- [x] Figures, diagrams, and other illustrations
- [] Mark useful references

## Goals

- [x] Summarize the paper with supporting evidence
	- The new model uses the same architecture as GPT2 but with a new size (175B)
	- Collected dataset is deduplicated as far as they could (also measured by comparing cleaned and dirty benchmark scores) and augmented (addtion from books, wikipedias etc.)
	- Limitation of autoregressive training for some tasks (fill-in-the-blank, comparison), bias, cost, etc.
	- Fine-tuning GPT3 would be a nice feature work

# Third Pass

## Content

- [] Virtually re-implement
- [] Identify and challenge every assumption

## Goals

- [] Reconstruct the entire structure
- [] Identify strong and weak points
- [] Identify implicit assumptions, missing citations, and issues with experimental and analytical techniques