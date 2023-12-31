---
aliases:
  - Large Language Models Are Zero-Shot Reasoners
  - Large Language Models are Zero-Shot Reasoners
authors: "Takeshi Kojima, Shixiang Shane Gu, Machel Reid, Yutaka Matsuo, Yusuke Iwasawa"
date: 2023-01-10 19:24:30
tags: []
title: "Large Language Models Are Zero-Shot Reasoners"
url: "http://arxiv.org/abs/2205.11916"
---

# Large Language Models Are Zero-Shot Reasoners

## Abstract

Pretrained large language models (LLMs) are widely used in many sub-fields of natural language processing (NLP) and generally known as excellent few-shot learners with task-specific exemplars. Notably, chain of thought (CoT) prompting, a recent technique for eliciting complex multi-step reasoning through step-by-step answer examples, achieved the state-of-the-art performances in arithmetics and symbolic reasoning, difficult system-2 tasks that do not follow the standard scaling laws for LLMs. While these successes are often attributed to LLMs' ability for few-shot learning, we show that LLMs are decent zero-shot reasoners by simply adding ``Let's think step by step'' before each answer. Experimental results demonstrate that our Zero-shot-CoT, using the same single prompt template, significantly outperforms zero-shot LLM performances on diverse benchmark reasoning tasks including arithmetics (MultiArith, GSM8K, AQUA-RAT, SVAMP), symbolic reasoning (Last Letter, Coin Flip), and other logical reasoning tasks (Date Understanding, Tracking Shuffled Objects), without any hand-crafted few-shot examples, e.g. increasing the accuracy on MultiArith from 17.7% to 78.7% and GSM8K from 10.4% to 40.7% with an off-the-shelf 175B parameter model. The versatility of this single prompt across very diverse reasoning tasks hints at untapped and understudied fundamental zero-shot capabilities of LLMs, suggesting high-level, multi-task broad cognitive capabilities may be extracted through simple prompting. We hope our work not only serves as the minimal strongest zero-shot baseline for the challenging reasoning benchmarks, but also highlights the importance of carefully exploring and analyzing the enormous zero-shot knowledge hidden inside LLMs before crafting finetuning datasets or few-shot exemplars.

