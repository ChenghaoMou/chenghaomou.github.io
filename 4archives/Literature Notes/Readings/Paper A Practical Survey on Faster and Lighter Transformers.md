---
order: -1
tags: 
title: Paper A Practical Survey on Faster and Lighter Transformers
---

[arxiv](https://arxiv.org/abs/2103.14636)

Before Transformer is invented, RNNs (LSTM/GRU) are the go-to choices for NLP tasks but they do not handle distance dependencies very well, partially due to the limited relative effective context length (RECL) - about 400 words. Then we have the Transformer and all its BERTology variants, but the quadratic computation and memory cost prohibit its general application as few individuals or companies could train a descent model without costing an arm and a leg.

This paper discusses some general techniques to improve transformer's performance and some low-level optimizations to change its complexity.

## Quadratic Complexity

Scaled dot-product self-attention in transformers produces weights for each token by

$$\mathit{Attention}(Q,K,V) = \mathit{Softmax}(\frac{QK^\top}{\sqrt{d}})V$$

where $Q$ and $K$ are both $(N, H)$ tensors and therefore it takes $\mathcal{O}(N^2)$ time and space to compute. Multi-head attention is just a collection of multiple attentions that enables the model to attend multple positions simultaneously.

## General Methods

### 1. Gradient Checkpointing

In most cases, the memory is occupied by forward-pass intermediate results that are needed for gradient back-propagation. However, we can decrease the memory usage by allowing only part of the network to store their results and re-calculate the rest of results again during back-propagation.

### 2. Parallelization

Model parallelization and data parallelization.

| Parallelization                                     | Data                       | Model                                  | Sync                   | Use Case                               |
| --------------------------------------------------- | -------------------------- | -------------------------------------- | ---------------------- | -------------------------------------- |
| Data Parallelization a.k.a Batch dimension spliting | Different data on each GPU | Same model on each GPU                 | After one forward pass | Small model on a supercomputer         |
| Model Parallelization (Hidden dimension spliting?)  | Same data on each GPU      | Different model parameters on each GPU | Depends on operations  | Large model on a supercomputer/cluster |

### 3. Reversible Layers

Split input in the channel dimension, $x \rightarrow {x_1, x_2}$. During the forward pass,

$$\begin{aligned}y_1 = x_1 + f(x_2) \\\\ y_2 = x_2 + g(y_1)\end{aligned}$$

and we can re-construct the activations by

$$\begin{aligned}x_2 = y_2 - g(y_1) \\\\ x_1 = y_1 - f(x_2)\end{aligned}$$

> Nonetheless, reversible layers add numerical errors that accumulate over multiple layers and may degrade the model performance. Therefore, they are not suited for very deep networks.

### 4. Parameter Sharing

Reusing some parameters reduces the model size but performance sometimes degrades as well (smaller model capacity).

### 5. Pruning

Reomving some parameters (individual weights or structures) with low saliency (no change or small change to the loss) can often lead to smaller model and equivalent performance, with the downsides being that the model will become sparse and the base model has to be trained first.

> randomlyinitialized, dense neural network contains a subnetwork that is initialized such that – when trained in isolation – it can match the test accuracy of the original network after training for at most the same number of iterations.

### 6. Knowledge Distillation

Distillation trains a smaller network to mimic a large model's behaviors. It produces smaller models like pruning.

### 7. Mixed-precision

Each parameter in the network is reduced to a certain bit length but the number of parameters remains the same.

### 8. Mixture of Experts

[[Paper Switch Transformers]] is the latest MoE model where expert networks are included but only used when activated/chosen.

### 9. Sample-efficient Objectives

MLM predicts only masked tokens for one input. Better objectives like replaced token detection in DETECTRA make the model more computationally efficient.

### 10. Architecture Search

Various NAS have been proposed to find better nueral network architectures. The evolved transformer, for example, has similar performance with the vanilla transformer with only 78% of the parameters. NSA requires high computation resources though.

### 11. Conditional Computing

MoE is also a form of conditional computing. Maybe early exit too? Another form of conditional computing is [[Concept Adaptive Computation Time]], with which the model learns a halting probability so it knows when to stop pondering and a pondering cost that it does not take too long to think. Transformer variations of this leads to moels like Universal Transformer and Depth Adaptive Transformer.

## Specific Approaches

### 1. Recurrence

Models like Transformer-XL increase the RECL by chunking the input into windows and therefore allows the model to consider previous context window.

### 2. Sparse Attention

| Model                 | Mechanism                                                                     |
| --------------------- | ----------------------------------------------------------------------------- |
| Sparse Transformer    | strided attention or fixed attention                                          |
| Cascade Transformer   | increasing attention span along layers                                        |
| BlockBERT             | block attention spans attend to other spans according to certain permutations |
| Sinkhorn attention    | like BlockBERT, but with learned permutations                                 |
| Linformer and BigBird | sliding window attention, global attention and random attention               |

### 3. Locality Sensitive Hashing

Full attention calculates the weights based on query and key and the highest score is assigned when their dot product is the highest, which means when query and key are similar, their produced weight weill be higher. Therefore, we can use LSH to find a set of similar query-key pairs with less complexity.

### 4. Low Rank Factorization

| Model         | Mechanism                    |
| ------------- | ---------------------------- |
| Linformer     | Matrix factorization         |
| Nyströmformer | Nyström  method and SVD      |
| Synthesizer   | Replace dot product with FFN |

### 5. Kernel Attention

Performer uses a kernel mapping to approximate the exponential calculation.

## Discussion

- We do not fully understand how any why attention works
- We generally could not evaluate them all when proposing new changes
- One technique is not enough, people combine more and more into one model ([[Paper Switch Transformers]] combines distillation, MoE, mixed-precision)
- We should report not only the theoretical complexity but also FLOPs, wall-clock time, memory footprint (cloud infra cost as well?)
- No modification so far generalize well for various tasks
- Large models do perform well, but we need lighter and faster ones for wider applications, lower $\mathit{CO}_2$ emissions and costs

> Nonetheless, a clear trend emerges from Long-Range Arena: sparse attention is the best performing approach, kernel attention is the fastest, and low-rank factorization is the lightest. The two best performing models are BigBird and Longformer, both based on the sparse attention, with BigBird outperforming the vanilla Transformer; the two fastest models are the Performer and the linear Transformer, both based on kernel attention; the lightest model is the Linformer which uses low-rank factorization.