---
aliases:
  - "The Reversal Curse: LLMs trained on “A is B” fail to learn “B is A”"
authors: "Lukas Berglund, Meg Tong, Max Kaufmann, Mikita Balesni, Asa Cooper Stickland, Tomasz Korbak, Owain Evans"
date: '2023-09-24 10:34:38'
tags: []
title: "The Reversal Curse: LLMs trained on “A is B” fail to learn “B is A”"
url: ""
---

# The Reversal Curse: LLMs trained on “A is B” fail to learn “B is A”

## Abstract
We expose a surprising failure of generalization in auto-regressive large language models (LLMs). If a model is trained on a sentence of the form “A is B”, it will not automatically generalize to the reverse direction “B is A”. This is the Reversal Curse. For instance, if a model is trained on “Olaf Scholz was the ninth Chancellor of Germany”, it will not automatically be able to answer the question, “Who was the ninth Chancellor of Germany?”. Moreover, the likelihood of the correct answer (“Olaf Scholz”) will not be higher than for a random name. Thus, models exhibit a basic failure of logical deduction and do not generalize a prevalent pattern in their training set (i.e. if “A is B” occurs, “B is A” is more likely to occur).


![[statics/berglund_/image-4-x84-y460.png]]

![[statics/berglund_/image-6-x87-y436.png]]

<mark style="background: #ffd400">In this paper, we set out to prove a negative result. Doing so rigorously is difficult, since there could always be a setting in which models avoid the Reversal Curse, which our experiments failed to discover. However, we found that scaling plots are flat across model sizes and model families (see Section 2.1). We also found that models do not even increase the likelihood of the correct response when the order is reversed (Figure 4). Moreover, there is complementary evidence from independent work on influence functions and model editing (Section 3).</mark> [(p. 8)](zotero://open-pdf/library/items/VKV6MA44?page=8)

<mark style="background: #ffd400">Studying other types of relations Do models fail to reverse other types of relation (as the Reversal Curse predicts)? These could include logical implications (e.g. “X implies Y” and “Not X implies not Y.”), spatial relationships (e.g. “The cup is on the table” and “The table is under the cup.”), or n-place relations (e.g. “Alice, Bob, Carol and Dan are in the same group.”)</mark> [(p. 9)](zotero://open-pdf/library/items/VKV6MA44?page=9)

> commonsense reasoning

```
@article{Berglund_Tong_Kaufmann_Balesni_Stickland_Korbak_Evans, title={The Reversal Curse: LLMs trained on “A is B” fail to learn “B is A”}, abstractNote={We expose a surprising failure of generalization in auto-regressive large language models (LLMs). If a model is trained on a sentence of the form “A is B”, it will not automatically generalize to the reverse direction “B is A”. This is the Reversal Curse. For instance, if a model is trained on “Olaf Scholz was the ninth Chancellor of Germany”, it will not automatically be able to answer the question, “Who was the ninth Chancellor of Germany?”. Moreover, the likelihood of the correct answer (“Olaf Scholz”) will not be higher than for a random name. Thus, models exhibit a basic failure of logical deduction and do not generalize a prevalent pattern in their training set (i.e. if “A is B” occurs, “B is A” is more likely to occur).}, author={Berglund, Lukas and Tong, Meg and Kaufmann, Max and Balesni, Mikita and Stickland, Asa Cooper and Korbak, Tomasz and Evans, Owain}, language={en} }
```

%% Import Date: 2023-09-24T10:34:58.025+01:00 %%