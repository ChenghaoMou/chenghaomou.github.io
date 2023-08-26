---
order: -1
tags: 
title: Ruder et al_2022_Square One Bias in NLP
---

#### [Page 1](highlights://Ruder%20et%20al_2022_Square%20One%20Bias%20in%20NLP#page=1)

> Likewise, if the first 10 NLP experiments we see or conduct are
> in sentiment analysis, this will likely also bias how we think
> of NLP experiments in the future.

***

> the existence of such an exper- imental prototype steers and
> biases the research dynamics in our community.

benchmark lottery

***

#### [Page 2](highlights://Ruder%20et%20al_2022_Square%20One%20Bias%20in%20NLP#page=2)

> We argue that the SQUARE ONE BIAS has sev- eral negative
> effects, most of which amount to the study of one of the above
> dimensions being biased by ignoring the others.

***

> multilinguality, fairness and bias, ef-

***

> ficiency, and interpretability.

***

> Overall, almost 70% of papers evaluate only on English, clearly
> highlighting a lack of language diversity in NLP (Bender, 2011;
> Joshi et al., 2020). Almost 40% of papers only evaluate using
> accuracy and/or F1, foregoing metrics that may shed light on
> other aspects of model behavior. 56.6% of pa- pers do not study
> any of the four major dimensions that we investigated. We refer
> to this standard ex- perimental setup—evaluating only on English
> and optimizing for accuracy or another performance metric
> without considering other dimensions—as the SQUARE ONE.

***

> Regarding work that moves from the SQUARE ONE, most papers make
> a contribution in terms of efficiency, followed by
> multilinguality. However, most papers that evaluate on multiple
> languages are part of the corresponding MT and Multilinguality
> track. Despite being an area receiving increasing at- tention
> (Blodgett et al., 2020), only 6.3% of papers evaluate the bias
> or fairness of a method. Overall, only 6.1% of papers make a
> contribution along two or more of these dimensions.

***

#### [Page 4](highlights://Ruder%20et%20al_2022_Square%20One%20Bias%20in%20NLP#page=4)

> Architectural Biases. One pervasive bias in our models regards
> morphology. Many of our mod- els were not designed with
> morphology in mind, arguably because of the poor/limited
> morphology of English.

***

> However, word embeddings are not useful for tasks that require
> access to mor- phemes, e.g., semantic tasks in morphologically
> rich languages (Avraham and Goldberg, 2017).

***

> it remains unclear whether they capture the information needed
> for processing morphologi- cally rich languages (Tsarfaty et
> al., 2020).

***

> Subword tokenization performs poorly on languages with
> reduplication (Vania and Lopez, 2017), while byte pair encoding
> does not align well with morphol- ogy (Bostrom and Durrett,
> 2020). Consequently, languages with productive morphological
> systems also are disadvantaged when shared ‘language- universal’
> tokenizers are used in current large-scale multilingual language
> models (Ács, 2019; Rust et al., 2021) without any further
> vocabulary adapta- tion (Wang et al., 2020; Pfeiffer et al.,
> 2021).

***

> While the recent generation of self-attention based
> architectures can be seen as inherently order-agnostic, recent
> methods focus- ing on making attention more efficient (Tay et
> al., 2020) introduce new biases into the models. Specif- ically,
> models that reduce the global attention to a local sliding
> window around the token (Liu et al., 2018; Child et al., 2019;
> Zaheer et al., 2020) may incur similar limitations as their
> n-gram and word embedding-based predecessors, performing worse
> on languages with relatively free word order.6

***

> Studies proposing more interpretable methods typically build on
> state-of-the-art meth- ods (Weiss et al., 2018) and much work
> focuses on leveraging components such as attention for in-
> terpretability, which have not been designed with that goal in
> mind (Serrano and Smith, 2019; Wiegr- effe and Pinter, 2019).

***

#### [Page 5](highlights://Ruder%20et%20al_2022_Square%20One%20Bias%20in%20NLP#page=5)

> Similarly, the standard pretrain- fine-tune paradigm (Ruder et
> al., 2019) requires separate model copies to be stored for each
> task, and thus restricts work on multi-domain, multi- task,
> multi-lingual, multi-subpopulation methods that is enabled by
> more efficient and less resource- intensive (Schwartz et al.,
> 2020) fine-tuning meth- ods (Houlsby et al., 2019; Pfeiffer et
> al., 2020)

***

