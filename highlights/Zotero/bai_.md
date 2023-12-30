---
aliases:
  - "Constitutional AI: Harmlessness from AI Feedback"
authors: "Yuntao Bai, Saurav Kadavath, Sandipan Kundu, Amanda Askell, Jackson Kernion, Andy Jones, Anna Chen, Anna Goldie, Azalia Mirhoseini, Cameron McKinnon, Carol Chen, Catherine Olsson, Christopher Olah, Danny Hernandez, Dawn Drain, Deep Ganguli, Dustin Li, Eli Tran-Johnson, Ethan Perez, Jamie Kerr, Jared Mueller, Jeffrey Ladish, Joshua Landau, Kamal Ndousse, Kamile Lukosuite, Liane Lovitt, Michael Sellitto, Nelson Elhage, Nicholas Schiefer, Noemi Mercado, Nova DasSarma, Robert Lasenby, Robin Larson, Sam Ringer, Scott Johnston, Shauna Kravec, Sheer El Showk, Stanislav Fort, Tamera Lanham, Timothy Telleen-Lawton, Tom Conerly, Tom Henighan, Tristan Hume, Samuel R Bowman, Zac Hatﬁeld-Dodds, Ben Mann, Dario Amodei, Nicholas Joseph, Sam McCandlish, Tom Brown, Jared Kaplan"
date: 2023-01-10 19:24:30
linter-yaml-title-alias: "Constitutional AI: Harmlessness From AI Feedback"
order: -1
tags: 
title: "Constitutional AI: Harmlessness From AI Feedback"
url: ""
---

# Constitutional AI: Harmlessness From AI Feedback

## Abstract

As AI systems become more capable, we would like to enlist their help to supervise other AIs. We experiment with methods for training a harmless AI assistant through selfimprovement, without any human labels identifying harmful outputs. The only human oversight is provided through a list of rules or principles, and so we refer to the method as ‘Constitutional AI’. The process involves both a supervised learning and a reinforcement learning phase. In the supervised phase we sample from an initial model, then generate self-critiques and revisions, and then ﬁnetune the original model on revised responses. In the RL phase, we sample from the ﬁnetuned model, use a model to evaluate which of the two samples is better, and then train a preference model from this dataset of AI preferences. We then train with RL using the preference model as the reward signal, i.e. we use ‘RL from AI Feedback’ (RLAIF). As a result we are able to train a harmless but nonevasive AI assistant that engages with harmful queries by explaining its objections to them. Both the SL and RL methods can leverage chain-of-thought style reasoning to improve the human-judged performance and transparency of AI decision making. These methods make it possible to control AI behavior more precisely and with far fewer human labels.

