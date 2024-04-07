---
aliases:
  - "Mixture-of-Depths: Dynamically allocating compute in transformer-based language models"
  - "Mixture-of-Depths: Dynamically allocating compute in transformer-based language models"
authors: "David Raposo, Sam Ritter, Blake Richards, Timothy Lillicrap, Peter Conway Humphreys, Adam Santoro"
date: '2024-04-06 20:40:58'
tags: []
title: "Mixture-of-Depths: Dynamically allocating compute in transformer-based language models"
url: "https://arxiv.org/abs/2404.02258v1"
---

# Mixture-of-Depths: Dynamically allocating compute in transformer-based language models




## Abstract
Transformer-based language models spread FLOPs uniformly across input sequences. In this work we demonstrate that transformers can instead learn to dynamically allocate FLOPs (or compute) to specific positions in a sequence, optimising the allocation along the sequence for different layers across the model depth. Our method enforces a total compute budget by capping the number of tokens ($k$) that can participate in the self-attention and MLP computations at a given layer. The tokens to be processed are determined by the network using a top-$k$ routing mechanism. Since $k$ is defined a priori, this simple procedure uses a static computation graph with known tensor sizes, unlike other conditional computation techniques. Nevertheless, since the identities of the $k$ tokens are fluid, this method can expend FLOPs non-uniformly across the time and model depth dimensions. Thus, compute expenditure is entirely predictable in sum total, but dynamic and context-sensitive at the token-level. Not only do models trained in this way learn to dynamically allocate compute, they do so efficiently. These models match baseline performance for equivalent FLOPS and wall-clock times to train, but require a fraction of the FLOPs per forward pass, and can be upwards of 50\% faster to step during post-training sampling.




> Not all problems require the same amount of time or effort to solve. Analogously, in language modeling not all tokens and sequences require the same time or effort to accurately make a prediction. And yet, transformer models expend the same amount of compute per token in a forward pass. Ideally, transformers would use smaller total compute budgets by not spending compute unnecessarily. [(p. 1)](zotero://open-pdf/library/items/UGQLSE5R?page=1)




> Departing from MoE, we choose to either apply a computation to a token (as would be the case for a standard transformer), or pass it through a residual connection (remaining unchanged and saving compute). Also in contrast to MoE, we apply this routing to both forward MLPs and multi-head attention. Since this therefore also impacts the keys and queries we process, the routing makes decisions not only about which tokens to update, but also which tokens are made available to attend to. We refer to this strategy as Mixture-of-Depths (MoD) to emphasize how individual tokens pass through different numbers of layers, or blocks, through the depth of the transformer (see figure 1). [(p. 2)](zotero://open-pdf/library/items/UGQLSE5R?page=2)




> “Expert choice routing” flips this recipe on its head: rather than having tokens choose the path they prefer, each path instead chooses the top-𝑘 tokens based on the tokens’ preferences. This ensures a perfect load balance since 𝑘 tokens are guaranteed to be shuttled to each path. However, it could result in over- or under-processing of some tokens, since some tokens may be among the top-𝑘 for multiple paths, or for none of them. [(p. 5)](zotero://open-pdf/library/items/UGQLSE5R?page=5)




> We decided to leverage expert-choice routing for a few reasons. First, it obviates the need for an auxiliary balancing loss. Second, since the top-𝑘 operation depends on the magnitude of the router weights, this routing scheme allows for relative routing weights to help determine which tokens most need the block’s computations; routers can try to ensure that the most critical tokens are among the top-𝑘 by setting their weight appropriately, which is not possible with token-choice routing schemes. For our specific use-case, wherein one computational path is essentially a null operation, it might be critical that important tokens are routed away from the null operation. Third, because we only route through two paths, a single top-𝑘 operation can efficiently split the tokens into two mutually exclusive sets, one for each computational path, preventing the over- or under-processing problem mentioned above. [(p. 5)](zotero://open-pdf/library/items/UGQLSE5R?page=5)




> This insight opens the door to MoD variants that decouple the routing for queries, keys and values. For example, perhaps a token would prefer to be among the queries, but not the keys, for a given self-attention computation. One can imagine extending this idea even further into the domain of &quot;long-term memory&quot;: perhaps there are tokens that would be extremely valuable as keys, regardless of whether it is useful for them to also be among the queries at the step of their occurrence. Learned routing could be a powerful mechanism for deciding which tokens these might be, perhaps funnelling them into a long-term memory buffer that is available during future self-attention. One advantage of such an approach to long-term memory is that tokens decide once, at the moment of &quot;memory encoding&quot;, whether they should be retrieved in the future. This is more computationally efficient than performing a full content-based lookup across an entire memory buffer for each step in the future, and could be one step towards drastically increasing the context-length available for making a prediction. [(p. 12)](zotero://open-pdf/library/items/UGQLSE5R?page=12)




> For example, perhaps some tokens are routed to &quot;memory lookup&quot; functions, and others are routed to &quot;tool use&quot; functions. In general, the routing machinery we deployed provides a knob for adjusting the types of computations available to the network and their relative cost (in total FLOPs); if one wants to introduce an expensive computation, then this can be offset by setting its capacity to some small amount, and hence, by routing only a small number of tokens to it. [(p. 13)](zotero://open-pdf/library/items/UGQLSE5R?page=13)






## Notes



---
TL;DR

This work enforces a total compute budget by capping the number of tokens that can participate in the self-attention and MLP computations at a given layer by dynamically allocate FLOPs to specific positions in a sequence, optimising the allocation along the sequence for different layers across the model depth.




```
@misc{Raposo_Ritter_Richards_Lillicrap_Humphreys_Santoro_2024, title={Mixture-of-Depths: Dynamically allocating compute in transformer-based language models}, url={[https://arxiv.org/abs/2404.02258v1](https://arxiv.org/abs/2404.02258v1)}, abstractNote={Transformer-based language models spread FLOPs uniformly across input sequences. In this work we demonstrate that transformers can instead learn to dynamically allocate FLOPs (or compute) to specific positions in a sequence, optimising the allocation along the sequence for different layers across the model depth. Our method enforces a total compute budget by capping the number of tokens ($k$) that can participate in the self-attention and MLP computations at a given layer. The tokens to be processed are determined by the network using a top-$k$ routing mechanism. Since $k$ is defined a priori, this simple procedure uses a static computation graph with known tensor sizes, unlike other conditional computation techniques. Nevertheless, since the identities of the $k$ tokens are fluid, this method can expend FLOPs non-uniformly across the time and model depth dimensions. Thus, compute expenditure is entirely predictable in sum total, but dynamic and context-sensitive at the token-level. Not only do models trained in this way learn to dynamically allocate compute, they do so efficiently. These models match baseline performance for equivalent FLOPS and wall-clock times to train, but require a fraction of the FLOPs per forward pass, and can be upwards of 50% faster to step during post-training sampling.}, journal={arXiv.org}, author={Raposo, David and Ritter, Sam and Richards, Blake and Lillicrap, Timothy and Humphreys, Peter Conway and Santoro, Adam}, year={2024}, month=apr, language={en} }
```