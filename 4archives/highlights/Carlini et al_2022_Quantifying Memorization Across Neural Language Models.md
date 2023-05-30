---
order: -1
tags: 
title: Carlini et al_2022_Quantifying Memorization Across Neural Language Models
---

#### [Page 1](highlights://Carlini%20et%20al_2022_Quantifying%20Memorization%20Across%20Neural%20Language%20Models#page=1)

> This is undesirable because memorization violates privacy
> (exposing user data), degrades utility (repeated
> easy-to-memorize text is often low quality), and hurts fairness
> (some texts are memorized over others).

***

> Memorization significantly grows as we increase (1) the capacity
> of a model, (2) the number of times an example has been
> duplicated, and (3) the number of tokens of context used to
> prompt the model.

***

#### [Page 2](highlights://Carlini%20et%20al_2022_Quantifying%20Memorization%20Across%20Neural%20Language%20Models#page=2)

> To construct a set of prompts from the model’s training set, we
> feed varying-length prefixes of the training data back into the
> trained model, and verify whether the model has the ability to
> complete the rest of the example verbatim.

***

> 1. Model scale: Within a model family, larger models memorize
> 2-5× more data than smaller models. 2. Data duplication:
> Examples repeated more often are more likely to be extractable.
> 3. Context: It is orders of magnitude easier to extract
> sequences when given a longer surrounding context.

***

#### [Page 3](highlights://Carlini%20et%20al_2022_Quantifying%20Memorization%20Across%20Neural%20Language%20Models#page=3)

> A string s is extractable with k tokens of context from a model
> f if there exists a (length-k) string p, such that the
> concatenation [ p || s] is contained in the training data for f
> , and f produces s when prompted with p using greedy decoding.

***

#### [Page 4](highlights://Carlini%20et%20al_2022_Quantifying%20Memorization%20Across%20Neural%20Language%20Models#page=4)

> Instead, we query on a small subset of the training data. This
> subset should be small enough that it is feasible to test for
> extraction, but also large enough that it gives statistical
> confidence. In this paper we choose subsets of roughly 50,000
> sequences.

***

#### [Page 5](highlights://Carlini%20et%20al_2022_Quantifying%20Memorization%20Across%20Neural%20Language%20Models#page=5)

> Therefore, we conclude that when larger models have a higher
> fraction of extractable training data, it is because they have
> memorized the data; it is not simply because the larger models
> are generally more accurate.

***

#### [Page 6](highlights://Carlini%20et%20al_2022_Quantifying%20Memorization%20Across%20Neural%20Language%20Models#page=6)

> However, we find that memorization does still happen, even with
> just a few duplicates—thus, deduplication will not perfectly
> prevent leakage. While this relationship is perhaps obvious, and
> has been corroborated for specific training examples in prior
> work (Carlini et al., 2019, 2020), our results show that it
> holds across the entire training set.

***

#### [Page 9](highlights://Carlini%20et%20al_2022_Quantifying%20Memorization%20Across%20Neural%20Language%20Models#page=9)

> We found most of these universally-memorized sequences to be
> “unconventional” texts such as code snippets or highly
> duplicated texts such as open source licenses.

***

> Increasing model size leads to large numbers of nonoverlapping
> memorized sequences, although every model has some amount of
> memorization not shared by each other model. (Even the 125M
> model memorizes a few sequences the 6B model does not.)

***

#### [Page 11](highlights://Carlini%20et%20al_2022_Quantifying%20Memorization%20Across%20Neural%20Language%20Models#page=11)

> Surprisingly, we find that most of the duplicate examples
> contained in the 138-158 repeat bucket are mostly whitespace
> tokens, making these sequences much easier to predict correctly
> than sequences found at other repeat counts. This effect, to a
> lesser extent, can be found in other buckets which contain many
> approximately near duplicates.

***

> We hypothesize that this is due to the fact that any
> deduplication strategy is necessarily imperfect in order to
> efficiently scale to hundreds of gigabytes of training data.
> Thus, while it may be possible to remove most instances of
> duplicate data, different and valid definitions of duplicates
> can mean deduplication is not exhaustive.

***

