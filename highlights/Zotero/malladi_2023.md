---
aliases:
  - Fine-Tuning Language Models with Just Forward Passes
  - "Fine-Tuning Language Models with Just Forward Passes"
authors: "Sadhika Malladi, Tianyu Gao, Eshaan Nichani, Alex Damian, Jason D. Lee, Danqi Chen, Sanjeev Arora"
date: '2023-06-06 20:36:14'
linter-yaml-title-alias: "Fine-Tuning Language Models with Just Forward Passes"
order: -1
tags: 
title: Fine-Tuning Language Models with Just Forward Passes
url: "http://arxiv.org/abs/2305.17333"
---

# Fine-Tuning Language Models with Just Forward Passes




## Abstract
Fine-tuning language models (LMs) has yielded success on diverse downstream tasks, but as LMs grow in size, backpropagation requires a prohibitively large amount of memory. Zeroth-order (ZO) methods can in principle estimate gradients using only two forward passes but are theorized to be catastrophically slow for optimizing large models. In this work, we propose a memory-efficient zerothorder optimizer (MeZO), adapting the classical ZO-SGD method to operate in-place, thereby fine-tuning LMs with the same memory footprint as inference. For example, with a single A100 80GB GPU, MeZO can train a 30-billion parameter model, whereas fine-tuning with backpropagation can train only a 2.7B LM with the same budget. We conduct comprehensive experiments across model types (masked and autoregressive LMs), model scales (up to 66B), and downstream tasks (classification, multiple-choice, and generation). Our results demonstrate that (1) MeZO significantly outperforms in-context learning and linear probing; (2) MeZO achieves comparable performance to fine-tuning with backpropagation across multiple tasks, with up to 12x memory reduction; (3) MeZO is compatible with both full-parameter and parameter-efficient tuning techniques such as LoRA and prefix tuning; (4) MeZO can effectively optimize non-differentiable objectives (e.g., maximizing accuracy or F1). We support our empirical findings with theoretical insights, highlighting how adequate pre-training and task prompts enable MeZO to fine-tune huge models, despite classical ZO analyses suggesting otherwise.



<mark style="background: #5fb236">A classical zeroth-order optimization method (ZO-SGD [83]) uses only differences of loss values to estimate the gradients. Thus in principle, the method can update neural networks with just forward passes, though naive implementation still doubles the memory overhead and classical lower bounds [67, 31] suggest that convergence slows linearly with model size. As such, ZO methods have been applied in deep learning settings to find adversarial examples or tune input embeddings [86, 85] but not to directly optimize large-scale models (see Liu et al. [59] for a survey).</mark> [(p. 2)](zotero://open-pdf/library/items/DLMCW8S6?page=2) 



![[statics/malladi_2023/image-3-x98-y426.png]]


![[statics/malladi_2023/image-3-x101-y216.png]]




## Notes



---
Comment: Code available at https://github.com/princeton-nlp/MeZO




```
@article{Malladi_Gao_Nichani_Damian_Lee_Chen_Arora_2023, title={Fine-Tuning Language Models with Just Forward Passes}, url={[http://arxiv.org/abs/2305.17333](http://arxiv.org/abs/2305.17333)}, DOI={[10.48550/arXiv.2305.17333](https://doi.org/10.48550/arXiv.2305.17333)}, abstractNote={Fine-tuning language models (LMs) has yielded success on diverse downstream tasks, but as LMs grow in size, backpropagation requires a prohibitively large amount of memory. Zeroth-order (ZO) methods can in principle estimate gradients using only two forward passes but are theorized to be catastrophically slow for optimizing large models. In this work, we propose a memory-efficient zerothorder optimizer (MeZO), adapting the classical ZO-SGD method to operate in-place, thereby fine-tuning LMs with the same memory footprint as inference. For example, with a single A100 80GB GPU, MeZO can train a 30-billion parameter model, whereas fine-tuning with backpropagation can train only a 2.7B LM with the same budget. We conduct comprehensive experiments across model types (masked and autoregressive LMs), model scales (up to 66B), and downstream tasks (classification, multiple-choice, and generation). Our results demonstrate that (1) MeZO significantly outperforms in-context learning and linear probing; (2) MeZO achieves comparable performance to fine-tuning with backpropagation across multiple tasks, with up to 12x memory reduction; (3) MeZO is compatible with both full-parameter and parameter-efficient tuning techniques such as LoRA and prefix tuning; (4) MeZO can effectively optimize non-differentiable objectives (e.g., maximizing accuracy or F1). We support our empirical findings with theoretical insights, highlighting how adequate pre-training and task prompts enable MeZO to fine-tune huge models, despite classical ZO analyses suggesting otherwise.}, note={0 citations (Semantic Scholar/arXiv) [2023-06-06] arXiv:2305.17333 [cs]}, number={arXiv:2305.17333}, publisher={arXiv}, author={Malladi, Sadhika and Gao, Tianyu and Nichani, Eshaan and Damian, Alex and Lee, Jason D. and Chen, Danqi and Arora, Sanjeev}, year={2023}, month={May} }
```

%% Import Date: 2023-06-06T20:36:18.967-07:00 %%
