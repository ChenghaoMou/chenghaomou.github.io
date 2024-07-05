---
url: "https://cohere.com/blog/int8-binary-embeddings"
author: "Nils Reimers"
publisher: "cohere.com"
title: "Cohere int8 & binary Embeddings - Scale Your Vector Database to Large Datasets"
created: 2024-07-04
modified: 2024-07-04
---

## Highlights

> To improve the search quality, the float query embedding can be compared with the binary document embeddings using dot-product. So we first retrieve 10*top_k results with the binary query embedding, and then rescore the binary document embeddings with the float query embedding. This pushes the search quality from 90% to 95%.

> Instead of training just with float32 embeddings, we also made sure to train for int8 and binary precision as well as in a product quantized space. This ensures you the best search quality when using any of these compression techniques.

