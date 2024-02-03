---
order: -1
reference: 'https://www.youtube.com/watch?v=EAJoRA0KX7I&list=PLoROMvodv4rOhcuXMZkNm7j3fVwBBY42z&index=11'
tags: [cs224n]
title: Lecture 11 Convolutional Neural Networks for NLP
updated: '09-25-2021 09:40'
---

The paradigm in which people are believing at the moment constantly shifts, especially in the NLP/DL community. It is a life-long learning process for us.

Debugging the neural networks is hard but is necessary.

## From RNNs to CNNs

The idea of CNN applied to text is that:
- The last word usually dominates in RNNs (attention helps)
- We'd like to capture some pieces of a sentence (similar to n-grams)
- learn locally with phrases then group them later

**1D CNNs** are used for text normally, working at the sequence dimension with the same hidden size. It reduces the sequence dimension, if without padding. It also reduces the hidden dimension for each kernel. *So we can apply multiple kernels to increase the output hidden size.*

**Max Pooling** summarizes the output further. Max Pooling usually works in NLP as we care more about the salient signals. (pooling over time) ^92f988

**Strides** compactify the output with smaller seuqence dimension.

Tricks:
- You can also mix strides and pooling to create *local max pooling*
- K-max pooling
- Use dilation to jump rows when convoluting
- Use dropout

## Comparison

- **Bag of Vectors**: good for simple classification tasks
- **Window model**: good for sequence tasks
- **CNNs**: classification, efficient with GPUs
- **RNNs**: *slower* but better for sequence tasks, language modeling and if with attention can be really performant.

## Useful Concepts

### Gated Units

- Residual Blocks aka. Skip Connections ^283dea
- Highway Blocks: it looks like a gated version of [[Lecture 11 Convolutional Neural Networks for NLP#^283dea]]. theoratically, you can hope your CNNs in [[Lecture 11 Convolutional Neural Networks for NLP#^283dea]] to learn the gates.

### Bacth Normalization

- Z-transform over a mini-batch.

### 1x1 Convolutions

- Fully connected layers for all channels

## Very Deep Convolutional Networks for Text Classifications

- Character embeddings
- 1d/temporal convolution
- 9 ~ 29 layers, though 47 layers does not improve at all
- [[Lecture 11 Convolutional Neural Networks for NLP#^92f988]] works in general

## Combine RNNs and CNNs

### Quasi-Recurrent Neural Networks

- Carry over local gates over deeper layers to have pesudo-recurrence
- More efficient with parallelism

