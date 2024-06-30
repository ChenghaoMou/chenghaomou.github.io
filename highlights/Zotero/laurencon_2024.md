---
aliases:
  - What matters when building vision-language models?
  - What matters when building vision-language models?
authors: "Hugo Laurençon, Léo Tronchon, Matthieu Cord, Victor Sanh"
date: '2024-06-22 14:28:19'
tags: []
title: "What matters when building vision-language models?"
url: "https://arxiv.org/abs/2405.02246v1"
created: 2024-02-03
modified: 2024-06-22
---

# What matters when building vision-language models?

## Abstract

The growing interest in vision-language models (VLMs) has been driven by improvements in large language models and vision transformers. Despite the abundance of literature on this subject, we observe that critical decisions regarding the design of VLMs are often not justified. We argue that these unsupported decisions impede progress in the field by making it difficult to identify which choices improve model performance. To address this issue, we conduct extensive experiments around pre-trained models, architecture choice, data, and training methods. Our consolidation of findings includes the development of Idefics2, an efficient foundational VLM of 8 billion parameters. Idefics2 achieves state-of-the-art performance within its size category across various multimodal benchmarks, and is often on par with models four times its size. We release the model (base, instructed, and chat) along with the datasets created for its training.

> We identify two areas where various works adopt different design choices: (a) model architecture, and in particular, connector modules that fuse the vision and text modalities and their impact on inference efficiency, (b) multimodal training procedure and its impact on training stability. For each of these areas, we rigorously compare different design choices in a controlled environment and extract experimental findings. Notably, we find that (a) the progress of vision-language models is in large part driven by the progress of pre-trained unimodal backbones, (b) the more recent fully autoregressive architecture outperforms the cross-attention architecture, although it requires modifications to the optimization procedure to ensure a stable training, (c) adaptation of the pre-trained vision backbone and the modules connecting the text and vision modalities allow for more efficiency at inference time on one side, and handling images in their original ratio and size without harming downstream performance on the other side, and (d) modifications to the image processing enables trading inference cost for downstream performance. [(p. 2)](zotero://open-pdf/library/items/TCD2HCIN?page=2)

![[statics/laurencon_2024/image-3-x97-y332.png]]

> Finding 1. For a fixed number of parameters, the quality of the language model backbone has a higher impact on the performance of the final VLM than the quality of the vision backbone. [(p. 4)](zotero://open-pdf/library/items/TCD2HCIN?page=4)

> This setup yields significantly more stable trainings, and more importantly, we observe a 12.9 points increase under the fully autoregressive architecture, and 0.6 point under the cross-attention architecture. While the cross-attention architecture performs better than the fully autoregressive architecture with frozen backbones, it is worse when we add degrees of liberty for the pre-trained backbones. Besides, using LoRA allows training the unimodal backbones at a fraction of the GPU memory cost of full fine-tuning, and LoRA layers can be merged back into the original linear layers yielding no additional cost at inference. We therefore choose the fully autoregressive architecture in the rest of this work. [(p. 4)](zotero://open-pdf/library/items/TCD2HCIN?page=4)

> Finding 2. The cross-attention architecture performs better than the fully autoregressive one when unimodal pre-trained backbones are kept frozen. However, when training the unimodal backbones, the fully autoregressive architecture outperforms the cross-attention one, even though the latter has more parameters. [(p. 5)](zotero://open-pdf/library/items/TCD2HCIN?page=5)

> Finding 3. Unfreezing the pre-trained backbones under the fully autoregressive architecture can lead to training divergences. Leveraging LoRA still adds expressivity to the training and stabilizes it. [(p. 5)](zotero://open-pdf/library/items/TCD2HCIN?page=5)

> Finding 4. Reducing the number of visual tokens with learned pooling significantly improves compute efficiency at training and inference while improving performance on downstream tasks. [(p. 5)](zotero://open-pdf/library/items/TCD2HCIN?page=5)

> Finding 5. Adapting a vision encoder pre-trained on fixed-size square images to preserve images’ original aspect ratio and resolution does not degrade performance while speeding up training and inference and reducing memory. [(p. 6)](zotero://open-pdf/library/items/TCD2HCIN?page=6)

> Finding 6. Splitting images into sub-images during training allow trading compute efficiency for more performance during inference. The increase in performance is particularly noticeable in tasks involving reading text in an image. [(p. 6)](zotero://open-pdf/library/items/TCD2HCIN?page=6)

## Notes

---

TL;DR

This work conducts extensive experiments around pre-trained models, architecture choice, data, and training methods, and develops Idefics2, an efficient foundational VLM of 8 billion parameters that achieves state-of-the-art performance within its size category across various multimodal benchmarks.

```
@misc{Laurençon_Tronchon_Cord_Sanh_2024, title={What matters when building vision-language models?}, url={[https://arxiv.org/abs/2405.02246v1](https://arxiv.org/abs/2405.02246v1)}, abstractNote={The growing interest in vision-language models (VLMs) has been driven by improvements in large language models and vision transformers. Despite the abundance of literature on this subject, we observe that critical decisions regarding the design of VLMs are often not justified. We argue that these unsupported decisions impede progress in the field by making it difficult to identify which choices improve model performance. To address this issue, we conduct extensive experiments around pre-trained models, architecture choice, data, and training methods. Our consolidation of findings includes the development of Idefics2, an efficient foundational VLM of 8 billion parameters. Idefics2 achieves state-of-the-art performance within its size category across various multimodal benchmarks, and is often on par with models four times its size. We release the model (base, instructed, and chat) along with the datasets created for its training.}, journal={arXiv.org}, author={Laurençon, Hugo and Tronchon, Léo and Cord, Matthieu and Sanh, Victor}, year={2024}, month=may, language={en} }
```