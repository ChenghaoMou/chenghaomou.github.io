---
aliases:
  - "Pythia: A Suite for Analyzing Large Language Models Across Training and Scaling"
  - "Pythia: A Suite for Analyzing Large Language Models Across Training and Scaling"
authors: "Stella Biderman, Hailey Schoelkopf, Quentin Anthony, Herbie Bradley, Kyle O'Brien, Eric Hallahan, Mohammad Aflah Khan, Shivanshu Purohit, USVSN Sai Prashanth, Edward Raff, Aviya Skowron, Lintang Sutawika, Oskar van der Wal"
date: '2023-05-20 19:53:08'
linter-yaml-title-alias: "Pythia: A Suite for Analyzing Large Language Models Across Training and Scaling"
order: -1
tags: 
title: "Pythia: A Suite for Analyzing Large Language Models Across Training and Scaling"
url: "http://arxiv.org/abs/2304.01373"
---

# Pythia: A Suite for Analyzing Large Language Models Across Training and Scaling




## Abstract
How do large language models (LLMs) develop and evolve over the course of training? How do these patterns change as models scale? To answer these questions, we introduce \textit{Pythia}, a suite of 16 LLMs all trained on public data seen in the exact same order and ranging in size from 70M to 12B parameters. We provide public access to 154 checkpoints for each one of the 16 models, alongside tools to download and reconstruct their exact training dataloaders for further study. We intend \textit{Pythia} to facilitate research in many areas, and we present several case studies including novel results in memorization, term frequency effects on few-shot performance, and reducing gender bias. We demonstrate that this highly controlled setup can be used to yield novel insights toward LLMs and their training dynamics. Trained models, analysis code, training code, and training data can be found at https://github.com/EleutherAI/pythia.



<mark style="background: #5fb236">On the largest model scale tested, 6.9B, applying the intervention also successfully changes the model throughout training on the intervention from a pro-stereotypical bias to an anti-stereotypical one. We hypothesize that these results indicate that larger capacity models show less pro-stereotypical bias due to their ability to learn more complex relationships between occupation and pronouns, and that the intervention effect size increases across scale for similar reasons.</mark> [(p. 6)](zotero://open-pdf/library/items/JP79AKQG?page=6) 


<mark style="background: #5fb236">We hypothesize that because larger models are better at modeling correlations and distributions within their corpora, their increased capacity causes features of bias to be more strongly or robustly learned.</mark> [(p. 6)](zotero://open-pdf/library/items/JP79AKQG?page=6) 


<mark style="background: #5fb236">This model implies that memorized sequences are not spaced more densely toward the beginning or end of training, and that between each checkpoint roughly the same number of memorized sequences can be found.</mark> [(p. 7)](zotero://open-pdf/library/items/JP79AKQG?page=7) 


<mark style="background: #2ea8e5">We observe that for both arithmetic and QA experiments, model sizes affect the correlation between average performance and the term frequencies, indicating that this correlation is an emergent property in larger models. Smaller models rarely produce accurate results on the task despite being given up to 16 few-shot examples, as shown in Figure 4, where models at sizes below 1 billion are unable to perform well even in later stages of training, suggesting that these models are not successful at learning the required pattern-matching to solve the tasks regardless of frequency of pertinent information in their training data.</mark> [(p. 8)](zotero://open-pdf/library/items/JP79AKQG?page=8) 





## Notes



---
Comment: Code at https://github.com/EleutherAI/pythia




```

```

%% Import Date: 2023-05-20T19:53:13.736-07:00 %%
