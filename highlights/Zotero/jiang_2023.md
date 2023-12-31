---
aliases:
  - Mistral 7B
authors: Albert Q. Jiang, Alexandre Sablayrolles, Arthur Mensch, Chris Bamford, Devendra Singh Chaplot, Diego de las Casas, Florian Bressand, Gianna Lengyel, Guillaume Lample, Lucile Saulnier, Lélio Renard Lavaud, Marie-Anne Lachaux, Pierre Stock, Teven Le Scao, Thibaut Lavril, Thomas Wang, Timothée Lacroix, William El Sayed
date: 2023-12-31 13:21:15
tags: []
title: "Mistral 7B"
url: https://arxiv.org/abs/2310.06825v1
---

# Mistral 7B

## Abstract
We introduce Mistral 7B v0.1, a 7-billion-parameter language model engineered for superior performance and efficiency. Mistral 7B outperforms Llama 2 13B across all evaluated benchmarks, and Llama 1 34B in reasoning, mathematics, and code generation. Our model leverages grouped-query attention (GQA) for faster inference, coupled with sliding window attention (SWA) to effectively handle sequences of arbitrary length with a reduced inference cost. We also provide a model fine-tuned to follow instructions, Mistral 7B -- Instruct, that surpasses the Llama 2 13B -- Chat model both on human and automated benchmarks. Our models are released under the Apache 2.0 license.

> Note that tokens outside the sliding window still influence next word prediction. At each attention layer, information can move forward by W tokens. Hence, after k attention layers, information can move forward by up to k × W tokens. [(p. 2)](zotero://open-pdf/library/items/PAA3EDR8?page=2)

> Sliding Window Attention. SWA exploits the stacked layers of a transformer to attend information beyond the window size W . The hidden state in position i of the layer k, hi, attends to all hidden states from the previous layer with positions between i − W and i. Recursively, hi can access tokens from the input layer at a distance of up to W × k tokens, as illustrated in Figure 1. [(p. 2)](zotero://open-pdf/library/items/PAA3EDR8?page=2)

> Rolling Buffer Cache. A fixed attention span means that we can limit our cache size using a rolling buffer cache. The cache has a fixed size of W , and the keys and values for the timestep i are stored in position i mod W of the cache. As a result, when the position i is larger than W , past values in the cache are overwritten, and the size of the cache stops increasing. [(p. 2)](zotero://open-pdf/library/items/PAA3EDR8?page=2)

> Pre-fill and Chunking. When generating a sequence, we need to predict tokens one-by-one, as each token is conditioned on the previous ones. However, the prompt is known in advance, and we can pre-fill the (k, v) cache with the prompt. If the prompt is very large, we can chunk it into smaller pieces, and pre-fill the cache with each chunk. For this purpose, we can select the window size as our chunk size. For each chunk, we thus need to compute the attention over the cache and over the chunk. [(p. 3)](zotero://open-pdf/library/items/PAA3EDR8?page=3)

![[statics/jiang_2023/image-3-x156-y407.png]] ^411f1d

```
@misc{Jiang_Sablayrolles_Mensch_Bamford_Chaplot_Casas_Bressand_Lengyel_Lample_Saulnier_et al._2023, title={Mistral 7B}, url={[https://arxiv.org/abs/2310.06825v1](https://arxiv.org/abs/2310.06825v1)}, abstractNote={We introduce Mistral 7B v0.1, a 7-billion-parameter language model engineered for superior performance and efficiency. Mistral 7B outperforms Llama 2 13B across all evaluated benchmarks, and Llama 1 34B in reasoning, mathematics, and code generation. Our model leverages grouped-query attention (GQA) for faster inference, coupled with sliding window attention (SWA) to effectively handle sequences of arbitrary length with a reduced inference cost. We also provide a model fine-tuned to follow instructions, Mistral 7B -- Instruct, that surpasses the Llama 2 13B -- Chat model both on human and automated benchmarks. Our models are released under the Apache 2.0 license.}, journal={arXiv.org}, author={Jiang, Albert Q. and Sablayrolles, Alexandre and Mensch, Arthur and Bamford, Chris and Chaplot, Devendra Singh and Casas, Diego de las and Bressand, Florian and Lengyel, Gianna and Lample, Guillaume and Saulnier, Lucile and Lavaud, Lélio Renard and Lachaux, Marie-Anne and Stock, Pierre and Scao, Teven Le and Lavril, Thibaut and Wang, Thomas and Lacroix, Timothée and Sayed, William El}, year={2023}, month=oct, language={en} }
```