---
url: https://pytorch.org/blog/introducing-pytorch-fully-sharded-data-parallel-api/
publisher: pytorch.org
tags: []
---

## Highlights
<mark>FSDP is a type of data-parallel training, but unlike traditional data-parallel, which maintains a per-GPU copy of a model’s parameters, gradients and optimizer states, it shards all of these states across data-parallel workers and can optionally offload the sharded model parameters to CPUs.</mark>

