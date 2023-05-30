---
order: -1
tags: 
title: Kim et al_2022_OCR-free Document Understanding Transformer
---

#### [Page 2](highlights://Kim%20et%20al_2022_OCR-free%20Document%20Understanding%20Transformer#page=2)

> First of all, us- ing OCR as a pre-processing method is
> expensive. We can utilize pre-trained off- the-shelf OCR
> engines; however, the computational cost for inference would be
> expensive for high-quality OCR results. Moreover, the
> off-the-shelf OCR meth- ods rarely have flexibility dealing with
> different languages or domain changes, which may lead to poor
> generalization ability. If we train an OCR model, it also
> requires extensive training costs and large-scale datasets
> [4,3,39,46]. Another problem is, OCR errors would propagate to
> the VDU system and negatively influence subsequent processes
> [54,23].

***

#### [Page 5](highlights://Kim%20et%20al_2022_OCR-free%20Document%20Understanding%20Transformer#page=5)

> Task. The model is trained to read all texts in the image in
> reading order (from top-left to bottom-right, basically).

Not very multilingual, isn’t it?

***

> This task can be interpreted as a pseudo-OCR task.

***

> A commercial CLOVA OCR API is applied to get the pseudo text
> labels.

***

#### [Page 7](highlights://Kim%20et%20al_2022_OCR-free%20Document%20Understanding%20Transformer#page=7)

> To assess overall accuracy, we also use another metric based on
> TED [68], that can be used for any documents represented as
> trees. It is calculated as, max(0, 1TED(pr, gt)/TED(, gt)),
> where gt, pr, and stands for ground truth, predicted, and
> empty trees respectively. Similar metrics are used in recent
> works on document IE [70,23]

***

