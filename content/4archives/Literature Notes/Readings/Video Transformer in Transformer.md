---
order: -1
tags: [talk, transformer, computer vision]
title: Video Transformer in Transformer
url: "https://crossminds.ai/video/transformer-in-transformer-paper-explained-and-visualized-604041ca63b08887e1ca1399/"
---

## Problem Definition

Current models view an image as patches without explicitly modeling the patch itself. In other words, transforming an image patch to a single vector through some linear layers does not capture the information to the fullest extend.

## Solution

In order to represent the patch information to have an embedding of the patch, the authors of *Transformers in Transformers* convert each patch($H \times W \times C$) into a series of smaller patches ($H^\prime \times W^\prime \times C^\prime$). Such array of super patches, along with positional embeddings, are sent to a transformer block as another form of embedding representation of the patch itself.

