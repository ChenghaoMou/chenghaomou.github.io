---
order: -1
tags: 
title: Paper Robust Open-Vocabulary Translation from Visual Text Representations
---
We have seen similar problems using subwords for languages like English in paper [[Paper CANINE Pre-training an Efficient Tokenization-Free Encoder for Language Representation]], and in this paper, the authors takes on the same problem with a refreshing perspective - learning text embeddings from visually rendered text.

Text segmentation techniques like BPE and SentencePiece are subject to a lot of noise from the following scenarios:

| Phenomena                   | Word     | BPE         |
| --------------------------- | -------- | ----------- |
| Vowelization                | كتاب     | كتاب        |
|                             |          | الك·ِ·ت·اب· |
| Misspelling                 | lang**ua**ge | language    |
|                             | lang**au**ge | la ng au ge |
| Confusables                 | rea**ll**y   | really      |
|                             | rea**11**y   | re a 1 1 y  |
| Shared Character Components | 확인**한**다 | 확인·한·다  |
|                             | 확인**했**다 | 확인·했다   |

![[vtr.png|Architecture]]

Here, the rendered text is segmented into blocks/slices using a sliding window and each slice goes through a series of transformations — Conv2D, BatchNorm, ReLU and a linear transformation — and eventually goes to a standard transformer for further processing.

Some interesting observations from the paper:
- Given a fixed window size, increasing the stride degrades the performance
- Increasing the convolution channel size does not necessarily translate into performance gains
- Smaller strides increase the training time as the sequence are getting longer
- Consistent improvement over baseline models on noisy data (confusables, permutations, natural noise like misspelling)