> In sum, (what we typically consider as) standard baselines and
> state-of-the-art architectures favor languages with some
> characteristics over others and are optimized only for
> performance, which in turn propagates the SQUARE ONE BIAS: If
> researchers study aspects such as multilinguality, efficiency,
> fairness or interpretability, they are likely to do so with and
> for commonly used architectures (i.e., often termed ‘standard
> architectures’), in order to reduce (too) many degrees of
> freedom in their em- pirical research.

***

> n interpretability, we can use feature attribution methods and
> word- level annotations to evaluate interpretability meth- ods
> applied to sequence classifiers (Rei and Sø- gaard, 2018), but
> we cannot directly use feature at- tribution methods to obtain
> rationales for sequence labelers.

***

> Put sim- ply, the choice of the data creation protocol, e.g.,
> translation-based versus data collection directly in the target
> language (Clark et al., 2020) can yield profound differences in
> model performance for some groups, or may have serious impact on
> the interpretability or computational efficiency (e.g., sample
> efficiency) of our models.

***

#### [Page 6](highlights://Ruder%20et%20al_2022_Square%20One%20Bias%20in%20NLP#page=6)

> Note how such a bias may interact in non-linear ways with
> efficiency, i.e., efficient meth- ods for shorter documents need
> not be efficient for longer ones, or fairness, i.e., what
> mitigates gender biases in news articles need not mitigate
> gender biases in product reviews.

***

> If our go-to architectures, resources, and experimental setups
> are tailored to some languages over others, some objectives over
> others, and some research paradigms over others, it is
> considerably more work to explore new sets of languages, new
> objectives, or new protocols.

***

> Character-based language models are often reported to perform
> well for mor- phologically rich languages or on non-canonical
> text (Ma et al., 2020), but little is known about their fairness
> properties, and attribution-based in- terpretability methods
> have not been developed for such models.

***

#### [Page 7](highlights://Ruder%20et%20al_2022_Square%20One%20Bias%20in%20NLP#page=7)

> While recent work has begun to study the trade-off between
> efficiency and fairness, this interaction remains largely
> unexplored, especially outside of the empirical risk
> minimization regime; (ii) fair- ness and interpretability
> interact in potentially many ways, i.e., interpretability
> techniques may af- fect the fairness of the underlying models
> (Agarwal, 2021), but rationales may also, for example, be bi-
> ased toward certain demographics in how they are presented (Feng
> and Boyd-Graber, 2018; González et al., 2021); (iii) finally,
> multilinguality and in- terpretability seem heavily
> underexplored. While there exists resources for English for
> evaluating in- terpretability methods against gold-standard
> human annotations, there are, to the best of our knowledge, no
> such resources for other languages.11

***

#### [Page 8](highlights://Ruder%20et%20al_2022_Square%20One%20Bias%20in%20NLP#page=8)

> Always returning to the SQUARE ONE is a way to control for all
> other factors and relating new findings to known territory. The
> reason why this is only seemingly a good idea, however, is that
> the factors we study in NLP research, may be non- linearly
> related. The fact that t makes for a positive net contribution
> under one set of circumstances, does not imply that it would do
> so under different circumstances. This is illustrated most
> clearly by the research surveyed in §3. Ideally, we thus want to
> study the impact of t under as many circum- stances as possible,
> but in the absence of resources to do so, it is a better
> (collective) search strategy to apply t to a random set of
> circumstances (within the space of relevant circumstances, of
> course).

***

#### [Page 9](highlights://Ruder%20et%20al_2022_Square%20One%20Bias%20in%20NLP#page=9)

> i) Currently, most NLP models are eval- uated by one or two
> performance metrics, but we believe dimensions such as fairness,
> efficiency, and interpretability need to become integral
> criteria for model evaluation, in line with recent proposals of
> more user-centric leaderboards (Ethayarajh and Ju- rafsky, 2020;
> Ma et al., 2021). This requires new tools, e.g., to evaluate
> environmental impact (Hen- derson et al., 2020), as well as new
> benchmarks, e.g., to evaluate fairness (Koh et al., 2021) or ef-
> ficiency (Liu et al., 2021b).

***

> ii) We believe sepa- rate conference tracks (areas) lead to
> unfortunate silo effects and inhibit multi-dimensional research.
> Rather, we imagine conference submissions could provide a
> checklist with dimensions along which they make contributions,
> similar to reproducibil- ity checklist. Reviewers can be
> assigned based on their expertise corresponding to different
> dimen- sions.

***

> iii) Finally, we recommend awareness of research prototypes and
> encourage reviewers and chairs to prioritize research that
> departs from pro- totypes in multiple dimensions, in order to
> explore new areas of the research manifold.

***

