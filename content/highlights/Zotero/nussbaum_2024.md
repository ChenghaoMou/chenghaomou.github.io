---
aliases:
  - "Nomic Embed: Training a Reproducible Long Context Text Embedder"
  - "Nomic Embed: Training a Reproducible Long Context Text Embedder"
authors: "Zach Nussbaum, John X. Morris, Brandon Duderstadt, Andriy Mulyar"
date: '2024-02-05 21:32:53'
tags: []
title: "Nomic Embed: Training a Reproducible Long Context Text Embedder"
url: "https://arxiv.org/abs/2402.01613v1"
---

# Nomic Embed: Training a Reproducible Long Context Text Embedder




## Abstract
This technical report describes the training of nomic-embed-text-v1, the first fully reproducible, open-source, open-weights, open-data, 8192 context length English text embedding model that outperforms both OpenAI Ada-002 and OpenAI text-embedding-3-small on short and long-context tasks. We release the training code and model weights under an Apache 2 license. In contrast with other open-source models, we release a training data loader with 235 million curated text pairs that allows for the full replication of nomic-embed-text-v1. You can find code and data to replicate the model at https://github.com/nomic-ai/contrastors




> Finally, we use task specific prefixes to break the symmetry of the biencoder as in (Wang et al., 2022). Without prefixes, the model receives conflicting reward signal. Consider the case of determining which response is closest to the question ”What is the capital of France?”: 1. “What is the name of the capital city of France? 2. “Paris is the capital of France.” A semantic similarity task would consider the first closest, while a question answering task would consider the second closest. Prefixes enable the model to distinguish between the behaviors specified by each of these tasks. [(p. 4)](zotero://open-pdf/library/items/7PE46NUF?page=4)






```
@misc{Nussbaum_Morris_Duderstadt_Mulyar_2024, title={Nomic Embed: Training a Reproducible Long Context Text Embedder}, url={[https://arxiv.org/abs/2402.01613v1](https://arxiv.org/abs/2402.01613v1)}, abstractNote={This technical report describes the training of nomic-embed-text-v1, the first fully reproducible, open-source, open-weights, open-data, 8192 context length English text embedding model that outperforms both OpenAI Ada-002 and OpenAI text-embedding-3-small on short and long-context tasks. We release the training code and model weights under an Apache 2 license. In contrast with other open-source models, we release a training data loader with 235 million curated text pairs that allows for the full replication of nomic-embed-text-v1. You can find code and data to replicate the model at https://github.com/nomic-ai/contrastors}, note={{"size": 356769, “pages”: 12, “previous”: " "}}, journal={arXiv.org}, author={Nussbaum, Zach and Morris, John X. and Duderstadt, Brandon and Mulyar, Andriy}, year={2024}, month=feb, language={en} }
```