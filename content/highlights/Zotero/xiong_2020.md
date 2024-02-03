---
aliases:
  - On Layer Normalization in the Transformer Architecture
  - On Layer Normalization in the Transformer Architecture
authors: "Ruibin Xiong, Yunchang Yang, Di He, Kai Zheng, Shuxin Zheng, Chen Xing, Huishuai Zhang, Yanyan Lan, Liwei Wang, Tie-Yan Liu"
date: '2023-06-06 21:52:12'
tags: []
title: "On Layer Normalization in the Transformer Architecture"
url: "http://arxiv.org/abs/2002.04745"
---

# On Layer Normalization in the Transformer Architecture




## Abstract
The Transformer is widely used in natural language processing tasks. To train a Transformer however, one usually needs a carefully designed learning rate warm-up stage, which is shown to be crucial to the final performance but will slow down the optimization and bring more hyper-parameter tunings. In this paper, we first study theoretically why the learning rate warm-up stage is essential and show that the location of layer normalization matters. Specifically, we prove with mean field theory that at initialization, for the original-designed Post-LN Transformer, which places the layer normalization between the residual blocks, the expected gradients of the parameters near the output layer are large. Therefore, using a large learning rate on those gradients makes the training unstable. The warm-up stage is practically helpful for avoiding this problem. On the other hand, our theory also shows that if the layer normalization is put inside the residual blocks (recently proposed as Pre-LN Transformer), the gradients are well-behaved at initialization. This motivates us to remove the warm-up stage for the training of Pre-LN Transformers. We show in our experiments that Pre-LN Transformers without the warm-up stage can reach comparable results with baselines while requiring significantly less training time and hyper-parameter tuning on a wide range of applications.




![[statics/xiong_2020/image-2-x42-y507.png]]

<mark style="background: #ffd400">Without the warm-up stage, the BLEU score of the model trained with Adam optimizer can only achieve 8.45. As a comparison, the model trained using the warm-up stage can achieve around 34 in terms of BLEU score. The same trend can also be observed on the validation loss curves. Although the performance of the model trained with SGD is significantly worse than Adam, we can still see similar phenomena as Adam. The BLEU score is just above zero in 15 epochs without using the warm-up stage.</mark> [(p. 4)](zotero://open-pdf/library/items/3G42ED8E?page=4) 


<mark style="background: #ffd400">The main idea is that the layer normalization will normalize the gradients. In the Post-LN Transformer, the scale of the inputs to the layer normalization is independent of L, and thus the gradients of parameters in the last layer are independent of L. While in the Pre-LN Transformer, the scale of the input to the final layer normalization is linear in L, and thus the gradients of all parameters will be normalized by √L.</mark> [(p. 6)](zotero://open-pdf/library/items/3G42ED8E?page=6) 


<mark style="background: #ffd400">Our main result is that the gradient norm in the Post-LN Transformer is large for the parameters near the output and will be likely to decay as the layer index l decreases.</mark> [(p. 6)](zotero://open-pdf/library/items/3G42ED8E?page=6) 


<mark style="background: #ffd400">On the contrary, the gradient norm in the PreTransformer will be likely to stay the same for any layer l.</mark> [(p. 6)](zotero://open-pdf/library/items/3G42ED8E?page=6) 





```
@article{Xiong_Yang_He_Zheng_Zheng_Xing_Zhang_Lan_Wang_Liu_2020, title={On Layer Normalization in the Transformer Architecture}, url={[http://arxiv.org/abs/2002.04745](http://arxiv.org/abs/2002.04745)}, DOI={[10.48550/arXiv.2002.04745](https://doi.org/10.48550/arXiv.2002.04745)}, abstractNote={The Transformer is widely used in natural language processing tasks. To train a Transformer however, one usually needs a carefully designed learning rate warm-up stage, which is shown to be crucial to the final performance but will slow down the optimization and bring more hyper-parameter tunings. In this paper, we first study theoretically why the learning rate warm-up stage is essential and show that the location of layer normalization matters. Specifically, we prove with mean field theory that at initialization, for the original-designed Post-LN Transformer, which places the layer normalization between the residual blocks, the expected gradients of the parameters near the output layer are large. Therefore, using a large learning rate on those gradients makes the training unstable. The warm-up stage is practically helpful for avoiding this problem. On the other hand, our theory also shows that if the layer normalization is put inside the residual blocks (recently proposed as Pre-LN Transformer), the gradients are well-behaved at initialization. This motivates us to remove the warm-up stage for the training of Pre-LN Transformers. We show in our experiments that Pre-LN Transformers without the warm-up stage can reach comparable results with baselines while requiring significantly less training time and hyper-parameter tuning on a wide range of applications.}, note={229 citations (Semantic Scholar/arXiv) [2022-07-31] arXiv:2002.04745 [cs, stat]}, number={arXiv:2002.04745}, publisher={arXiv}, author={Xiong, Ruibin and Yang, Yunchang and He, Di and Zheng, Kai and Zheng, Shuxin and Xing, Chen and Zhang, Huishuai and Lan, Yanyan and Wang, Liwei and Liu, Tie-Yan}, year={2020}, month={Jun} }
```

%% Import Date: 2023-06-06T21:52:24.009-07:00 %%
