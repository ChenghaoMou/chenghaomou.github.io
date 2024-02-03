---
order: -1
tags: ['multitasking learning', 'natural language processing', 'cs224n', 'course']
title: Lecture 17 Multitasking Learning
updated: '11-06-2021 15:18'
---

## Multitasking Learning

*Single-task learning*: train one model to do one job. But you need to start from scratch when switching to another task; Partially pre-trained models(Word2Vec, GloVe or ELMo) might help but still not ideal. (This is not a concern ever since the introduction of PLMs)

Tasks need supervision but the pre-training for general LMs are not using the same objective (before 2020).

*Unified multitasking learning*: one model to rule them all. No or minimum overhead dealing with new problems and potentially moves toward continual/life-long learning.

## decaNLP: The Natural Language Decathlon

- QA as the unified framework: *Question* + *Context* -> *Answer*
- Multitasking can hurt the performance: catastrophic forgetting
- Multitasking helps the zero-shot learning the most

## Multitasking Training Strategies

Issues for MT: pointer generator enforces the model to learn to point back to the input but machine translation task is ignoring that part of the model
- *Anti-Curriculum Training*: difficult tasks first to escape local optima; By difficult, it means how many epochs it takes to converge for a single-task model

## Transferability

- It transfers well to new tasks than random initialization
- Zero-shot performance
- compositional multitasking? e.g. English to German summary

