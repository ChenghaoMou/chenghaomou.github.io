---
aliases:
  - "LayoutReader: Pre-training of Text and Layout for Reading Order Detection"
authors: ['Zilong Wang', 'Yiheng Xu', 'Lei Cui', 'Jingbo Shang', 'Furu Wei']
citeKey: 'wangLayoutReaderPretrainingText2021'
linter-yaml-title-alias: "LayoutReader: Pre-training of Text and Layout for Reading Order Detection"
order: -1
tags: ['document', 'layout', 'natural language processing']
title: "LayoutReader: Pre-training of Text and Layout for Reading Order Detection"
type: 'Article'
updated: '10-11-2021 19:16'
url: 'http://arxiv.org/abs/2108.11591'
---

# LayoutReader: Pre-training of Text and Layout for Reading Order Detection

[zotero](zotero://open-pdf/library/items/XI6X6IGT)

## Abstract

Reading order detection is the cornerstone to understanding visually-rich documents (e.g., receipts and forms). Unfortunately, no existing work took advantage of advanced deep learning models because it is too laborious to annotate a large enough dataset. We observe that the reading order of WORD documents is embedded in their XML metadata; meanwhile, it is easy to convert WORD documents to PDFs or images. Therefore, in an automated manner, we construct ReadingBank, a benchmark dataset that contains reading order, text, and layout information for 500,000 document images covering a wide spectrum of document types. This first-ever large-scale dataset unleashes the power of deep neural networks for reading order detection. Specifically, our proposed `LayoutReader` captures the text and layout information for reading order prediction using the seq2seq model. It performs almost perfectly in reading order detection and significantly improves both open-source and commercial OCR engines in ordering text lines in their results in our experiments. We will release the dataset and model at \url{https://aka.ms/layoutreader}.

## Highlights

> We observe that the reading order of WORD documents is embedded in their XML metadata; meanwhile, it is easy to convert WORD documents to PDFs or images.

> We further propose LayoutReader, a novel reading order detection model in which the seq2seq model is used by encoding the text and layout information and generating the index sequence in the reading order.

> We crawl the WORD documents in DocX format from the internet considering the robots exclusion standard as well as the public domain license.

Same ethical concerns. Documents, though are more likely to be form media for text, should not be exempt from bias investigation.

> We further use the language detection API 2 with a high confidence threshold to filter non-English or bilingual documents because we focus on the reading order detection for English documents in this work.

The reading order for the English language itself is generally left to right and top to bottom. But the document layout might adds more complication to the final order.

> We further randomly select 500,000 pages to build our dataset.

Ablation on forms, columns, tables, lists, and many other forms of text that may present in the dataset.

> LayoutReader (text only) can guarantee the right order of tokens but suffers from the incompleteness of generation.

---

## Zotero Links

* [Local library](zotero://select/items/1_MDIMQU67)
* [Cloud library](http://zotero.org/users/8285474/items/MDIMQU67)