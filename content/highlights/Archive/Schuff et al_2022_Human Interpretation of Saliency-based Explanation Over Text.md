---
aliases:
  - Human Interpretation of Saliency-based Explanation Over Text
tags: []
title: "Human Interpretation of Saliency-based Explanation Over Text"
---

# Human Interpretation of Saliency-based Explanation Over Text

### - Human-centered Computing -> Empirical Studies in visualization.- Computing Methodologies -> Natural Language processing.Machine Learning.

#### [Page 1](highlights://Schuff%20et%20al_2022_Human%20Interpretation%20of%20Saliency-based%20Explanation%20Over%20Text#page=1)

> Many current explanation methods, such as gradient-based or
> Shapley value-based methods, provide measures of importance
> which are well-understood mathematically. But how does a person
> receiving the explanation (the explainee) comprehend it? And
> does their understanding match what the explanation attempted to
> communicate?

> We find that people often mis-interpret the explanations:
> superficial and unrelated factors, such as word length,
> influence the explainees’ importance assignment despite the
> explanation communicating importance directly. We then show that
> some of this distortion can be attenuated: we propose a method
> to adjust saliencies based on model estimates of over- and
> under-perception, and explore bar charts as an alternative to
> heatmap saliency visualization. We find that both approaches can
> attenuate the distorting effect of specific factors, leading to
> better-calibrated understanding of the explanation.

#### [Page 2](highlights://Schuff%20et%20al_2022_Human%20Interpretation%20of%20Saliency-based%20Explanation%20Over%20Text#page=2)

> In the explainable NLP literature, it is generally (implicitly)
> assumed that the explainee interprets the information
> “correctly”, as it is communicated [4, 17, 20]: e.g., when one
> word is explained to be in￿uential in the model’s decision
> process, or more in￿uential than another word, it is assumed
> that the explainee understands this relationship [28].

> This means, for example, that the explainee may underestimate
> the in￿uence of a punctuation token, even if the explanation
> reports that this token is highly signi￿cant (Figure 1), because
> the explainee is attempting to understand how the model reasons
> by analogy to the explainee’s own mind which is an instance of
> anthropomorphic bias [8, 29, 61] and belief bias [16, 22].

> (i) anthropomorphic bias and belief bias: in￿uence by the
> explainee’s self projection onto the model; (ii) visual
> perception bias: in￿uence by the explainee’s visual a￿ordances
> for comprehending information; (iii) learning e￿ects: observable
> temporal changes in the explainee’s interpretation as a result
> of interacting with the explanation over multiple instances.

> upposedly irrelevant factors such as word length do a￿ect how
> explainees perceive the in￿uence of words in feature-attribution
> explanations, despite the explanations explicitly communicating
> this in￿uence.

#### [Page 3](highlights://Schuff%20et%20al_2022_Human%20Interpretation%20of%20Saliency-based%20Explanation%20Over%20Text#page=3)

> This perspective is relaxed in various ways to produce various
> softer measures of importance: for example, gradient-based
> methods measure the change required in the embedding space to
> cause change in model output, while Shapley-value methods
> measure the change with respect to the “average case” in the
> data.

#### [Page 4](highlights://Schuff%20et%20al_2022_Human%20Interpretation%20of%20Saliency-based%20Explanation%20Over%20Text#page=4)

> In the context of NLP models, Jacovi and Goldberg [28] note two
> possible central objectives: reducing the input to a summary
> which comprehensively informs the decision, or identifying
> in￿uential evidence in the input which non-comprehensively
> supports the decision.

#### [Page 6](highlights://Schuff%20et%20al_2022_Human%20Interpretation%20of%20Saliency-based%20Explanation%20Over%20Text#page=6)

> Its key properties are that it (i) models the ordinal response
> variable (i.e., the importance ratings in our setting) on a
> continuous latent scale (ordinal generalized), which is (ii)
> modeled as a sum of smooth functions of covariates (additive)
> and (iii) accounts for random e￿ects (mixed).