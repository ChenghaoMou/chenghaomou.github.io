---
aliases:
  - "Cramming: Training a Language Model on a Single GPU in One Day"
authors: "Jonas Geiping, Tom Goldstein"
date: 2023-01-10 19:24:30
tags: []
title: "Cramming: Training a Language Model on a Single GPU in One Day"
url: "http://arxiv.org/abs/2212.14034"
---

# Cramming: Training a Language Model on a Single GPU in One Day

## Abstract

Recent trends in language modeling have focused on increasing performance through scaling, and have resulted in an environment where training language models is out of reach for most researchers and practitioners. While most in the community are asking how to push the limits of extreme computation, we ask the opposite question: How far can we get with a single GPU in just one day? We investigate the downstream performance achievable with a transformer-based language model trained completely from scratch with masked language modeling for a single day on a single consumer GPU. Aside from re-analyzing nearly all components of the pretraining pipeline for this scenario and providing a modiﬁed pipeline with performance close to BERT, we investigate why scaling down is hard, and which modiﬁcations actually improve performance in this scenario. We provide evidence that even in this constrained setting, performance closely follows scaling laws observed in large-compute settings. Through the lens of scaling laws, we categorize a range of recent improvements to training and architecture and discuss their merit and practical applicability (or lack thereof) for the limited compute setting.

