---
aliases:
  - "MTEB: Massive Text Embedding Benchmark"
authors: "Niklas Muennighoff, Nouamane Tazi, Loïc Magne, Nils Reimers"
date: 2023-01-10 19:24:30
linter-yaml-title-alias: "MTEB: Massive Text Embedding Benchmark"
order: -1
tags: 
title: "MTEB: Massive Text Embedding Benchmark"
url: "http://arxiv.org/abs/2210.07316"
---

# MTEB: Massive Text Embedding Benchmark

## Abstract

Text embeddings are commonly evaluated on a small set of datasets from a single task not covering their possible applications to other tasks. It is unclear whether state-of-the-art embeddings on semantic textual similarity (STS) can be equally well applied to other tasks like clustering or reranking. This makes progress in the field difficult to track, as various models are constantly being proposed without proper evaluation. To solve this problem, we introduce the Massive Text Embedding Benchmark (MTEB). MTEB spans 8 embedding tasks covering a total of 56 datasets and 112 languages. Through the benchmarking of 33 models on MTEB, we establish the most comprehensive benchmark of text embeddings to date. We find that no particular text embedding method dominates across all tasks. This suggests that the field has yet to converge on a universal text embedding method and scale it up sufficiently to provide state-of-the-art results on all embedding tasks. MTEB comes with open-source code and a public leaderboard at https://huggingface.co/spaces/mteb/leaderboard.

<mark style="background: #5fb236">Massive Text Embedding Benchmark (MTEB). MTEB spans 8 embedding tasks covering a total of 56 datasets and 112 languages.</mark> [(p. 1)](zotero://open-pdf/library/items/N5SQ6ANE?page=1)

<mark style="background: #5fb236">MTEB consists of 56 datasets covering 112 languages from 8 embedding tasks: Bitext mining, classification, clustering, pair classification, reranking, retrieval, STS and summarization.</mark> [(p. 1)](zotero://open-pdf/library/items/N5SQ6ANE?page=1)

<mark style="background: #5fb236">(a) Diversity: MTEB aims to provide an understanding of the usability of embedding models in various use cases. The benchmark comprises 8 different tasks, with up to 15 datasets each. Of the 56 total datasets in MTEB, 10 are multilingual, covering 112 different languages. Sentence-level and paragraph-level datasets are included to contrast performance on short and long texts.</mark> [(p. 2)](zotero://open-pdf/library/items/N5SQ6ANE?page=2)

<mark style="background: #5fb236">(b) Simplicity: MTEB provides a simple API for plugging in any model that given a list of texts can produce a vector for each list item with a consistent shape. This makes it possible to benchmark a diverse set of models.</mark> [(p. 2)](zotero://open-pdf/library/items/N5SQ6ANE?page=2)

<mark style="background: #5fb236">(c) Extensibility: New datasets for existing tasks can be benchmarked in MTEB via a single file that specifies the task and a HuggingFace dataset name where the data has been uploaded (Lhoest et al., 2021). New tasks require implementing a task interface for loading the data and an evaluator for benchmarking. We welcome dataset, task or metric contributions from the community via pull requests to continue the development of MTEB.</mark> [(p. 2)](zotero://open-pdf/library/items/N5SQ6ANE?page=2)

<mark style="background: #a28ae5">The provided model is used to embed each sentence and the closest pairs are found via cosine similarity. F1 serves as the main metric for bitext mining. Accuracy, precision and recall are also computed.</mark> [(p. 3)](zotero://open-pdf/library/items/N5SQ6ANE?page=3)

> Bitext mining

<mark style="background: #a28ae5">A k-means model is trained on the embedded texts and scored using v-measure (Rosenberg and Hirschberg, 2007).</mark> [(p. 3)](zotero://open-pdf/library/items/N5SQ6ANE?page=3)

<mark style="background: #a28ae5">The resulting ranking is scored for each query and averaged across all queries. Metrics are mean MRR@k and MAP with the latter being the main metric.</mark> [(p. 3)](zotero://open-pdf/library/items/N5SQ6ANE?page=3)

<mark style="background: #a28ae5">After ranking the corpus documents for each query based on the scores, nDCG@k, MRR@k,</mark> [(p. 3)](zotero://open-pdf/library/items/N5SQ6ANE?page=3)

<mark style="background: #a28ae5">MAP@k, precision@k and recall@k are computed for several values of k. nDCG@10 serves as the main metric. MTEB reuses datasets and evaluation from BEIR (Thakur et al., 2021).</mark> [(p. 4)](zotero://open-pdf/library/items/N5SQ6ANE?page=4)

<mark style="background: #a28ae5">Distances are benchmarked with ground truth similarities using Pearson and Spearman correlations. Spearman correlation based on cosine similarity serves as the main metric (Reimers et al., 2016).</mark> [(p. 4)](zotero://open-pdf/library/items/N5SQ6ANE?page=4)

<mark style="background: #a28ae5">For each machine summary embedding, distances to all human summary embeddings are computed. The closest score (e.g. highest cosine similarity) is kept and used as the model’s score of a single machine-generated summary. Pearson and Spearman correlations with ground truth human assessments of the machine-generated summaries are computed. Like for STS, Spearman correlation based on cosine similarity serves as the main metric (Reimers et al., 2016).</mark> [(p. 4)](zotero://open-pdf/library/items/N5SQ6ANE?page=4)

## Notes

---
Comment: 23 pages, 14 tables, 6 figures

---
Comment: 23 pages, 14 tables, 6 figures

```
@article{Muennighoff_Tazi_Magne_Reimers_2022, title={MTEB: Massive Text Embedding Benchmark}, url={[http://arxiv.org/abs/2210.07316](http://arxiv.org/abs/2210.07316)}, DOI={[10.48550/arXiv.2210.07316](https://doi.org/10.48550/arXiv.2210.07316)}, abstractNote={Text embeddings are commonly evaluated on a small set of datasets from a single task not covering their possible applications to other tasks. It is unclear whether state-of-the-art embeddings on semantic textual similarity (STS) can be equally well applied to other tasks like clustering or reranking. This makes progress in the field difficult to track, as various models are constantly being proposed without proper evaluation. To solve this problem, we introduce the Massive Text Embedding Benchmark (MTEB). MTEB spans 8 embedding tasks covering a total of 56 datasets and 112 languages. Through the benchmarking of 33 models on MTEB, we establish the most comprehensive benchmark of text embeddings to date. We find that no particular text embedding method dominates across all tasks. This suggests that the field has yet to converge on a universal text embedding method and scale it up sufficiently to provide state-of-the-art results on all embedding tasks. MTEB comes with open-source code and a public leaderboard at https://huggingface.co/spaces/mteb/leaderboard.}, note={0 citations (Semantic Scholar/arXiv) [2022-10-22] 0 citations (Semantic Scholar/DOI) [2022-10-22] arXiv:2210.07316 [cs]}, number={arXiv:2210.07316}, publisher={arXiv}, author={Muennighoff, Niklas and Tazi, Nouamane and Magne, Loïc and Reimers, Nils}, year={2022}, month={Oct} }
```

%% Import Date: 2023-01-10T19:25:45.995-08:00 %%
