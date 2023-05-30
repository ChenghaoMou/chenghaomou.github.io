---
aliases:
  - "Unlimiformer: Long-Range Transformers with Unlimited Length Input"
authors: "Amanda Bertsch, Uri Alon, Graham Neubig, Matthew R. Gormley"
date: '2023-05-08 15:24:56'
linter-yaml-title-alias: "Unlimiformer: Long-Range Transformers with Unlimited Length Input"
order: -1
tags: 
title: "Unlimiformer: Long-Range Transformers with Unlimited Length Input"
url: "http://arxiv.org/abs/2305.01625"
---

# Unlimiformer: Long-Range Transformers with Unlimited Length Input




## Abstract
Transformer-based models typically have a predefined bound to their input length, because of their need to potentially attend to every token in the input. In this work, we propose Unlimiformer: a general approach that can wrap any existing pretrained encoder-decoder transformer, and offload the attention computation across all layers to a single $k$-nearest-neighbor index; this index can be kept on either the GPU or CPU memory and queried in sub-linear time. This way, we can index extremely long input sequences, while every attention head in every decoder layer retrieves its top-$k$ keys, instead of attending to every key. We demonstrate Unlimiformers's efficacy on several long-document and multi-document summarization benchmarks, showing that it can summarize even 350k token-long inputs from the BookSum dataset, without any input truncation at test time. Unlimiformer improves pretrained models such as BART and Longformer by extending them to unlimited inputs without additional learned weights and without modifying their code. We make our code and models publicly available at https://github.com/abertsch72/unlimiformer .



<mark style="background: #5fb236">In this work, we propose Unlimiformer: a general approach that can wrap any existing pretrained encoder-decoder transformer, and offload the attention computation across all layers to a single k-nearestneighbor index; this index can be kept on either the GPU or CPU memory and queried in sub-linear time. This way, we can index extremely long input sequences, while every attention head in every decoder layer retrieves its top-k keys, instead of attending to every key.</mark> [(p. 1)](zotero://open-pdf/library/items/2BNNLJIG?page=1) 


<mark style="background: #5fb236">we encode overlapping chunks of the input, following Ivgi et al. (2022), keeping only the middle half of the outputs from each chunk, to ensure that the encodings have suf</mark> [(p. 2)](zotero://open-pdf/library/items/2BNNLJIG?page=2) 


<mark style="background: #5fb236">ficient context on both sides. Finally, we index the encoded inputs in a datastore, using a library such as Faiss (Johnson et al., 2019).</mark> [(p. 3)](zotero://open-pdf/library/items/2BNNLJIG?page=3) 


<mark style="background: #2ea8e5">Instead, we present a different order of computing the well-known transformer attention formula, which allows us to store a single datastore across all attention heads and all decoder layers.</mark> [(p. 3)](zotero://open-pdf/library/items/2BNNLJIG?page=3) 



![[statics/bertsch_2023/image-3-x299-y268.png]]




## Notes





---
Comment: Preprint




```

```

%% Import Date: 2023-05-08T15:25:02.041-07:00 %%
