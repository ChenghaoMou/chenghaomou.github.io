---
tags: []
title: "text"
---

#### [Page 3](highlights://Heffernan%20et%20al.%20-%202022%20-%20Bitext%20Mining%20Using%20Distilled%20Sentence%20Representat#page=3)

> Instead of one massively multilingual model, we train multiple
> students for a small subset of (similar) languages, or even a
> single language;

***

> Use of separate SPM vocabularies for teacher and student, better
> accommodating scripts and tokens in the student languages which
> were unseen by the teacher (cf. subsection 5.2)

***

#### [Page 4](highlights://Heffernan%20et%20al.%20-%202022%20-%20Bitext%20Mining%20Using%20Distilled%20Sentence%20Representat#page=4)

> Jointly train distillation alongside a MLM criterion to benefit
> additional learning from monolingual data in a foreign language

***

> Addition of curriculum learning in the form of progressive
> distillation. In this strategy, instead of sending the entire
> sentence pairs all at once, we send incremental versions of the
> respective sentence pairs to both teacher and student, which we
> found to be helpful for some particularly challenging
> low-resource languages.

***

> When we minimize the cosine distance only, max-pooling of the
> transformer outputs to achieve the fixed-size sentence
> representations worked best, compared to using a special token
> like [CLS].

***

![](Page4Image303.00636686498297_176.2185973139749-232.71412852112678_65.09079043224847.jpg)

***

> There are three different mar- gin functions: absolute
> (margin(a, b) = a), ratio (margin(a, b) = ab ), and distance
> (margin(a, b) =

***

#### [Page 5](highlights://Heffernan%20et%20al.%20-%202022%20-%20Bitext%20Mining%20Using%20Distilled%20Sentence%20Representat#page=5)

> a b). As our end goal in this work is to produce encoders for
> the task of bitext mining, we adopt this approach, and evaluate
> all encoders using xsim error rate with distance margin.

***

#### [Page 6](highlights://Heffernan%20et%20al.%20-%202022%20-%20Bitext%20Mining%20Using%20Distilled%20Sentence%20Representat#page=6)

> On the other hand, low-resource languages may be badly mod- eled
> in a joint SPM vocabulary, i.e. mostly by very short SPM tokens,
> despite the use of up-sampling strategies.

***

#### [Page 7](highlights://Heffernan%20et%20al.%20-%202022%20-%20Bitext%20Mining%20Using%20Distilled%20Sentence%20Representat#page=7)

> As we also observed a similar effect for other languages, the
> results above suggest that jointly training distillation
> alongside masked lan- guage modelling and curriculum learning is
> partic- ularly beneficial for such low resource languages.

***

[Page4Image303.00636686498297_176.2185973139749-232.71412852112678_65.09079043224847.jpg]: assets/Page4Image303.00636686498297_176.2185973139749-232.71412852112678_65.09079043224847.jpg