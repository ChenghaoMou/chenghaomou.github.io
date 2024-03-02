---
order: -1
tags: ["document understanding", "transformer", "document image pre-training"]
title: DIT SELF-SUPERVISED PRE-TRAINING FOR DOCUMENT IMAGE TRANSFORMER
---

## Objective

Similar to [[AN IMAGE IS WORTH 16X16 WORDS TRANSFORMERS FOR IMAGE RECOGNITION AT SCALE|ViT]] models, DiT adopts the **Masked Image Modeling** objective that aims to predict the masked patch in a form that incentivizes the understanding of the image. The crux of such objective is how to frame the problem in an efficient way. Typically, you can predict the image patch directly with MSE. But in this paper, they predict the image patch token index with an image tokenizer;

## Image Tokenizer

An image tokenizer works like a text tokenizer that maps the image into discrete tokens/ids. A typical workflow where such tokenizer is trained looks like this:

```
                                           +---------------+                                       
                                           |               |                                       
                                           |      MSE      |                                       
                                           |               |                                       
                                           |               |                                       
                                           +---------------+                                       
                                                   .                                        Output 
    Input                 +------------------------+------------------------+                      
                          |                                                 |                      
    +-------------------------------------------+     +-------------------------------------------+
    |                                           |     |                                           |
    |                                           |     |                                           |
    |                   Image                   |     |                  Image'                   |
    |                                           |     |                                           |
    |                                           |     |                                           |
    +-------------------------------------------+     +-------------------------------------------+
                          |                                                 .                      
                          |                                                 |                      
                          .                                                 |                      
    +-------------++-------------++-------------+                           |                      
    |             ||             ||             |                           |                      
    |    Patch    ||    Patch    ||    Patch    |                           |                      
    |             ||             ||             |                           |                      
    +-------------++-------------++-------------+                           |                      
    +-------------++-------------++-------------+                           |                      
    |             ||             ||             |                           |                      
    |    Patch    ||    Patch    ||    Patch    |                           |                      
    |             ||             ||             |                           |                      
    +-------------++-------------++-------------+                           |                      
    +-------------++-------------++-------------+                           |                      
    |             ||             ||             |                           |                      
    |    Patch    ||    Patch    ||    Patch    |                           |                      
    |             ||             ||             |                           |                      
    +-------------++-------------++-------------+                           |                      
                          |                                                 |                      
                          |                                                 |                      
                          .                           +-------------------------------------------+
    +-------------------------------------------+     |                                           |
    |                  Encoder                  |     |                                           |
    |                                           |     |  +-------------+                          |
    +-------------------------------------------+     |  |             |                          |
                          |                           |  |             |                          |
                          .                           |  |             |                          |
    +-------------++-------------++-------------+     |  |             |                          |
    |             ||             ||             |     |  |             |                          |
    |     ID      ||     ID      ||     ID      |     |  |             |                          |
    |             ||             ||             |     |  |  Embedding  |                   Decoder|
    +-------------++-------------++-------------+  +-.|  |             |                          |
    +-------------++-------------++-------------+  |  |  |             |                          |
    |             ||             ||             |  |  |  |             |                          |
    |     ID      ||     ID      ||     ID      |--+  |  |             |                          |
    |             ||             ||             |     |  |             |                          |
    +-------------++-------------++-------------+     |  |             |                          |
    +-------------++-------------++-------------+     |  |             |                          |
    |             ||             ||             |     |  +-------------+                          |
    |     ID      ||     ID      ||     ID      |     |                                           |
    |             ||             ||             |     |                                           |
    +-------------++-------------++-------------+     +-------------------------------------------+
```

The above architecture is based on the **discrete variational auto-encoder (dVAE)** in **DALL-E**.

## Pre-training

Then the pre-training is relatively straightforward. Instead of predicting the image patch (regression), the model is asked to predict the masked patches' ids based on the *logits* over the image tokenizer's vocabulary, just like a normal MLM model.

## Takeaways

1. [[#Image Tokenizer]] converts the 2D image into discrete tokens and streamlines the pre-training process into a typical workflow that usually deals with text.

