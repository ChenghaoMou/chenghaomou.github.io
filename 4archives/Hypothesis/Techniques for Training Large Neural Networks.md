---
doc_type: hypothesis-highlights
order: -1
tags: [todo]
title: Techniques for Training Large Neural Networks
url: 'https://openai.com/blog/techniques-for-training-large-neural-networks/'
---

# Techniques for Training Large Neural Networks

## Metadata

- Author: [openai.com]()
- Title: Techniques for Training Large Neural Networks
- Reference: https://openai.com/blog/techniques-for-training-large-neural-networks/
- Category: #article

## Page Notes

## Highlights

- An illustration of various parallelism strategies on a three-layer model. Each color refers to one layer and dashed lines separate different GPUs. — [Updated on 2022-06-19 11:00:52](https://hyp.is/CDl3Bu_5Eey9Dmcdy4GYAQ/openai.com/blog/techniques-for-training-large-neural-networks/) — Group: #Personal
    - Annotation: ![](https://i.imgur.com/DzCqrBF.png)
- Data parallelism—run different subsets of the batch on different GPUs; Pipeline parallelism—run different layers of the model on different GPUs; Tensor parallelism—break up the math for a single operation such as a matrix multiplication to be split across GPUs; Mixture-of-Experts—process each example by only a fraction of each layer. — [Updated on 2022-06-19 11:01:54](https://hyp.is/52KOSu_5Eeyx_iPWxexFtQ/openai.com/blog/techniques-for-training-large-neural-networks/) — Group: #Personal

- Data Parallel training means copying the same parameters to multiple GPUs (often called “workers”) and assigning different examples to each to be processed simultaneously. Data parallelism alone still requires that your model fits into a single GPU’s memory, but lets you utilize the compute of many GPUs at the cost of storing many duplicate copies of your parameters. That being said, there are strategies to increase the effective RAM available to your GPU, such as temporarily offloading parameters to CPU memory between usages. — [Updated on 2022-06-19 11:02:32](https://hyp.is/_byIqO_5EeyXgxfY5ZLZOA/openai.com/blog/techniques-for-training-large-neural-networks/) — Group: #Personal

- With Pipeline Parallel training, we partition sequential chunks of the model across GPUs. Each GPU holds only a fraction of parameters, and thus the same model consumes proportionally less memory per GPU. — [Updated on 2022-06-19 11:03:12](https://hyp.is/FdFIju_6EeyXDpdx_rlijw/openai.com/blog/techniques-for-training-large-neural-networks/) — Group: #Personal

- GPipe has each worker process forward and backward passes consecutively and then aggregates gradients from multiple microbatches synchronously at the end. PipeDream instead schedules each worker to alternatively process forward and backward passes. — [Updated on 2022-06-19 11:05:13](https://hyp.is/TYRBtO_6Eey6a2faTPfcpg/openai.com/blog/techniques-for-training-large-neural-networks/) — Group: #Personal
    - Annotation: ![](https://i.imgur.com/Thvh3Fp.png)
- Pipeline parallelism splits a model “vertically” by layer. It’s also possible to “horizontally” split certain operations within a layer, which is usually called Tensor Parallel training. — [Updated on 2022-06-19 11:07:00](https://hyp.is/nYsKdu_6EeymeJPAWVBMjg/openai.com/blog/techniques-for-training-large-neural-networks/) — Group: #Personal

- With either strategy, we can slice the weight matrix into even-sized “shards”, host each shard on a different GPU, and use that shard to compute the relevant part of the overall matrix product before later communicating to combine the results. — [Updated on 2022-06-19 11:07:06](https://hyp.is/oPoVlO_6EeyrSL_Etmz77g/openai.com/blog/techniques-for-training-large-neural-networks/) — Group: #Personal

- With the Mixture-of-Experts (MoE) approach, only a fraction of the network is used to compute the output for any one input. One example approach is to have many sets of weights and the network can choose which set to use via a gating mechanism at inference time. — [Updated on 2022-06-19 11:07:36](https://hyp.is/sx2MLu_6EeyiLbOjpm-x7g/openai.com/blog/techniques-for-training-large-neural-networks/) — Group: #Personal

- Different experts can be hosted on different GPUs, providing a clear way to scale up the number of GPUs used for a model. — [Updated on 2022-06-19 11:07:43](https://hyp.is/tvhSju_6EeyuYhOejHQOLA/openai.com/blog/techniques-for-training-large-neural-networks/) — Group: #Personal

- Checkpointing (also known as activation recomputation) stores any subset of activations, and recomputes the intermediate ones just-in-time during the backward pass. This saves a lot of memory at the computational cost of at most one additional full forward pass. — [Updated on 2022-06-19 11:08:24](https://hyp.is/z7f2HO_6EeyyAReKX6ic8Q/openai.com/blog/techniques-for-training-large-neural-networks/) — Group: #Personal

- Mixed Precision Training is to train models using lower-precision numbers (most commonly FP16). Modern accelerators can reach much higher FLOP counts with lower-precision numbers, and you also save on device RAM. — [Updated on 2022-06-19 11:08:35](https://hyp.is/1g65zu_6EeyyAvP2uURbvA/openai.com/blog/techniques-for-training-large-neural-networks/) — Group: #Personal

- Offloading is to temporarily offload unused data to the CPU or amongst different devices and later read it back when needed. — [Updated on 2022-06-19 11:08:44](https://hyp.is/26sPIu_6Eey9F1uWUTVuLQ/openai.com/blog/techniques-for-training-large-neural-networks/) — Group: #Personal

- Memory Efficient Optimizers have been proposed to reduce the memory footprint of the running state maintained by the optimizer, such as Adafactor. — [Updated on 2022-06-19 11:08:58](https://hyp.is/5BRpnO_6Eey7CrNEUwHmRA/openai.com/blog/techniques-for-training-large-neural-networks/) — Group: #Personal

- Compression also can be used for storing intermediate results in the network. For example, Gist compresses activations that are saved for the backward pass; DALL·E compresses the gradients before synchronizing them. — [Updated on 2022-06-19 11:09:09](https://hyp.is/6q66ZO_6EeykgyeRU8ywFw/openai.com/blog/techniques-for-training-large-neural-networks/) — Group: #Personal


---

# Techniques for Training Large Neural Networks

---

# Techniques for Training Large Neural Networks
# Techniques for Training Large Neural Networks
# Techniques for Training Large Neural Networks

