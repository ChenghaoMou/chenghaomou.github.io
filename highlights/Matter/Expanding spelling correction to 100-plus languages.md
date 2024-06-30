---
url: "https://www.microsoft.com/en-us/research/blog/speller100-zero-shot-spelling-correction-at-scale-for-100-plus-languages/"
author: "Jingwen Lu"
publisher: "Microsoft"
published: 2021-02-08
aliases:
  -  Expanding spelling correction to 100-plus languages
title: Expanding spelling correction to 100-plus languages
---

## Highlights
> •

> The number of pages with no results reduced by up to 30%. * The number of times users had to manually reformulate their query reduced by 5%. * The number of times users clicked on our spelling suggestion increased from single digits to 67%. * The number of times users clicked on any item on the page went from single digits to 70%.

> This was made possible by leveraging recent advances in AI, particularly zero-shot learning combined with carefully designed large-scale pretraining tasks, and we also draw on historical linguistics theories.

> In search we’ve found about 15% of queries submitted by customers have misspellings.

> We’ve found we need a very large number of data points to train a high-quality spelling correction model for each language, and sourcing data in over 100 languages would be incredibly difficult logistically—not to mention costly in both time and money.

> For precise and high-performing error models, search engines have largely leveraged user feedback on autocorrection recourse links. This practice has been very effective, especially for languages where user feedback data has been gathered on a large scale. For a language with very little web presence and user feedback, it’s challenging to gather an adequate amount of training data.

> Broadly speaking, there are two types of spelling errors. One is non-word error, and the other is real-word error.

> we designed a spelling correction pretraining task to enrich standard Transformer-based models.

> Also, if typos are considered noises in text, spelling correction can be considered as a denoising process that converts corrupted text into its original text.

> BART is trained by corrupting text with an arbitrary noise function and learning a model to reconstruct the original text.

> We have designed noise functions to generate common errors of rotation, insertion, deletion, and replacement. See the figure below for examples of these common errors.

