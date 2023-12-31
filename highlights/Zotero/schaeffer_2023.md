---
aliases:
  - Are Emergent Abilities of Large Language Models a Mirage?
  - Are Emergent Abilities of Large Language Models a Mirage?
authors: "Rylan Schaeffer, Brando Miranda, Sanmi Koyejo"
date: '2023-05-22 10:47:22'
tags: []
title: "Are Emergent Abilities of Large Language Models a Mirage?"
url: "http://arxiv.org/abs/2304.15004"
---

# Are Emergent Abilities of Large Language Models a Mirage?




## Abstract
Recent work claims that large language models display emergent abilities, abilities not present in smaller-scale models that are present in larger-scale models. What makes emergent abilities intriguing is two-fold: their sharpness, transitioning seemingly instantaneously from not present to present, and their unpredictability, appearing at seemingly unforeseeable model scales. Here, we present an alternative explanation for emergent abilities: that for a particular task and model family, when analyzing fixed model outputs, one can choose a metric which leads to the inference of an emergent ability or another metric which does not. Thus, our alternative suggests that existing claims of emergent abilities are creations of the researcher's analyses, not fundamental changes in model behavior on specific tasks with scale. We present our explanation in a simple mathematical model, then test it in three complementary ways: we (1) make, test and confirm three predictions on the effect of metric choice using the InstructGPT/GPT-3 family on tasks with claimed emergent abilities, (2) make, test and confirm two predictions about metric choices in a meta-analysis of emergent abilities on BIG-Bench; and (3) show how similar metric decisions suggest apparent emergent abilities on vision tasks in diverse deep network architectures (convolutional, autoencoder, transformers). In all three analyses, we find strong supporting evidence that emergent abilities may not be a fundamental property of scaling AI models.



<mark style="background: #5fb236">Similarly, if the researcher uses a discontinuous metric like Multiple Choice Grade, the researcher can find emergent abilities (Fig. 2D), but switching to a continuous metric like Brier Score removes the emergent ability (Fig. 2F). To summarize, sharp and unpredictable changes with increasing scale can be fully explained by three interpretable factors: (1) the researcher choosing a metric that nonlinearly or discontinuously scales the per-token error rate, (2) insufficiently sampling the larger parameter regime, (3) having insufficient resolution to estimate model performance in the smaller parameter regime, with resolution2 set by 1/test dataset size.</mark> [(p. 5)](zotero://open-pdf/library/items/YY6N3FJP?page=5) 


<mark style="background: #ff6666">Changing the metric from a nonlinear/discontinuous metric (Fig. 2CD) to a linear/continuous metric (Fig. 2EF) should reveal smooth, continuous, predictable performance improvement with model scale.</mark> [(p. 5)](zotero://open-pdf/library/items/YY6N3FJP?page=5) 


<mark style="background: #ff6666">For nonlinear metrics, increasing the resolution of measured model performance by increasing the test dataset size should reveal smooth, continuous, predictable model improvements commensurate with the predictable nonlinear effect of the chosen metric.</mark> [(p. 5)](zotero://open-pdf/library/items/YY6N3FJP?page=5) 


<mark style="background: #ff6666">Regardless of metric, increasing the target string length should affect the model’s performance as a function of the length-1 target performance: approximately geometrically for accuracy, approximately quasilinearly for token edit distance.</mark> [(p. 6)](zotero://open-pdf/library/items/YY6N3FJP?page=6) 


<mark style="background: #ff6666">Notably, because BIG-Bench often scores models on tasks using multiple metrics, the lack of emergent abilities under other metrics suggests that emergent abilities do not appear when model outputs are scored using other metrics.</mark> [(p. 7)](zotero://open-pdf/library/items/YY6N3FJP?page=7) 


<mark style="background: #5fb236">The Brier Score is a strictly proper scoring rule that measures predictions of mutually exclusive outcomes; for a prediction of a binary outcome, the Brier Score simplifies to the mean squared error between the outcome and its predicted probability mass. We found that LaMDA’s emergent abilities on the discontinuous metric Multiple Choice Grade disappeared when the metric was changed to the continuous metric Brier Score (Fig. 6). This further suggests that emergent abilities are not caused by fundamental changes in model behavior with increasing scale, but caused by the use of a discontinuous metric.</mark> [(p. 8)](zotero://open-pdf/library/items/YY6N3FJP?page=8) 





```

```

%% Import Date: 2023-05-22T10:47:28.886-07:00 %%
