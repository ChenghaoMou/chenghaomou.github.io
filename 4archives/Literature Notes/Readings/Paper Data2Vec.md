---
abstract: "While the general idea of self-supervised learning is identical across modalities, the actual algorithms and objectives differ widely because they were developed with a single modality in mind. To get us closer to general self-supervised learning, we present data2vec, a framework that uses the same learning method for either speech, NLP or computer vision. The core idea is to predict latent representations of the full input data based on a masked view of the input in a selfdistillation setup using a standard Transformer architecture. Instead of predicting modality-specific targets such as words, visual tokens or units of human speech which are local in nature, data2vec predicts contextualized latent representations that contain information from the entire input. Experiments on the major benchmarks of speech recognition, image classification, and natural language understanding demonstrate a new state of the art or competitive performance to predominant approaches. Models and code are available at www.github.com/pytorch/fairseq/ tree/master/examples/data2vec."
order: -1
tags: [Natural Language Processing, Multi-modality, Representation]
title: Paper Data2Vec
---

## data2vec: A General Framework for Self-supervised Learning in Speech, Vision and Language

[@baevski_](zotero://select/items/@baevski_)

### Problem

Different objectives for each modality create gaps in performance as well frictions. [location](zotero://open-pdf/library/items/2GQ6A5JH?page=1&annotation=9YI43CT9)

### Solution

A unified objective – predicting latent representation for masked tokens/spans/patches from an all-seeing teacher model [location](zotero://open-pdf/library/items/2GQ6A5JH?page=1&annotation=ZJPPPFFK) and [location](zotero://open-pdf/library/items/2GQ6A5JH?page=2&annotation=2BNCLCWX):
- target: moving average of the representation from the teacher model (all layers or last $K$ layers [location](zotero://open-pdf/library/items/2GQ6A5JH?page=7&annotation=QJDSKYL7)), which sees all the information such that the hidden representation is contextualized
- prediction: hidden representations from the student model, where input is masked (image -> patches, speech -> spans, text -> words)
- objective: regression

### Tricks

1. Share encoder parameters between teacher and student [location](zotero://open-pdf/library/items/2GQ6A5JH?page=4&annotation=WHVUUUDP);
2. Normalization in target representations prevents collapsing – model generating similar representation for all inputs. [location](zotero://open-pdf/library/items/2GQ6A5JH?page=8&annotation=CGTAGTM2)
	1. Learning rate being too small or too large
	2. Decaying rate being too small
	3. Mask being too small

It is worth noting that each modality still requires different encoding mechanism since the information density and input representations are quite different. [location](zotero://open-pdf/library/items/2GQ6A5JH?page=2&annotation=HZRAWKNL) and [location](zotero://open-pdf/library/items/2GQ6A5JH?page=8&annotation=GQ5R3FRD)