<mark style="background: #80ff80">but also highlights the importance of carefully exploring and analyzing the enormous zero-shot knowledge hidden inside LLMs before crafting finetuning datasets or few-shot exemplars.</mark> [(p. 1)](zotero://open-pdf/library/items/5XL7XC9M?page=1)

<mark style="background: #80ff80">chain of thought prompting (CoT), which feed LLMs with the step-by-step reasoning examples rather than standard question and answer examples (see Fig. 1-a). Such chain of thought demonstrations facilitate models to generate a reasoning path that decomposes the complex reasoning into multiple easier steps. Notably with CoT, the reasoning performance then satisfies the scaling laws better and jumps up with the size of the language models.</mark> [(p. 2)](zotero://open-pdf/library/items/5XL7XC9M?page=2)

<mark style="background: #ffbf80">the versatility of this single prompt across diverse reasoning tasks hints at untapped and understudied zero-shot fundamental capabilities of LLMs, such as higher-level broad cognitive capabilities like generic logical reasoning [Chollet, 2019].</mark> [(p. 3)](zotero://open-pdf/library/items/5XL7XC9M?page=3)

<mark style="background: #ff8080">In commonsense reasoning tasks, Zero-shot-CoT does not provide performance gains. It is expected as Wei et al. [2022] also reports that even Few-shot-CoT does not provide performance gains on Lambda (135B), but does improve StrategyQA when combined with substantially larger PaLM (540B) model, which may also apply for ours.</mark> [(p. 5)](zotero://open-pdf/library/items/5XL7XC9M?page=5)

<mark style="background: #ff8080">(1) In commonsense reasoning (CommonsenseQA), Zero-shot-CoT often produces flexible and reasonable chain of thought even when the final prediction is not correct.</mark> [(p. 6)](zotero://open-pdf/library/items/5XL7XC9M?page=6)

<mark style="background: #ff8080">Zero-shot-CoT often output multiple answer choices when the model find it is difficult to narrow it down to one</mark> [(p. 6)](zotero://open-pdf/library/items/5XL7XC9M?page=6)

<mark style="background: #80ff80">Without chain of thought reasoning, the performance does not increase or increases slowly as the model scale is increased, i.e., the curve is mostly flat. In contrast, the performance drastically increases with chain of thought reasoning, as the model size gets bigger.</mark> [(p. 7)](zotero://open-pdf/library/items/5XL7XC9M?page=7)

<mark style="background: #80ff80">When the model size is smaller, chain of thought reasoning is not effective.</mark> [(p. 7)](zotero://open-pdf/library/items/5XL7XC9M?page=7)

<mark style="background: #7fff7f">but also highlights the importance of carefully exploring and analyzing the enormous zero-shot knowledge hidden inside LLMs before crafting finetuning datasets or few-shot exemplars.</mark> [(p. 1)](zotero://open-pdf/library/items/5XL7XC9M?page=1)

<mark style="background: #7fff7f">chain of thought prompting (CoT), which feed LLMs with the step-by-step reasoning examples rather than standard question and answer examples (see Fig. 1-a). Such chain of thought demonstrations facilitate models to generate a reasoning path that decomposes the complex reasoning into multiple easier steps. Notably with CoT, the reasoning performance then satisfies the scaling laws better and jumps up with the size of the language models.</mark> [(p. 2)](zotero://open-pdf/library/items/5XL7XC9M?page=2)

<mark style="background: #ffbf7f">the versatility of this single prompt across diverse reasoning tasks hints at untapped and understudied zero-shot fundamental capabilities of LLMs, such as higher-level broad cognitive capabilities like generic logical reasoning [Chollet, 2019].</mark> [(p. 3)](zotero://open-pdf/library/items/5XL7XC9M?page=3)

<mark style="background: #ff7f7f">In commonsense reasoning tasks, Zero-shot-CoT does not provide performance gains. It is expected as Wei et al. [2022] also reports that even Few-shot-CoT does not provide performance gains on Lambda (135B), but does improve StrategyQA when combined with substantially larger PaLM (540B) model, which may also apply for ours.</mark> [(p. 5)](zotero://open-pdf/library/items/5XL7XC9M?page=5)

<mark style="background: #ff7f7f">(1) In commonsense reasoning (CommonsenseQA), Zero-shot-CoT often produces flexible and reasonable chain of thought even when the final prediction is not correct.</mark> [(p. 6)](zotero://open-pdf/library/items/5XL7XC9M?page=6)

<mark style="background: #ff7f7f">Zero-shot-CoT often output multiple answer choices when the model find it is difficult to narrow it down to one</mark> [(p. 6)](zotero://open-pdf/library/items/5XL7XC9M?page=6)

<mark style="background: #7fff7f">Without chain of thought reasoning, the performance does not increase or increases slowly as the model scale is increased, i.e., the curve is mostly flat. In contrast, the performance drastically increases with chain of thought reasoning, as the model size gets bigger.</mark> [(p. 7)](zotero://open-pdf/library/items/5XL7XC9M?page=7)

<mark style="background: #7fff7f">When the model size is smaller, chain of thought reasoning is not effective.</mark> [(p. 7)](zotero://open-pdf/library/items/5XL7XC9M?page=7)

```
@book{Kojima_Gu_Reid_Matsuo_Iwasawa_2022, title={Large Language Models are Zero-Shot Reasoners}, url={[http://arxiv.org/abs/2205.11916](http://arxiv.org/abs/2205.11916)}, DOI={[10.48550/arXiv.2205.11916](https://doi.org/10.48550/arXiv.2205.11916)}, abstractNote={Pretrained large language models (LLMs) are widely used in many sub-fields of natural language processing (NLP) and generally known as excellent few-shot learners with task-specific exemplars. Notably, chain of thought (CoT) prompting, a recent technique for eliciting complex multi-step reasoning through step-by-step answer examples, achieved the state-of-the-art performances in arithmetics and symbolic reasoning, difficult system-2 tasks that do not follow the standard scaling laws for LLMs. While these successes are often attributed to LLMs’ ability for few-shot learning, we show that LLMs are decent zero-shot reasoners by simply adding ``Let’s think step by step’’ before each answer. Experimental results demonstrate that our Zero-shot-CoT, using the same single prompt template, significantly outperforms zero-shot LLM performances on diverse benchmark reasoning tasks including arithmetics (MultiArith, GSM8K, AQUA-RAT, SVAMP), symbolic reasoning (Last Letter, Coin Flip), and other logical reasoning tasks (Date Understanding, Tracking Shuffled Objects), without any hand-crafted few-shot examples, e.g. increasing the accuracy on MultiArith from 17.7% to 78.7% and GSM8K from 10.4% to 40.7% with an off-the-shelf 175B parameter model. The versatility of this single prompt across very diverse reasoning tasks hints at untapped and understudied fundamental zero-shot capabilities of LLMs, suggesting high-level, multi-task broad cognitive capabilities may be extracted through simple prompting. We hope our work not only serves as the minimal strongest zero-shot baseline for the challenging reasoning benchmarks, but also highlights the importance of carefully exploring and analyzing the enormous zero-shot knowledge hidden inside LLMs before crafting finetuning datasets or few-shot exemplars.}, note={0 citations (Semantic Scholar/arXiv) [2022-05-26]  arXiv:2205.11916 [cs] type: article}, number={arXiv:2205.11916}, institution={arXiv}, author={Kojima, Takeshi and Gu, Shixiang Shane and Reid, Machel and Matsuo, Yutaka and Iwasawa, Yusuke}, year={2022}, month={May} }
```

%% Import Date: 2023-01-10T19:25:45.843-08:00 %%
