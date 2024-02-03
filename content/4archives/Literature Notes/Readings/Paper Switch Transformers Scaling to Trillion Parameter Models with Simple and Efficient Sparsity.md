---
abstract: 'In deep learning, models typically reuse the same parameters for all inputs. Mixture of Experts (MoE) defies this and instead selects different parameters for each incoming example. The result is a sparsely-activated model – with outrageous numbers of parameters – but a constant computational cost. However, despite several notable successes of MoE, widespread adoption has been hindered by complexity, communication costs and training instability – we address these with the Switch Transformer. We simplify the MoE routing algorithm and design intuitive improved models with reduced communication and computational costs. Our proposed training techniques help wrangle the instabilities and we show large sparse models may be trained, for the first time, with lower precision (bfloat16) formats. We design models based off T5-Base and T5-Large to obtain up to 7x increases in pre-training speed with the same computational resources. These improvements extend into multilingual settings where we measure gains over the mT5-Base version across all 101 languages. Finally, we advance the current scale of language models by pre-training up to trillion parameter models on the "Colossal Clean Crawled Corpus" and achieve a 4x speedup over the T5-XXL model.'
authors: ['William Fedus', 'Barret Zoph', 'Noam Shazeer']
order: -1
ref: 'zotero://select/items/@fedusSwitchTransformersScaling2021'
tags: 
title: Paper Switch Transformers Scaling to Trillion Parameter Models with Simple and Efficient Sparsity
year: 2021
---

## Background

Essentially it is based on the concept of [[Mixture of Experts]] and this paper proposes a new architecture to solve some of the [[Mixture of Experts|MoE]] problems and provides some additional benchmarks and experiments.

## Model

One important hypothesis is that scaling the number of parameters in a neural network would increase the performance of the model but one can minimize the floating point operations (FLOPs) such neural networks so that the computation complexity is not increased.[[Scaling Laws for Neural Language Models]]

Original MoE model uses **a routing layer** to assign weights across experts and routes the input into **top K experts** accordingly. The intuition behind this K > 1 is that the layer will not learn how to route effectively if it weren't as least comparing two experts. **However, in this paper, the authors claim that switching into only one expert shows reasonable performance.**

Skipped tokens (showed in red) are passed down to the next layer through a residual connection.

To ensure a balanced load across experts in a switch layer, they use an auxiliary scaled loss to encourage uniform routing.

However, their experiments show their `largest Switch models, do not always translate their upstream perplexity well to downstream fine-tuning on
the SuperGLUE task` partially because the dynamics within the expert-models `is very complicated and
is dependent on regularization, load-balancing, and fine-tuning hyper-parameters`.

 To me, it looks like the model is again a demonstration of a Google product that integrates very well with Google frameworks and hardware like Tensorflow, TPUs and neatly engineered for performance like selective half precision, parameter initialization, expert/different dropouts, distillation, parallelism. In their experiments, computation budget or data are not really a concern, which usually is not the case for most people outside those tech companies.