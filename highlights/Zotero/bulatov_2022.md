---
aliases:
  - Recurrent Memory Transformer
  - Recurrent Memory Transformer
authors: "Aydar Bulatov, Yuri Kuratov, Mikhail S. Burtsev"
date: '2023-04-30 19:14:02'
tags: []
title: "Recurrent Memory Transformer"
url: "http://arxiv.org/abs/2207.06881"
---

# Recurrent Memory Transformer




## Abstract
Transformer-based models show their effectiveness across multiple domains and tasks. The self-attention allows to combine information from all sequence elements into context-aware representations. However, global and local information has to be stored mostly in the same element-wise representations. Moreover, the length of an input sequence is limited by quadratic computational complexity of self-attention. In this work, we propose and study a memory-augmented segment-level recurrent Transformer (RMT). Memory allows to store and process local and global information as well as to pass information between segments of the long sequence with the help of recurrence. We implement a memory mechanism with no changes to Transformer model by adding special memory tokens to the input or output sequence. Then the model is trained to control both memory operations and sequence representations processing. Results of experiments show that RMT performs on par with the Transformer-XL on language modeling for smaller memory sizes and outperforms it for tasks that require longer sequence processing. We show that adding memory tokens to Tr-XL is able to improve its performance. This makes Recurrent Memory Transformer a promising architecture for applications that require learning of long-term dependencies and general purpose in memory processing, such as algorithmic tasks and reasoning.



<mark style="background: #5fb236">Segments of the input sequence are processed sequentially. To enable recurrent connection between segments, we pass outputs of the memory tokens from the current segment to the input of the next segment:</mark> [(p. 4)](zotero://open-pdf/library/items/XPWWA6U3?page=4) 





## Notes



---
Comment: 36th Conference on Neural Information Processing Systems (NeurIPS 2022)




```

```

%% Import Date: 2023-04-30T19:14:16.363-07:00 %%
