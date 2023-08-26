---
aliases:
  - Measuring Massive Multitask Language Understanding
linter-yaml-title-alias: Measuring Massive Multitask Language Understanding
order: -1
tags: 
title: Measuring Massive Multitask Language Understanding
---

# Measuring Massive Multitask Language Understanding

## Dan Hendrycks, Collin Burns, Steven Basart, Andy Zou, Mantas Mazeika, Dawn Song, Jacob Steinhardt

### Deep Learning, Transformers, NLP

#### [Page 1](highlights://Hendrycks%20et%20al_2021_Measuring%20Massive%20Multitask%20Language%20Understanding#page=1)

> To attain high accuracy on this test, models must possess
> extensive world knowledge and problem solving ability. We find
> that while most recent models have near random-chance accuracy,
> the very largest GPT-3 model improves over random chance by
> almost 20 percentage points on average. However, on every one of
> the 57 tasks, the best models still need substantial
> improvements before they can reach expert-level accuracy.

> Models also have lopsided performance and frequently do not know
> when they are wrong. Worse, they still have near- random
> accuracy on some socially important subjects such as morality
> and law.

morality and law are culture-dependent. I assume this is English-oriented?

> Overall, the near human-level performance on these benchmarks
> suggests that they are not capturing important facets of
> language understanding.

What happens when this benchmark is solved? Can we claim human-level intelligence? Benchmark lottery

#### [Page 2](highlights://Hendrycks%20et%20al_2021_Measuring%20Massive%20Multitask%20Language%20Understanding#page=2)

> The tasks with near-random accuracy include calculation-heavy
> subjects such as physics and mathematics and subjects related to
> human values such as law and morality.

> Worryingly, we also find that GPT-3 does not have an accurate
> sense of what it does or does not know since its average
> confidence can be up to 24% off from its actual accuracy.

#### [Page 7](highlights://Hendrycks%20et%20al_2021_Measuring%20Massive%20Multitask%20Language%20Understanding#page=7)

> While it knows about the order of operations, it sometimes does
> not know how to apply its knowledge.

#### [Page 8](highlights://Hendrycks%20et%20al_2021_Measuring%20Massive%20Multitask%20Language%20Understanding#page=8)

> Models also have difficulty performing calculations, so much so
> that they exhibit poor performance on Elementary Mathematics and
> many other STEM subjects with “plug and chug” problems.
> Additionally, they do not match expert-level performance (90%)
> on any subject, so for all subjects it is subhuman. On average,
> models are only now starting to move beyond random-chance
> accuracy levels.

> To test the impact of additional specialized training data, we
> also had RoBERTa continue pretraining on approximately 1.6
> million legal case summaries using Harvard’s Law Library case
> law corpus case.law, but after fine-tuning it only attained
> 36.1% accuracy. This suggests that while additional pretraining
> on relevant high quality text can help, it may not be enough to
> substantially increase the performance of current models.