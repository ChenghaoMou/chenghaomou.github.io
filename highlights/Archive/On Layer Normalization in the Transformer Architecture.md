---
tags: []
title: "On Layer Normalization in the Transformer Architecture"
---

[image] ([pdf](zotero://open-pdf/library/items/SA5JS6UC?page=2&annotation=FCEUGMLG))
([Xiong et al., 2020, p. 2](zotero://select/library/items/AT8YZXRF))

“Without the warm-up stage, the BLEU score of the model trained with Adam optimizer can only achieve 8.45. As a comparison, the model trained using the warm-up stage can achieve around 34 in terms of BLEU score. The same trend can also be observed on the validation loss curves. Although the performance of the model trained with SGD is significantly worse than Adam, we can still see similar phenomena as Adam. The BLEU score is just above zero in 15 epochs without using the warm-up stage.” ([Xiong et al., 2020, p. 4](zotero://select/library/items/AT8YZXRF)) ([pdf](zotero://open-pdf/library/items/SA5JS6UC?page=4&annotation=T8ZNRANV))

“The main idea is that the layer normalization will normalize the gradients. In the Post-LN Transformer, the scale of the inputs to the layer normalization is independent of L, and thus the gradients of parameters in the last layer are independent of L. While in the Pre-LN Transformer, the scale of the input to the final layer normalization is linear in L, and thus the gradients of all parameters will be normalized by √L.” ([Xiong et al., 2020, p. 6](zotero://select/library/items/AT8YZXRF)) ([pdf](zotero://open-pdf/library/items/SA5JS6UC?page=6&annotation=B5IEP333))

“Our main result is that the gradient norm in the Post-LN Transformer is large for the parameters near the output and will be likely to decay as the layer index l decreases.” ([Xiong et al., 2020, p. 6](zotero://select/library/items/AT8YZXRF)) ([pdf](zotero://open-pdf/library/items/SA5JS6UC?page=6&annotation=X9STA3M4))

“On the contrary, the gradient norm in the PreTransformer will be likely to stay the same for any layer l.” ([Xiong et al., 2020, p. 6](zotero://select/library/items/AT8YZXRF)) ([pdf](zotero://open-pdf/library/items/SA5JS6UC?page=6&annotation=85HAFIE4))