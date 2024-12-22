---
url: https://blog.ml.cmu.edu/2024/09/13/rethinking-llm-memorization/
author: Machine Learning Department
publisher: blog.ml.cmu.edu
published: 2024-09-13
title: "Rethinking LLM Memorization"
tags: []
created: 2024-10-27
modified: 2024-11-16
---

## Highlights

> Our definition posits that a phrase present in the training data is memorized if we can make the model reproduce the phrase using a prompt (much) shorter than the phrase itself.

> We call this ratio of input-to-output tokens the Adversarial Compression Ratio (ACR). In other words, memorization is inherently tied to whether a certain output can be represented in a compressed form beyond what language models can do with typical text. We argue that such a definition provides an intuitive notion of memorization. If a certain phrase exists within the LLM training data (e.g., is not itself generated text) and it can be reproduced with fewer input tokens than output tokens, then the phrase must be stored somehow within the weights of the LLM.

