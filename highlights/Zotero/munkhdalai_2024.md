---
aliases:
  - "Leave No Context Behind: Efficient Infinite Context Transformers with Infini-attention"
  - "Leave No Context Behind: Efficient Infinite Context Transformers with Infini-attention"
authors: "Tsendsuren Munkhdalai, Manaal Faruqui, Siddharth Gopal"
date: '2024-04-27 10:53:48'
tags: []
title: "Leave No Context Behind: Efficient Infinite Context Transformers with Infini-attention"
url: "https://arxiv.org/abs/2404.07143v1"
created: 2024-02-03
modified: 2024-04-27
---

# Leave No Context Behind: Efficient Infinite Context Transformers with Infini-attention




## Abstract
This work introduces an efficient method to scale Transformer-based Large Language Models (LLMs) to infinitely long inputs with bounded memory and computation. A key component in our proposed approach is a new attention technique dubbed Infini-attention. The Infini-attention incorporates a compressive memory into the vanilla attention mechanism and builds in both masked local attention and long-term linear attention mechanisms in a single Transformer block. We demonstrate the effectiveness of our approach on long-context language modeling benchmarks, 1M sequence length passkey context block retrieval and 500K length book summarization tasks with 1B and 8B LLMs. Our approach introduces minimal bounded memory parameters and enables fast streaming inference for LLMs.




![[statics/munkhdalai_2024/image-1-x322-y89.png]]


![[statics/munkhdalai_2024/image-3-x102-y466.png]]


![[statics/munkhdalai_2024/image-4-x104-y304.png]]




## Notes



---
TL;DR

This work introduces an efficient method to scale Transformer-based Large Language Models (LLMs) to infinitely long inputs with bounded memory and computation and introduces a new attention technique dubbed Infini-attention.



---
TL;DR

This work introduces an efficient method to scale Transformer-based Large Language Models (LLMs) to infinitely long inputs with bounded memory and computation and introduces a new attention technique dubbed Infini-attention.




```
@misc{Munkhdalai_Faruqui_Gopal_2024, title={Leave No Context Behind: Efficient Infinite Context Transformers with Infini-attention}, url={[https://arxiv.org/abs/2404.07143v1](https://arxiv.org/abs/2404.07143v1)}, abstractNote={This work introduces an efficient method to scale Transformer-based Large Language Models (LLMs) to infinitely long inputs with bounded memory and computation. A key component in our proposed approach is a new attention technique dubbed Infini-attention. The Infini-attention incorporates a compressive memory into the vanilla attention mechanism and builds in both masked local attention and long-term linear attention mechanisms in a single Transformer block. We demonstrate the effectiveness of our approach on long-context language modeling benchmarks, 1M sequence length passkey context block retrieval and 500K length book summarization tasks with 1B and 8B LLMs. Our approach introduces minimal bounded memory parameters and enables fast streaming inference for LLMs.}, note={0 citations (Semantic Scholar/arXiv) [2024-04-25]}, journal={arXiv.org}, author={Munkhdalai, Tsendsuren and Faruqui, Manaal and Gopal, Siddharth}, year={2024}, month=apr, language={en} }
```