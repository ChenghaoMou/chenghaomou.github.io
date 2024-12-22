---
title: "Embers of autoregression show how large language models are shaped by the problem they are trained t"
alias:
- "Embers of autoregression show how large language models are shaped by the problem they are trained t"
created: 2024-11-30 14:54:04:459355
updated: 2024-11-02 20:21:33:481000
modified: 2024-11-30 14:54:04:459384
authors: ['R. Thomas McCoy', 'Shunyu Yao', 'Dan Friedman', 'Mathew D. Hardy', 'Thomas L. Griffiths']
url: https://www.pnas.org/doi/abs/10.1073/pnas.2322420121
zotero_url: zotero://open-pdf/library/items/PRGHPDW6
tags:
- reMarkable
---

# Embers of autoregression show how large language models are shaped by the problem they are trained t
[Open in Zotero](zotero://open-pdf/library/items/PRGHPDW6)
## Abstract

The widespread adoption of large language models (LLMs) makes it important to recognize
their strengths and limitations. We argue that to develop a...
## Pages
### Page 1
**Highlights**:

<mark style="background-color: rgba(255, 237, 117, 255)">bulk of training; see below for discussion.) We argue that a fullunderstanding of LLMs should be strongly informed by the factthat next-word prediction is their primary training objective. Wetherefore hypothesize that, even when they are asked to performtasks that seem very different from next-word prediction—e.g.,solving math problems—their performance on such tasks ishighly influenced by the autoregressive substrate from whichall of their abilities emerge.</mark>
![Image (page 1)](statics/aa3e6dd23eaf/tmpteo3kbx9.png)
### Page 2
**Highlights**:

![Image (page 2)](statics/aa3e6dd23eaf/tmphjy6f0_b.png)
### Page 3
**Highlights**:

![Image (page 3)](statics/aa3e6dd23eaf/tmp0gb63kyg.png)
### Page 4
**Highlights**:

<mark style="background-color: rgba(255, 237, 117, 255)">The most straightforwardconsequence of our analysis is the prediction that LLMs willbe biased toward producing outputs that are high-probabilityword sequences, meaning that they will perform better when thecorrect output is indeed high-probability than when it is not.</mark>
<mark style="background-color: rgba(255, 237, 117, 255)">than rot-13 but is used rarely. We found that GPT-3.5 and GPT4 performed much better at decoding messages written in rot-13than rot-12 (Fig. 3, Top Right), supporting the conclusion thatLLMs are sensitive to task probability.</mark>
### Page 5
**Highlights**:

<mark style="background-color: rgba(255, 237, 117, 255)">However, we predict that task probability will lead to sucheffects more reliably than input probability: we expect that LLMswill often be able to generalize to novel inputs (because neuralnetworks usually perform well on new examples that are similarto ones they have seen), such that low input probability will notalways hamper LLM performance. In contrast, novel tasks requirea higher-order type of generalization that is more challenging forneural networks, so we predict that task probability will routinelyhave an effect.</mark>
### Page 7
**Highlights**:

<mark style="background-color: rgba(255, 237, 117, 255)">This tendency to produce famous quotations in contexts whereaccuracy is low is consistent with our Bayesian analysis: whenan LLM is highly uncertain about the task, we expect thatits likelihood estimates would be close to uniform, so that itspredictions would effectively be sampled from its prior—a processthat would be likely to produce high-probability sentences suchas famous quotations.</mark>
![Image (page 7)](statics/aa3e6dd23eaf/tmpha3l2bb5.png)
### Page 8
**Highlights**:

<mark style="background-color: rgba(255, 237, 117, 255)">case: We show that LLMs are sensitive to task probability, afactor that encompasses the default-vs.-counterfactual situationsthat Wu et al. study but also includes other cases where thereis no default, such as linear functions. As part of our moredirect focus on probability, we used corpus analyses to measuretask frequency for several of our experiments, a type of analysisthat was not used in Wu et al.’s work. Overall, because ourwork and Wu et al.’s use nonoverlapping sets of tasks and drawcompatible conclusions, we view these two papers as mutuallyreinforcing.</mark>
### Page 9
**Highlights**:

<mark style="background-color: rgba(255, 237, 117, 255)">Our experiments were inspired by a teleological analysis—an analysis aimed at understanding a system by understandingthe problems that it was trained to solve. Our results thereforedemonstrate the usefulness of the teleological approach as a wayto illuminate important properties of a model.</mark>