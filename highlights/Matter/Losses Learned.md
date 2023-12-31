---
url: https://sebastianraschka.com/blog/2022/losses-learned-part1.html
author: Sebastian Raschka
publisher: sebastianraschka.com
date: 2022-04-04
tags: []
---

## Highlights
<mark>The reason why we want to use BCEWithLogitsLoss is improved numerical stability due to the log-sum-exp trick. (You can find the source code implementation here.) In general, another important concept when using PyTorch (or any deep learning library, really) is to make use of fused operators. One example is the logsigmoid(z) function that we can use instead of log(sigmoid(z)) – operator fusing makes code run much faster, especially on the GPU.</mark>

