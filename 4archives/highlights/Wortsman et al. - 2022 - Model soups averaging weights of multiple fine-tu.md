---
order: -1
tags: [processed]
title: Wortsman et al. - 2022 - Model soups averaging weights of multiple fine-tu
---

## Anonymous Submission

### Proceedings of the International Conference on Machine Learning 2022

#### [Page 1](highlights://Wortsman%20et%20al.%20-%202022%20-%20Model%20soups%20averaging%20weights%20of%20multiple%20fine-tu#page=1)

> We show that averaging the weights of multiple models fine-
> tuned with different hyperparameter configura- tions often
> improves accuracy and robustness.

***

#### [Page 2](highlights://Wortsman%20et%20al.%20-%202022%20-%20Model%20soups%20averaging%20weights%20of%20multiple%20fine-tu#page=2)

> Selecting a single model and discarding the rest has several
> downsides. For one, ensembling outputs of many models can
> outperform the best single model, albeit at a high com-
> putational cost during inference. For another, fine-tuning a
> model on downstream tasks can sometimes reduce out-of-
> distribution performance (Radford et al., 2021; Andreassen et
> al., 2021; Wortsman et al., 2021; Pham et al., 2021), and the
> best single model on the target distribution may not be the best
> model on out-of-distribution data.

***

> However, re- cent work (Neyshabur et al., 2020) observes that
> fine-tuned models optimized independently from the same
> pre-trained initialization lie in the same basin of the error
> landscape, inspiring our method.

***

> While the most straightforward approach to making a model soup
> is to average all the weights uniformly, we find that greedy
> soups, where models are sequentially added to the soup if they
> improve accuracy on held-out data, outperforms uniform
> averaging. Greedy soups avoid adding in models which may lie in
> a different basin of the error landscape, which could happen if,
> for example, models are fine-tuned with high learning rates.

***

