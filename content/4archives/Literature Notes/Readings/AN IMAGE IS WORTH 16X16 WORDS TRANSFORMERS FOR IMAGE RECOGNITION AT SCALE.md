---
aliases:
  - "AN IMAGE IS WORTH 16X16 WORDS: TRANSFORMERS FOR IMAGE RECOGNITION AT SCALE"
linter-yaml-title-alias: "AN IMAGE IS WORTH 16X16 WORDS: TRANSFORMERS FOR IMAGE RECOGNITION AT SCALE"
order: -1
tags: ["paper reading", "computer vision", "transformer"]
title: "AN IMAGE IS WORTH 16X16 WORDS: TRANSFORMERS FOR IMAGE RECOGNITION AT SCALE"
---

# AN IMAGE IS WORTH 16X16 WORDS: TRANSFORMERS FOR IMAGE RECOGNITION AT SCALE

Found an interesting [thread](https://mobile.twitter.com/srush_nlp/status/1498761178293714947) on Twitter:

> Request for Counterparty: I would like to make a Erlich / Buffett bet on a proposition similar to:
>
> "On 1/1/2027, a Transformer-like will continue to hold the SoTA in effectively all benchmarked NLP tasks."
>
> I would be taking the negative position.
>
> –– Sasha Rush [@srush_nlp](https://twitter.com/srush_nlp/status/1498761178293714947?ref_src=twsrc%5Etfw), March 1, 2022

I would put my bet on something new and cool that will replace Transformer in the decade to come. Not just because I have faith in us and our creativity, but also I am starting to get tired of seeing x-former papers gushing out arxiv everyday.

It is really fascinating to see we human beings as a whole, are making amazing progress virtually from nothing, completely bootstrapping our way into civilization and intelligence. A small step in one direction might lead to leaps in others. Just like Transformers, the go-to architecture and SOTA backbone in NLP in recent years, now are flourishing in computer vision as well.

The latest version of the paper was published on arxiv on 3 June 2021 when Transformer is already a catchy phrase in NLP and CNN has long been the dominant type of architecture used for computer vision.

## Ideas

The idea of this paper is really simple – adopting Transformer for computer vision, mainly for image classification with minimal modification, so that implementation could easily be as efficient and scalable as normal Transformers.

> When trained on mid-sized datasets such as ImageNet without strong regularization, these models yield modest accuracies of a few percentage points below ResNets of comparable size. This seemingly discouraging outcome may be expected: Transformers lack some of the inductive biases inherent to CNNs, such as translation equivariance and locality, and therefore do not generalize well when trained on insufficient amounts of data.

> However, the picture changes if the models are trained on larger datasets (14M-300M images). We find that large scale training trumps inductive bias. Our Vision Transformer (ViT) attains excellent results when pre-trained at sufficient scale and transferred to tasks with fewer datapoints.

Above two paragraphs basically tell us that **pre-training with a large dataset** closes the gap between Transformers and powerful CNNs. It sort of echos the same story that usually goes along with Transformer: though data-hungry, the model can learn information comparable to [placeholder].

Naturally, it makes sense to further explore this gap, such as [@han_2021](zotero://select/items/@han_2021).

In a similar situation, in their scaling section, ViT catches up when the pre-training dataset grows, surpassing the hybrid (ResNet + ViT).

## Efficiency and Cost

ViT models are more efficient, both in terms of data and training cost.

> Vision Transformers generally outperform ResNets with the same computational budget. Hybrids improve upon pure Transformers for smaller model sizes, but the gap vanishes for larger models.

> Finally, the ViT-L/16 model pre-trained on the public ImageNet-21k dataset performs well on most datasets too, while taking fewer resources to pre-train: it could be trained using a standard cloud TPUv3 with 8 cores in approximately 30 days.

Who else is rich in money or in time for pre-training other than those giant tech companies? Admittedly, it is good that they report these numbers unlike many papers barely mention anything about the cost.

## Image VS. Text

$16\times16$ does not seem like a lot, especially when you think about typically sequence length in NLP tasks (512 ~ 1024), even when they crack up the resolution to have $32 \times 32$ patches, it is only done during fine-tuning. I wonder how this might demonstrate the information density in images vs in text and also in fields where two modalities overlap such as document analysis, would this architecture or assumption still hold? (e.g. 1D VS. 2D positional embeddings)

## What's Next?

A new architecture MLP-Mixer is in town to compete with both CNN and Transformer. Hopefully we can expect some CV-native architectures as well.