<mark style="background: #ff0000">We pack tokenized data into randomized sequences of length 128 and separate unrelated fragments by &lt;sep&gt; The performance impact from dropping this separator was minimal. No impact was observed from including a &lt;cls&gt; token in pretraining.</mark> [(p. 5)](zotero://open-pdf/library/items/Q9BQNH4D?page=5)

<mark style="background: #ff0000">We observe that varying the transformer type and size has only minimal impact on the final loss after 24 hours. Models with more parameters learn more efficiently, as their MLM loss decreases faster on a per-gradient basis. However, smaller architectures make up for their slower learning efficiency by higher throughput, and thus process more tokens over the limited budget.</mark> [(p. 6)](zotero://open-pdf/library/items/Q9BQNH4D?page=6)

<mark style="background: #ff0000">We further keep the original multi-head self-attention mechanism. A large amount of work has been focused on efficient attention (Sukhbaatar et al., 2019; Beltagy et al., 2020; Wang et al., 2020a; Liu et al., 2021c) and studies of efficient attention (Tay et al., 2020a;b). But, because we set the maximal sequence length to 128, attention complexity is less of a concern in our setting. To verify this, we implement the recently proposed FLASH mechanism (Hua et al., 2022), but find no benefits. We further experiment with Fourier attention as proposed in Lee-Thorp et al. (2021), but find no improvements. We find rotary embeddings (Su et al., 2021; Black et al., 2022), to provide small benefits, but these are evened out by the drop in speed, so we ultimately decide against these.</mark> [(p. 6)](zotero://open-pdf/library/items/Q9BQNH4D?page=6)

<mark style="background: #ff0000">As observed in many studies, we find that pre-normalization with Layer Norms is beneficial over post Layer Norms (Baevski &amp; Auli, 2018; Xiong et al., 2020).</mark> [(p. 6)](zotero://open-pdf/library/items/Q9BQNH4D?page=6)

<mark style="background: #ff0000">Both triangular-shaped one-cycle schedules have better end-time behavior, possibly due to the quick annealing.</mark> [(p. 7)](zotero://open-pdf/library/items/Q9BQNH4D?page=7)

<mark style="background: #00ff00">We find that a simple one-cycle learning rate (Smith &amp; Topin, 2018) with a peak learning rate of 10−3 leads to minimal pretraining loss within our budget.</mark> [(p. 7)](zotero://open-pdf/library/items/Q9BQNH4D?page=7)

<mark style="background: #ff0000">We first evaluate deduplication as described in Lee et al. (2022) via exact substring deduplication, but find this not to help in downstream performance in our case.</mark> [(p. 9)](zotero://open-pdf/library/items/Q9BQNH4D?page=9)

<mark style="background: #00ff00">We then test filtering for uncompressible data. We use the tokenizer itself to remove all training sequences from C4 set that cannot be compressed well; we simply set a threshold t, e.g. t = 0.3, and drop all entries from the dataset where the number of tokens in the entry is larger than t times the number of raw characters. This removes, for example, sequences consisting of hard-to-compress HTML or markdown code. Surprisingly, this results in a measurable improvement on C4, summarized in Table 2.</mark> [(p. 9)](zotero://open-pdf/library/items/Q9BQNH4D?page=9)

<mark style="background: #ff0000">We pack tokenized data into randomized sequences of length 128 and separate unrelated fragments by &lt;sep&gt; The performance impact from dropping this separator was minimal. No impact was observed from including a &lt;cls&gt; token in pretraining.</mark> [(p. 5)](zotero://open-pdf/library/items/Q9BQNH4D?page=5)

<mark style="background: #ff0000">We observe that varying the transformer type and size has only minimal impact on the final loss after 24 hours. Models with more parameters learn more efficiently, as their MLM loss decreases faster on a per-gradient basis. However, smaller architectures make up for their slower learning efficiency by higher throughput, and thus process more tokens over the limited budget.</mark> [(p. 6)](zotero://open-pdf/library/items/Q9BQNH4D?page=6)

<mark style="background: #ff0000">We further keep the original multi-head self-attention mechanism. A large amount of work has been focused on efficient attention (Sukhbaatar et al., 2019; Beltagy et al., 2020; Wang et al., 2020a; Liu et al., 2021c) and studies of efficient attention (Tay et al., 2020a;b). But, because we set the maximal sequence length to 128, attention complexity is less of a concern in our setting. To verify this, we implement the recently proposed FLASH mechanism (Hua et al., 2022), but find no benefits. We further experiment with Fourier attention as proposed in Lee-Thorp et al. (2021), but find no improvements. We find rotary embeddings (Su et al., 2021; Black et al., 2022), to provide small benefits, but these are evened out by the drop in speed, so we ultimately decide against these.</mark> [(p. 6)](zotero://open-pdf/library/items/Q9BQNH4D?page=6)

<mark style="background: #ff0000">As observed in many studies, we find that pre-normalization with Layer Norms is beneficial over post Layer Norms (Baevski &amp; Auli, 2018; Xiong et al., 2020).</mark> [(p. 6)](zotero://open-pdf/library/items/Q9BQNH4D?page=6)

<mark style="background: #ff0000">Both triangular-shaped one-cycle schedules have better end-time behavior, possibly due to the quick annealing.</mark> [(p. 7)](zotero://open-pdf/library/items/Q9BQNH4D?page=7)

<mark style="background: #00ff00">We find that a simple one-cycle learning rate (Smith &amp; Topin, 2018) with a peak learning rate of 10−3 leads to minimal pretraining loss within our budget.</mark> [(p. 7)](zotero://open-pdf/library/items/Q9BQNH4D?page=7)

<mark style="background: #ff0000">We first evaluate deduplication as described in Lee et al. (2022) via exact substring deduplication, but find this not to help in downstream performance in our case.</mark> [(p. 9)](zotero://open-pdf/library/items/Q9BQNH4D?page=9)

<mark style="background: #00ff00">We then test filtering for uncompressible data. We use the tokenizer itself to remove all training sequences from C4 set that cannot be compressed well; we simply set a threshold t, e.g. t = 0.3, and drop all entries from the dataset where the number of tokens in the entry is larger than t times the number of raw characters. This removes, for example, sequences consisting of hard-to-compress HTML or markdown code. Surprisingly, this results in a measurable improvement on C4, summarized in Table 2.</mark> [(p. 9)](zotero://open-pdf/library/items/Q9BQNH4D?page=9)

## Notes

---
Comment: 22 pages, we provide code at https://github.com/JonasGeiping/cramming

```
@article{Geiping_Goldstein_2022, title={Cramming: Training a Language Model on a Single GPU in One Day}, url={[http://arxiv.org/abs/2212.14034](http://arxiv.org/abs/2212.14034)}, abstractNote={Recent trends in language modeling have focused on increasing performance through scaling, and have resulted in an environment where training language models is out of reach for most researchers and practitioners. While most in the community are asking how to push the limits of extreme computation, we ask the opposite question: How far can we get with a single GPU in just one day? We investigate the downstream performance achievable with a transformer-based language model trained completely from scratch with masked language modeling for a single day on a single consumer GPU. Aside from re-analyzing nearly all components of the pretraining pipeline for this scenario and providing a modiﬁed pipeline with performance close to BERT, we investigate why scaling down is hard, and which modiﬁcations actually improve performance in this scenario. We provide evidence that even in this constrained setting, performance closely follows scaling laws observed in large-compute settings. Through the lens of scaling laws, we categorize a range of recent improvements to training and architecture and discuss their merit and practical applicability (or lack thereof) for the limited compute setting.}, note={0 citations (Semantic Scholar/arXiv) [2023-01-06] arXiv:2212.14034 [cs]}, number={arXiv:2212.14034}, publisher={arXiv}, author={Geiping, Jonas and Goldstein, Tom}, year={2022}, month={Dec}, language={en} }
```

%% Import Date: 2023-01-10T19:25:45.711-08:00 %%
