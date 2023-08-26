---
order: -1
tags: 
title: text
---

#### [Page 2](highlights://Xiong%20et%20al.%20-%202022%20-%20Simple%20Local%20Attentions%20Remain%20Competitive%20for%20Lon#page=2)

![](Page2Image296.73701161734164_579.0166991172009-242.1360656801661_218.9735202492211.jpg)

***

> Fixed local patterns. These methods restrict each token to only
> attend a local window of to- kens. The long-range interactions
> are achieved by the depth of the model.

***

> Learnable sparse attention patterns. Instead of relying on the
> inductive bias of locality, methods like Reformer (Kitaev et
> al., 2020) and Sinkhorn Attention (Tay et al., 2020) allow the
> model to adap- tively select tokens to attend to.

***

#### [Page 3](highlights://Xiong%20et%20al.%20-%202022%20-%20Simple%20Local%20Attentions%20Remain%20Competitive%20for%20Lon#page=3)

> Kernel-based/Low-rank methods. This class of methods use matrix
> approximation methods to ap- proximate the full attention
> function.

***

> Hybrid attention. In addition to these representa- tive methods
> in each class, our study also includes the more recent
> Long-Short attention (Zhu et al., 2021) which has a similar
> compression compo- nent as in Linformer and combines it with
> local at- tentions. Unlike Linformer’s compression compo- nent
> which is simply implemented as a standalone projection matrix,
> Long-Short proposes an input- dependent compression layer, which
> can adaptively reduce the sequence length.

***

#### [Page 4](highlights://Xiong%20et%20al.%20-%202022%20-%20Simple%20Local%20Attentions%20Remain%20Competitive%20for%20Lon#page=4)

> For both LRA and the large-scale experiments, we adopt the pre
> layer-normalization trick (Xiong et al., 2020) for feedforward
> and at- tention blocks. This usually results in better per-
> formance in LRA and turns out to be essential for
> severalmodelsinthepretrainingexperiments.6

***

#### [Page 5](highlights://Xiong%20et%20al.%20-%202022%20-%20Simple%20Local%20Attentions%20Remain%20Competitive%20for%20Lon#page=5)

> Apart from models with fixed local attention patterns, improve-
> ments on these text LRA tasks often do not trans- fer to the
> standard scaled pretraining-finetuning experiments.

***

#### [Page 7](highlights://Xiong%20et%20al.%20-%202022%20-%20Simple%20Local%20Attentions%20Remain%20Competitive%20for%20Lon#page=7)

> we see that increas- ing the local block sizes does consistently
> improve both pretraining and downstream performance al- though
> the improvement becomes modest beyond block size 256. It is also
> interesting that the mod- els with smaller block sizes converge
> faster at the early stage of pretraining. This suggests a staged
> pretraining process might be more efficient than directly
> training from long sequences, which aligns with Press et al.
> (2021)’s finding on unidirectional LMs.

***

[Page2Image296.73701161734164_579.0166991172009-242.1360656801661_218.9735202492211.jpg]: assets/Page2Image296.73701161734164_579.0166991172009-242.1360656801661_218.9735202492211.jpg