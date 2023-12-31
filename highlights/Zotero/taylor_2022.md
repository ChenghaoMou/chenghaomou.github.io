---
aliases:
  - "Galactica: A Large Language Model for Science"
authors: "Ross Taylor, Marcin Kardas, Guillem Cucurull, Thomas Scialom, Anthony Hartshorn, Elvis Saravia, Andrew Poulton, Viktor Kerkez, Robert Stojnic"
date: 2023-01-10 19:24:30
tags: []
title: "Galactica: A Large Language Model for Science"
url: "http://arxiv.org/abs/2211.09085"
---

# Galactica: A Large Language Model for Science

## Abstract

Information overload is a major obstacle to scientific progress. The explosive growth in scientific literature and data has made it ever harder to discover useful insights in a large mass of information. Today scientific knowledge is accessed through search engines, but they are unable to organize scientific knowledge alone. In this paper we introduce Galactica: a large language model that can store, combine and reason about scientific knowledge. We train on a large scientific corpus of papers, reference material, knowledge bases and many other sources. We outperform existing models on a range of scientific tasks. On technical knowledge probes such as LaTeX equations, Galactica outperforms the latest GPT-3 by 68.2% versus 49.0%. Galactica also performs well on reasoning, outperforming Chinchilla on mathematical MMLU by 41.3% to 35.7%, and PaLM 540B on MATH with a score of 20.4% versus 8.8%. It also sets a new state-of-the-art on downstream tasks such as PubMedQA and MedMCQA dev of 77.6% and 52.9%. And despite not being trained on a general corpus, Galactica outperforms BLOOM and OPT-175B on BIG-bench. We believe these results demonstrate the potential for language models as a new interface for science. We open source the model for the benefit of the scientific community.

<mark style="background: #ffd400">Information overload is a major obstacle to scientific progress. The explosive growth in scientific literature and data has made it ever harder to discover useful insights in a large mass of information. Today scientific knowledge is accessed through search engines, but they are unable to organize scientific knowledge alone.</mark> [(p. 1)](zotero://open-pdf/library/items/C8VAQTQV?page=1)

> What are the frictions people have when doing research

<mark style="background: #ff6666">Related Work</mark> [(p. 3)](zotero://open-pdf/library/items/C8VAQTQV?page=3)

> Missing research on scientific research frictions, pain points and motivations for this solution.

<mark style="background: #5fb236">There are two limitations with chain-of-thought. First, it relies on prompt discovery to find a prompt that elicits robust step-by-step reasoning; i.e. minimizes mistakes from doing too much in a single forward pass.
Not only does this require finding a robust prompt that works in all cases, but it also often relies on few-shot examples which take up context space. What is worse, much of the step-by-step reasoning on the internet misses intermediate steps that a human has performed using internal memory. Humans do not write down every step they perform because it would lead to long and tedious answers. They write down the principal steps of reasoning, and do lower-level steps via internal working memory. This means there is &quot;missing data&quot; in written text, i.e. between written steps there are internal memory steps that are not explicitly stated.</mark> [(p. 6)](zotero://open-pdf/library/items/C8VAQTQV?page=6)

<mark style="background: #ff6666">Secondly, chain-of-thought prompting uses the neural network to perform tasks that it is arguably not best suited to doing; for example, arithmetic.</mark> [(p. 6)](zotero://open-pdf/library/items/C8VAQTQV?page=6)

<mark style="background: #ffd400">Repeated Tokens Considered Not Harmful</mark> [(p. 11)](zotero://open-pdf/library/items/C8VAQTQV?page=11)

> You are using a different dataset which I would guess more involving than regular web crawl.

<mark style="background: #5fb236">We suspect that two factors could be at play, a quality factor, the curated nature of the corpus enables more value per token to be extracted, or a modality factor, the nature of scientific data enables more value per token to be extracted. The missing step of causation is what leads specifically from either factor towards less overfitting, and we leave this question to further work. We note the implication that the &quot;tokens → ∞&quot; focus of current LLM projects may be overemphasised versus the importance of filtering the corpus for quality.</mark> [(p. 11)](zotero://open-pdf/library/items/C8VAQTQV?page=11)

<mark style="background: #ff6666">Verification Even as language models become more accurate with scale, we need assurances that their generations are correct and factual. Developing this layer is critical for production applications of language models in general beyond scientific applications.</mark> [(p. 31)](zotero://open-pdf/library/items/C8VAQTQV?page=31) ^5ce274

```
@article{Taylor_Kardas_Cucurull_Scialom_Hartshorn_Saravia_Poulton_Kerkez_Stojnic_2022, title={Galactica: A Large Language Model for Science}, url={[http://arxiv.org/abs/2211.09085](http://arxiv.org/abs/2211.09085)}, DOI={[10.48550/arXiv.2211.09085](https://doi.org/10.48550/arXiv.2211.09085)}, abstractNote={Information overload is a major obstacle to scientific progress. The explosive growth in scientific literature and data has made it ever harder to discover useful insights in a large mass of information. Today scientific knowledge is accessed through search engines, but they are unable to organize scientific knowledge alone. In this paper we introduce Galactica: a large language model that can store, combine and reason about scientific knowledge. We train on a large scientific corpus of papers, reference material, knowledge bases and many other sources. We outperform existing models on a range of scientific tasks. On technical knowledge probes such as LaTeX equations, Galactica outperforms the latest GPT-3 by 68.2% versus 49.0%. Galactica also performs well on reasoning, outperforming Chinchilla on mathematical MMLU by 41.3% to 35.7%, and PaLM 540B on MATH with a score of 20.4% versus 8.8%. It also sets a new state-of-the-art on downstream tasks such as PubMedQA and MedMCQA dev of 77.6% and 52.9%. And despite not being trained on a general corpus, Galactica outperforms BLOOM and OPT-175B on BIG-bench. We believe these results demonstrate the potential for language models as a new interface for science. We open source the model for the benefit of the scientific community.}, note={0 citations (Semantic Scholar/arXiv) [2022-11-20] arXiv:2211.09085 [cs, stat]}, number={arXiv:2211.09085}, publisher={arXiv}, author={Taylor, Ross and Kardas, Marcin and Cucurull, Guillem and Scialom, Thomas and Hartshorn, Anthony and Saravia, Elvis and Poulton, Andrew and Kerkez, Viktor and Stojnic, Robert}, year={2022}, month={Nov} }
```

%% Import Date: 2023-01-10T19:25:47.580-08:00 %%
