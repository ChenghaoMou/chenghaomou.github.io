---
order: -1
tags: [mixture of experts, conditional computation, efficient computation, fine-tuning, transformers]
title: Paper UNIPELT A Uniﬁed Framework for Parameter-Efﬁcient Language Model Tuning
updated: '11-02-2021 19:12'
---

- Adapter-tuning: by injecting trainable parameters into the otherwise frozen network
- Prefix-tuning: by compressing task-related knowledge into virtual token embeddings
- Fine-tuning without any introduction of new parameters: BitFit on bias terms or models like GPT-3 with in-context (zero-shot or few-shot) learning

```
┌──────────────────────────────────────┐
│                Output                │
└──────────────────────────────────────┘
                    ▲                   
        ┌───────────┤                   
 ┌──────┴──────┐    │                   
 │ bottleneck  │    │                   
 │   layers    │    │                   
 └─────────────┘    │                   
        ▲           │                   
        │           │                   
        │           │                   
 ┌─────────────┐    │                   
 │    Gate     │    │                   
 └─────────────┘    │                   
        ▲           │                   
        └───────────┤                   
                    │                   
┌──────────────────────────────────────┐
│            frozen modules            │
└──────────────────────────────────────┘
                   ...                  
                                        
┌──────────────────────────────────────┐
│            frozen modules            │
└──────────────────────────────────────┘
                    ▲                   
                    │                   
┌──────────────────────────────────────┐
│                Input                 │
└──────────────────────────────────────┘
                    ▲                   
           ┌────────┤                   
           │        │                   
     ┌──────────┐   │                   
     │   Gate   │   │                   
     └──────────┘   │                   
           ▲        │                   
           └────────┤                   
                    │                   
           ┌────────────────┐           
           │     hidden     │           
           └────────────────┘           
```

UNIPELT can be seen as a different form of conditional computation, or simply a two-MoE architecture:
- to introduce prefix or not
- to route data through bottleneck layers or not
in a sequential fashion.

## Comments

1. No ablation study on those gates. Do they do what we expect them to do, i.e. is a lower or higher value tied to the task or the data?
2. Calculating the number of parameters is not very intuitive since not all parameters are activated during training or inference when the gate values can be (near) zeros.
3. The efficiency measurement lacks of evidence especially when no comparison is given.