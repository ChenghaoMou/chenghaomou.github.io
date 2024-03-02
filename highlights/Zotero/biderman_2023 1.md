---
aliases:
  - "Pythia: A Suite for Analyzing Large Language Models Across Training and Scaling"
authors: "Stella Biderman, Hailey Schoelkopf, Quentin Anthony, Herbie Bradley, Kyle O'Brien, Eric Hallahan, Mohammad Aflah Khan, Shivanshu Purohit, USVSN Sai Prashanth, Edward Raff, Aviya Skowron, Lintang Sutawika, Oskar van der Wal"
date: 2024-01-01 11:01:12
tags: []
title: "Pythia: A Suite for Analyzing Large Language Models Across Training and Scaling"
url: http://arxiv.org/abs/2304.01373
---

# Pythia: A Suite for Analyzing Large Language Models Across Training and Scaling

## Abstract
How do large language models (LLMs) develop and evolve over the course of training? How do these patterns change as models scale? To answer these questions, we introduce \textit{Pythia}, a suite of 16 LLMs all trained on public data seen in the exact same order and ranging in size from 70M to 12B parameters. We provide public access to 154 checkpoints for each one of the 16 models, alongside tools to download and reconstruct their exact training dataloaders for further study. We intend \textit{Pythia} to facilitate research in many areas, and we present several case studies including novel results in memorization, term frequency effects on few-shot performance, and reducing gender bias. We demonstrate that this highly controlled setup can be used to yield novel insights toward LLMs and their training dynamics. Trained models, analysis code, training code, and training data can be found at https://github.com/EleutherAI/pythia.

> We leverage the known pretraining data and public training codebase of our model suite, and counterfactually retrain models such that the last 7% and 21% of model training has a majority of pronouns modiﬁed such that their grammatical gender is feminine rather than masculine. We demonstrate that such interven- tions are successful at reducing bias measures on a targeted benchmark, and propose these counterfactual interventions and retrainability of portions of our models as a key tool for future study of the inﬂuence of training corpora on model behavior. [(p. 2)](zotero://open-pdf/library/items/JP79AKQG?page=2)

> We ﬁnd that signiﬁ- cant phase change occurs after 65,000 training steps (45% through training): the models with 2.8 billion parameters or more start to exhibit a correlation between task accuracy and occurrence of task-relevant terms which is not present in prior checkpoints and is largely absent from smaller models. [(p. 2)](zotero://open-pdf/library/items/JP79AKQG?page=2)

> Firstly, we ﬁnd that deduplication of our training data has no clear bene- ﬁt on language modeling performance. This is consistent with the results of Black et al. (2022), but inconsistent with other papers. This may indicate that the upsampling of cer- tain subsets of the Pile does not accord with conventional assumptions about duplicated data, or that the general ten- dency of deduplicated data to outperform non-deduplicated data is primarily a statement about the quality of the data used in other works. [(p. 5)](zotero://open-pdf/library/items/JP79AKQG?page=5)

> Thirdly, we ﬁnd a minimal and inconsistent “curse of multilinguality” (Conneau et al., 2020; Pfeiffer et al., 2022) for BLOOM. While BLOOM certainly underperforms other models on LAMBADA, PIQA, and WSC, it does not appear to do so on WinoGrande, ARC-easy, ARC-challenge, SciQ, and LogiQA. We interpret this as a sign that some of the existing literature on the curse of multilinguality may need to be revisited using more diverse evaluation benchmarks. [(p. 5)](zotero://open-pdf/library/items/JP79AKQG?page=5)

> On the largest model scale tested, 6.9B, applying the intervention also successfully changes the model throughout training on the intervention from a pro-stereotypical bias to an anti-stereotypical one. We hypothesize that these results indicate that larger capacity models show less pro-stereotypical bias due to their ability to learn more complex relationships between occupation and pronouns, and that the intervention effect size increases across scale for similar reasons. [(p. 6)](zotero://open-pdf/library/items/JP79AKQG?page=6)

> We hypothesize that because larger models are better at modeling correlations and distributions within their corpora, their increased capacity causes features of bias to be more strongly or robustly learned. [(p. 6)](zotero://open-pdf/library/items/JP79AKQG?page=6)

> This model implies that memorized sequences are not spaced more densely toward the beginning or end of training, and that between each checkpoint roughly the same number of memorized sequences can be found. [(p. 7)](zotero://open-pdf/library/items/JP79AKQG?page=7)

> It implies that one cannot simply place sequences that are undesir- able to memorize at the beginning or end of training and successfully reduce the chance of memorization. However, we propose that a practitioner especially worried about the memorization of certain sequences place those sequences at the beginning of training, thus increasing the odds that the practitioner may observe prior to the completion of the training run that undesirable memorization behavior occurs in the partially-trained model. [(p. 8)](zotero://open-pdf/library/items/JP79AKQG?page=8)

> We observe that for both arithmetic and QA experiments, model sizes affect the correlation between average performance and the term frequencies, indicating that this correlation is an emergent property in larger models. Smaller models rarely produce accurate results on the task despite being given up to 16 few-shot examples, as shown in Figure 4, where models at sizes below 1 billion are unable to perform well even in later stages of training, suggesting that these models are not successful at learning the required pattern-matching to solve the tasks regardless of frequency of pertinent information in their training data. [(p. 8)](zotero://open-pdf/library/items/JP79AKQG?page=8)

## Notes

---
Comment: Code at https://github.com/EleutherAI/pythia

```
@article{Biderman_Schoelkopf_Anthony_Bradley_O’Brien_Hallahan_Khan_Purohit_Prashanth_Raff_et al._2023, title={Pythia: A Suite for Analyzing Large Language Models Across Training and Scaling}, url={[http://arxiv.org/abs/2304.01373](http://arxiv.org/abs/2304.01373)}, DOI={[10.48550/arXiv.2304.01373](https://doi.org/10.48550/arXiv.2304.01373)}, abstractNote={How do large language models (LLMs) develop and evolve over the course of training? How do these patterns change as models scale? To answer these questions, we introduce textit{Pythia}, a suite of 16 LLMs all trained on public data seen in the exact same order and ranging in size from 70M to 12B parameters. We provide public access to 154 checkpoints for each one of the 16 models, alongside tools to download and reconstruct their exact training dataloaders for further study. We intend textit{Pythia} to facilitate research in many areas, and we present several case studies including novel results in memorization, term frequency effects on few-shot performance, and reducing gender bias. We demonstrate that this highly controlled setup can be used to yield novel insights toward LLMs and their training dynamics. Trained models, analysis code, training code, and training data can be found at https://github.com/EleutherAI/pythia.}, note={arXiv:2304.01373 [cs]}, number={arXiv:2304.01373}, publisher={arXiv}, author={Biderman, Stella and Schoelkopf, Hailey and Anthony, Quentin and Bradley, Herbie and O’Brien, Kyle and Hallahan, Eric and Khan, Mohammad Aflah and Purohit, Shivanshu and Prashanth, USVSN Sai and Raff, Edward and Skowron, Aviya and Sutawika, Lintang and van der Wal, Oskar}, year={2023}, month=apr }
```