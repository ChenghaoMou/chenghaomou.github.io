---
aliases:
  - Fast Inference from Transformers via Speculative Decoding
  - 'Fast Inference from Transformers via Speculative Decoding'
  - "Fast Inference from Transformers via Speculative Decoding"
authors: "Yaniv Leviathan, Matan Kalman, Yossi Matias"
date: '2023-12-03 14:23:40'
tags:
title: "Fast Inference from Transformers via Speculative Decoding"
url: "http://arxiv.org/abs/2211.17192"
---

# Fast Inference from Transformers via Speculative Decoding




## Abstract
Inference from large autoregressive models like Transformers is slow - decoding K tokens takes K serial runs of the model. In this work we introduce speculative decoding - an algorithm to sample from autoregressive models faster without any changes to the outputs, by computing several tokens in parallel. At the heart of our approach lie the observations that (1) hard language-modeling tasks often include easier subtasks that can be approximated well by more efficient models, and (2) using speculative execution and a novel sampling method, we can make exact decoding from the large models faster, by running them in parallel on the outputs of the approximation models, potentially generating several tokens concurrently, and without changing the distribution. Our method can accelerate existing off-the-shelf models without retraining or architecture changes. We demonstrate it on T5-XXL and show a 2X-3X acceleration compared to the standard T5X implementation, with identical outputs.




> The core idea is to (1) use the more efﬁcient model Mq to generate γ ∈ Z+ completions (see Section 3.5 for how to optimally choose this parameter), then (2) use the target model Mp to evaluate all of the guesses and their respective probabilities from Mq in parallel, accepting all those that can lead to an identical distribution, and (3) sam- pling an additional token from an adjusted distribution to ﬁx the ﬁrst one that was rejected, or to add an additional one if they are all accepted. That way, each parallel run of the target model Mp will produce at least one new token (so the number of serial runs of the target model can never, even in the worst case, be larger than the simple autoregressive method), but it can potentially generate many new tokens, up to γ + 1, depending on how well Mq approximates Mp. [(p. 2)](zotero://open-pdf/library/items/SU5Z4XYC?page=2)






## Notes



---
Comment: ICML 2023 Oral




```
@article{Leviathan_Kalman_Matias_2023, title={Fast Inference from Transformers via Speculative Decoding}, url={[http://arxiv.org/abs/2211.17192](http://arxiv.org/abs/2211.17192)}, DOI={[10.48550/arXiv.2211.17192](https://doi.org/10.48550/arXiv.2211.17192)}, abstractNote={Inference from large autoregressive models like Transformers is slow - decoding K tokens takes K serial runs of the model. In this work we introduce speculative decoding - an algorithm to sample from autoregressive models faster without any changes to the outputs, by computing several tokens in parallel. At the heart of our approach lie the observations that (1) hard language-modeling tasks often include easier subtasks that can be approximated well by more efficient models, and (2) using speculative execution and a novel sampling method, we can make exact decoding from the large models faster, by running them in parallel on the outputs of the approximation models, potentially generating several tokens concurrently, and without changing the distribution. Our method can accelerate existing off-the-shelf models without retraining or architecture changes. We demonstrate it on T5-XXL and show a 2X-3X acceleration compared to the standard T5X implementation, with identical outputs.}, note={arXiv:2211.17192 [cs]}, number={arXiv:2211.17192}, publisher={arXiv}, author={Leviathan, Yaniv and Kalman, Matan and Matias, Yossi}, year={2023}, month=may }
```