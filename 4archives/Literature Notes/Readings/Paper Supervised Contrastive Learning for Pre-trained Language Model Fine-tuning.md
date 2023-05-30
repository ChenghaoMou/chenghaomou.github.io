---
order: -1
tags: 
title: Paper Supervised Contrastive Learning for Pre-trained Language Model Fine-tuning
---

## A New Loss Term for Supervised Contrastive Learning (SCL)

The new loss is made of two parts - cross entropy and SCL loss, summed and weighted by a parameter $\lambda$.

The SCL loss is mini-batch-based loss, an negative **unbiased** estimation over the pairwise similarities within a class. In other words, for each example, of all its pairwise similarities across all classes, what is the average similarity for one specific class.

```python
batch = [batch_size, hidden size]
for batch[i]: # [1, hidden size]
    similarity = batch @ batch[i].T # [batch size, 1]
    similarity = normalize(similarity)
    similarity[i] = .0 # turn off self similarity
    similarity = softmax(similarity)
    loss[i] = - 1/(labels.count(labels[i]) - 1) * similarity[labels == labels[i]]
```

That pretty much covers the essence of the paper, very short and to-the-point description. Unfortunately they only have experiments compared with base models without any specifically trained model like sentence transformers, but still the numbers look good.

