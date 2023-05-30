---
citation: |
created: 2022-05-07
order: -1
reference: "https://proceedings.neurips.cc/paper/2021/hash/0084ae4bc24c0795d1e6a4f58444d39b-Abstract.html"
tags: [document understanding, natural language processing]
title: UniDoc Unified Pretraining Framework for Document Understanding
updated: 2022-05-11
---

## Hierarchical Document Textual Representation

By stacking two transformers sequentially, the system models paragraph representations from tokens and then document representations on top of paragraph representations. It:

1. Trades parameters and computation for longer sequences ($512^2$ tokens for each document), even though they claim it reduces computation complexity.
2. Allows interactions within paragraphs/semantic regions (or as they call it, sentences in the beginning) from a higher level compared to normal token-to-token attentions.
3. Allows interactions between paragraphs and paragraph bounding boxes.

It is unclear what exactly is semantic region by their definition. Based on the paper, It looks like it is whatever [JaidedAI/EasyOCR](https://github.com/JaidedAI/EasyOCR) outputs and ideally it maps to paragraphs.

Personally, OCR blocks/paragraphs aren't great in general. Because documents don't necessarily follow strict rules of English text. OCR, unless specializes in document images, even then the document domain can vary a lot, does not share the same understanding of a document as human. For example:

1. Not everything can be classified as sentences or paragraphs;
   1. You cannot just call a table a sentence or a paragraph. It is even trickier to even pass the table content into the model since it can be a column table, row table or a mix. You sequence of tokens are still sequential.
   2. Corner cases like TOC, graph or chart, code blocks, page breaks and formulas make it even harder;
2. Additionally, using bounding box can be a loose visual representation if you have multi-columns on one page.

## Multi-modal Objectives

1. Masked Sentence/Paragraph Prediction
   1. To be more precise, it is not exactly predicting a sentence itself but the sentence embedding from the first transformer;
2. Masked Region of Interest (RoI) Prediction
   1. Because all RoIs are quantized into a finite vocabulary, this is equivalent to the Masked Token Prediction and the prediction probability comes from cosine similarities instead of some MLP output;
3. Multi-modal Similarity Alignment
   1. Even though the textual and visual information live in two embedding spaces, the element-wise similarities should be aligned;

---

- Highlights: [[Gu et al_2021_UniDoc]]
- Citation: [@gu_2021b](zotero://select/items/@gu_2021b)
