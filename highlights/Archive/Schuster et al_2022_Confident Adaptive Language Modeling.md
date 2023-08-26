---
order: -1
tags: [processed]
title: Schuster et al_2022_Confident Adaptive Language Modeling
---

#### [Page 1](highlights://Schuster%20et%20al_2022_Confident%20Adaptive%20Language%20Modeling#page=1)

> In this work, we introduce Confident Adaptive Language Model-
> ing (CALM), a framework for dynamically allocating different
> amounts of compute per input and generation timestep. Early exit
> decoding involves several challenges that we address here, such
> as: (1) what confidence measure to use; (2) connecting
> sequence-level constraints to local per-token exit decisions;
> and (3) attending back to missing hidden representations due to
> early exits in previous tokens.

***

#### [Page 5](highlights://Schuster%20et%20al_2022_Confident%20Adaptive%20Language%20Modeling#page=5)

> self-attention at layer i for token t can safely use
> hidden-states djs for j < i 1 as key-values of tokens s < t,
> as long as the projections WKi /V of layer i are used. Notably,
> this projection can now be computed concurrently for all skipped
> layers as they all use the same d from the exited layer.

***

> As shown in Figure 2a, earlier perturbations result in lower
> sequence-level scores as there are more tokens that might suffer
> from the divergence. The degradation, though, is much smaller
> with layer- compared to sampling-based perturbations since, in
> practice, the early exit predictions are mostly accurate.

***

> Following the above observation, we introduce a decaying
> early-exiting threshold that is more permissive towards exiting
> as the decoding process continues.

***

#### [Page 7](highlights://Schuster%20et%20al_2022_Confident%20Adaptive%20Language%20Modeling#page=7)

> FWER-controlling procedure at a level ✏ is an algorithm that
> decides to accept or reject hypotheses {Hi}ki=1, while ensuring
> that the probability of falsely rejecting any Hj is less than ✏

***

