---
order: -1
tags: 
title: Paper DeBERTa Decoding-enhanced BERT with disentangled attention
---

## Disentangled Attention Mechanism: Separate Word Embeddings and Position Embeddings

Originally, we can calculate some sort of score for a pair of word embeddings by

$$W_i \cdot W_j^T$$

but now instead of one embedding vector for one word, there are two embeddings:

$$
[W_i, P_{ij}] \cdot [W_j, P_{ji}]^T
$$

which leads us to a sum of four products (the last position-position product is ignored in their implementation for duplicate work since everything else is position based already)

> They use 'disentangle' as a fancy way of saying individual or separate, not a fan. The two embeddings are not entangled in the very beginning so there is no need to disentangle them at all but just keep them separated.

When it comes to the attention calculation, self-attention typically projects input into **query, key and value** matrices and calculates the weights based on **query and key**, and then calculates the weighted output based on **weights and value**. Now with an extra positional embedding, we can have two set of **queries, keys**. The dist function is a mapping from real value to an interval of `[0, 2k)`

```python
# [batch size, sequence length, hidden size] @ [hidden size, hidden size]
query_content = word_embed @ weight_query_word 
# [batch size, sequence length, hidden size] @ [hidden size, hidden size]
key_content = word_embed @ weight_key_word 
# [batch size, sequence length, hidden size] @ [hidden size, hidden size]
value_content = word_embed @ weight_value_word 

# [2k, hidden size] @ [hidden size, hidden size]
query_pos = pos_embed @ weight_query_pos 
# [2k, hidden size] @ [hidden size, hidden size]
key_pos = pos_embed @ weight_key_pos

# remove batch dimension for simplicity
# content to content
# [1, hidden size] @ [..., hidden size, 1]
weights[i, j] = query_content[i] @ key_content[j].T + \
    # content to position
    # [1, hidden size] @ [hidden size, 1]
    query_content[i] @ key_pos[dist(i, j)].T + \
    # position to content
    # [1, hidden size] @ [hidden size, 1]
    key_content[j] @ query_pos[dist(i, j)].T
```

Finally, it is the same with normal self-attention module, we calculate the weighted output based on the weights and the value.

> They have an efficient implementation of this calculation detailed in their paper to bring down the space complexity to O(kd) instead of O(N^2d)

## Enhanced Decoder with Absolute Position Embeddings

Incorporate (not sure how right now from the paper, probably have to dig into their code) absolute positional embeddings before the final Softmax layer for masked token prediction.

## Scale-invariant-Fine-tuning

Basically, it is perturbation of the normalized word embeddings during fine tunning.