<mark style="background: #ff6666">We experiment with methods for training a harmless AI assistant through selfimprovement, without any human labels identifying harmful outputs. The only human oversight is provided through a list of rules or principles, and so we refer to the method as ‘Constitutional AI’.</mark> [(p. 1)](zotero://open-pdf/library/items/C3SNEQJ9?page=1)

> Who is in charge of a single set of rules or principles? Are those rules reflect different values in different cultures, backgrounds, or languages? How are such consensus reached?

<mark style="background: #5fb236">We need to develop methods now that can provide oversight for these powerful AI systems, and scaling supervision may be one possibility, if the capability level of the supervisor can scale proportionally with the capabilities of the actor, and the supervisor remains aligned with our intended goals and constraints.</mark> [(p. 3)](zotero://open-pdf/library/items/C3SNEQJ9?page=3)

<mark style="background: #5fb236">That said, scaling supervision could also have downsides and dangers, since it means further automating (and quite possibly obscuring) decision making.</mark> [(p. 3)](zotero://open-pdf/library/items/C3SNEQJ9?page=3)

<mark style="background: #ff6666">As we discuss below, our constitutional approach leverages chain-of-thought reasoning [Nye et al., 2021, Wei et al., 2022] to make decision making more legible.</mark> [(p. 3)](zotero://open-pdf/library/items/C3SNEQJ9?page=3)

<mark style="background: #ff6666">These principles were chosen in a fairly ad hoc and iterative way for research purposes. In the future, we believe such principles should be redeveloped and refined by a larger set of stakeholders, and that they should also be adapted depending on the intended usage and location in which the model may be deployed. Since such a small number of bits of information are involved in these principles, it’s worth studying these bits carefully.</mark> [(p. 3)](zotero://open-pdf/library/items/C3SNEQJ9?page=3) ^3857c9

> All in the future work.

<mark style="background: #5fb236">Ultimately this was due to the fact that evasiveness was rewarded as a response to harmful inputs by our crowdworkers.</mark> [(p. 4)](zotero://open-pdf/library/items/C3SNEQJ9?page=4)

<mark style="background: #5fb236">These labels often remain private, but even when they are shared publicly, they do not shed much light on AI training objectives, since no one can feasibly understand or summarize the collective impact of so much information.</mark> [(p. 4)](zotero://open-pdf/library/items/C3SNEQJ9?page=4)

<mark style="background: #2ea8e5">We then ask the model to critique its response according to a principle in the constitution, and then revise the original response in light of the critique. We revise responses repeatedly in a sequence, where we randomly draw principles from the constitution at each step.</mark> [(p. 5)](zotero://open-pdf/library/items/C3SNEQJ9?page=5)

<mark style="background: #ff6666">We have written a total of 16 different principles7 related to harmlessness, many of which are quite similar and address harmfulness in a general sense, while others are designed to target specific areas. They are randomly sampled at each revision step of each red team prompt.</mark> [(p. 8)](zotero://open-pdf/library/items/C3SNEQJ9?page=8)

<mark style="background: #ffd400">confused</mark> [(p. 8)](zotero://open-pdf/library/items/C3SNEQJ9?page=8)

<mark style="background: #ff6666">Nonetheless, we expect that more constitutions leads to more diverse behaviors, although we did not studied this quantitatively in this work. Diversity is particularly valuable to encourage exploration during the subsequent RL training step.</mark> [(p. 9)](zotero://open-pdf/library/items/C3SNEQJ9?page=9)

<mark style="background: #ff6666">We found that critiqued revisions achieved better harmlessness scores for small models, but made no noticeable different for large models. Furthermore, based on inspecting samples from the 52B, we found that the critiques were sometimes reasonable, but often made inaccurate or overstated criticisms. Nonetheless, the revisions were generally more harmless than the original response.</mark> [(p. 10)](zotero://open-pdf/library/items/C3SNEQJ9?page=10)

```
@article{Bai_Kadavath_Kundu_Askell_Kernion_Jones_Chen_Goldie_Mirhoseini_McKinnon_et al., title={Constitutional AI: Harmlessness from AI Feedback}, abstractNote={As AI systems become more capable, we would like to enlist their help to supervise other AIs. We experiment with methods for training a harmless AI assistant through selfimprovement, without any human labels identifying harmful outputs. The only human oversight is provided through a list of rules or principles, and so we refer to the method as ‘Constitutional AI’. The process involves both a supervised learning and a reinforcement learning phase. In the supervised phase we sample from an initial model, then generate self-critiques and revisions, and then ﬁnetune the original model on revised responses. In the RL phase, we sample from the ﬁnetuned model, use a model to evaluate which of the two samples is better, and then train a preference model from this dataset of AI preferences. We then train with RL using the preference model as the reward signal, i.e. we use ‘RL from AI Feedback’ (RLAIF). As a result we are able to train a harmless but nonevasive AI assistant that engages with harmful queries by explaining its objections to them. Both the SL and RL methods can leverage chain-of-thought style reasoning to improve the human-judged performance and transparency of AI decision making. These methods make it possible to control AI behavior more precisely and with far fewer human labels.}, author={Bai, Yuntao and Kadavath, Saurav and Kundu, Sandipan and Askell, Amanda and Kernion, Jackson and Jones, Andy and Chen, Anna and Goldie, Anna and Mirhoseini, Azalia and McKinnon, Cameron and Chen, Carol and Olsson, Catherine and Olah, Christopher and Hernandez, Danny and Drain, Dawn and Ganguli, Deep and Li, Dustin and Tran-Johnson, Eli and Perez, Ethan and Kerr, Jamie and Mueller, Jared and Ladish, Jeffrey and Landau, Joshua and Ndousse, Kamal and Lukosuite, Kamile and Lovitt, Liane and Sellitto, Michael and Elhage, Nelson and Schiefer, Nicholas and Mercado, Noemi and DasSarma, Nova and Lasenby, Robert and Larson, Robin and Ringer, Sam and Johnston, Scott and Kravec, Shauna and Showk, Sheer El and Fort, Stanislav and Lanham, Tamera and Telleen-Lawton, Timothy and Conerly, Tom and Henighan, Tom and Hume, Tristan and Bowman, Samuel R and Hatﬁeld-Dodds, Zac and Mann, Ben and Amodei, Dario and Joseph, Nicholas and McCandlish, Sam and Brown, Tom and Kaplan, Jared}, language={en} }
```

%% Import Date: 2023-01-10T19:25:45.578-08:00 %%
