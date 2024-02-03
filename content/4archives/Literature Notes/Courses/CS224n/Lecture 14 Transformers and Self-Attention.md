---
order: -1
tags: [course, natural language processing, attention, transformer]
title: Lecture 14 Transformers and Self-Attention
updated: '10-23-2021 11:57'
---

## Self-attention

```
         ┌─┐                  
         │E│                  
         └─┘                  
          ▲                   
          │                   
          │                   
        ┌───┐                 
        │ a │◀──────────────┐ 
        └───┘               │ 
          ▲                 │ 
          │                 │ 
       ┌────┐               │ 
       │    │               │ 
       │dot │               │ 
   ┌──▶│prod│◀──┐           │ 
   │   │    │   │           │ 
   │   └────┘   │           │ 
   │            │           │ 
┌─────┐      ┌─────┐        │ 
│ W_k │      │ W_q │        │ 
└─────┘      └─────┘        │ 
   ▲            ▲           │ 
   │            │           │ 
  ┌─┐          ┌─┐         ┌─┐
  │E│          │E│         │E│
  └─┘          └─┘         └─┘
```

$W_k$ and $W_q$ is specific to one attention head, so if we want to capture more relations, we need to use more attention heads.

### Advantages

- direct connection between any two positions
- direct modeling of the context
- capability to be parallelized
- modeling similarity by nature
- relative attention provides more expressiveness for input such as image, music or graph

## What's Next

- Non autoregressive transformers/decoding
- self-supervision
- understanding
- multitask learning
- long-range context