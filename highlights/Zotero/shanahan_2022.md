---
aliases:
  - Talking About Large Language Models
  - Talking About Large Language Models
authors: "Murray Shanahan"
date: 2023-01-10 19:24:30
tags: []
title: "Talking About Large Language Models"
url: "http://arxiv.org/abs/2212.03551"
---

# Talking About Large Language Models

## Abstract

Thanks to rapid progress in artiﬁcial intelligence, we have entered an era when technology and philosophy intersect in interesting ways. Sitting squarely at the centre of this intersection are large language models (LLMs). The more adept LLMs become at mimicking human language, the more vulnerable we become to anthropomorphism, to seeing the systems in which they are embedded as more human-like than they really are. This trend is ampliﬁed by the natural tendency to use philosophically loaded terms, such as “knows”, “believes”, and “thinks”, when describing these systems. To mitigate this trend, this paper advocates the practice of repeatedly stepping back to remind ourselves of how LLMs, and the systems of which they form a part, actually work. The hope is that increased scientiﬁc precision will encourage more philosophical nuance in the discourse around artiﬁcial intelligence, both within the ﬁeld and in the public sphere.

<mark style="background: #ffd400">This trend is amplified by the natural tendency to use philosophically loaded terms, such as “knows”, “believes”, and “thinks”, when describing these systems.</mark> [(p. 1)](zotero://open-pdf/library/items/4XBZ3PBG?page=1)

<mark style="background: #5fb236">To ensure that we can make informed decisions about the trustworthiness and safety of the AI systems we deploy, it is advisable to keep to the fore the way those systems actually work, and thereby to avoid imputing to them capacities they lack, while making the best use of the remarkable capabilities they genuinely possess.</mark> [(p. 1)](zotero://open-pdf/library/items/4XBZ3PBG?page=1)

<mark style="background: #5fb236">As Wittgenstein reminds us, human language use is an aspect of human collective behaviour, and it only makes sense in the wider context of the human social activity of which it forms a part (Wittgenstein, 1953).</mark> [(p. 1)](zotero://open-pdf/library/items/4XBZ3PBG?page=1)

<mark style="background: #5fb236">A human infant is born into a community of language users with which</mark> [(p. 1)](zotero://open-pdf/library/items/4XBZ3PBG?page=1)

<mark style="background: #5fb236">it shares a world, and it acquires language by interacting with this community and with the world it shares with them.</mark> [(p. 2)](zotero://open-pdf/library/items/4XBZ3PBG?page=2)

<mark style="background: #5fb236">LLMs are generative mathematical models of the statistical distribution of tokens in the vast public corpus of humangenerated text, where the tokens in question include words, parts of words, or individual characters including punctuation marks.</mark> [(p. 2)](zotero://open-pdf/library/items/4XBZ3PBG?page=2)

<mark style="background: #2ea8e5">They are generative because we can sample from them, which means we can ask them questions. But the questions are of the following very specific kind. “Here’s a fragment of text. Tell me how this fragment might go on. According to your model of the statistics of human language, what words are likely to come next?”</mark> [(p. 2)](zotero://open-pdf/library/items/4XBZ3PBG?page=2)

<mark style="background: #ff6666">Suppose we give an LLM the prompt “The first person to walk on the Moon was ”, and suppose it responds with “Neil Armstrong”. What are we really asking here? In an important sense, we are not really asking who was the first person to walk on the Moon. What we are really asking the model is the following question: Given the statistical distribution of words in the vast public corpus of (English) text, what words are most likely to follow the sequence “The first person to walk on the Moon was ”? A good reply to this question is “Neil Armstrong”.</mark> [(p. 2)](zotero://open-pdf/library/items/4XBZ3PBG?page=2)

<mark style="background: #ff6666">Even if an LLM is fine-tuned, for example using reinforcement learning with human feedback (e.g. to filter out potentially toxic language) (Glaese et al., 2022), the result is still a model of the distribution of tokens in human language, albeit one that has been slightly perturbed.</mark> [(p. 2)](zotero://open-pdf/library/items/4XBZ3PBG?page=2)

<mark style="background: #5fb236">To the human user, each of these examples presents a different sort of relationship to truth. In the case of Neil Armstrong, the ultimate grounds for the truth or otherwise of the LLMs answer is the real world. The Moon is a real object and Neil Armstrong was a real person, and his walking on the Moon is a fact about the physical world. Frodo Baggins, on the other hand, is a fictional character, and the Shire is a fictional place. Frodo’s return to the Shire is a fact about an imaginary world, not a real one. As for the little star in the nursery rhyme, well that is barely even a fictional object, and the only fact at issue is the occurrence of the words “little star” in a familiar English rhyme.</mark> [(p. 2)](zotero://open-pdf/library/items/4XBZ3PBG?page=2)

<mark style="background: #5fb236">It’s also a good idea for developers to remind themselves of this, to avoid the misleading use of philosophically fraught words to describe the capabilities of LLMs, words such as “belief”, “knowledge”, “understanding”, “self”, or even “consciousness”.</mark> [(p. 2)](zotero://open-pdf/library/items/4XBZ3PBG?page=2)

<mark style="background: #5fb236">These examples of what Dennett calls the intentional stance are harmless and useful forms of shorthand for complex processes whose details we don’t know or care about.2 They are harmless because no-one takes them seriously enough to ask their watch to get it right next time, say, or to tell the mail server to try harder.</mark> [(p. 3)](zotero://open-pdf/library/items/4XBZ3PBG?page=3)

<mark style="background: #5fb236">However, in the case of LLMs, such is their power, things can get a little blurry. When an LLM can be made to improve its performance on reasoning tasks simply by being told to “think step by step” (Kojima et al., 2022) (to pick just one remarkable discovery), the temptation to see it as having human-like characteristics is almost overwhelming.</mark> [(p. 3)](zotero://open-pdf/library/items/4XBZ3PBG?page=3)

<mark style="background: #5fb236">Rather, the point is that such systems are simultaneously so very different from humans in their construction, yet (often but not always) so human-like in their behaviour, that we need to pay careful attention to how they work before we speak of them in language suggestive of human capabilities and patterns of behaviour.</mark> [(p. 3)](zotero://open-pdf/library/items/4XBZ3PBG?page=3)

<mark style="background: #5fb236">To begin with, Bob understands that the question comes from another person (Alice), that his answer will be heard by that person, and that it will have an effect on what she believes. In fact, after many years together, Bob knows a good deal else about Alice that is relevant to such situations: her background knowledge, her interests, her opinion of him, and so on. All of this frames the communicative intent behind his reply, which is to impart a certain fact to her, given his understanding of what she wants to know.</mark> [(p. 3)](zotero://open-pdf/library/items/4XBZ3PBG?page=3)

<mark style="background: #5fb236">First, it’s worth noting that a bare-bones</mark> [(p. 3)](zotero://open-pdf/library/items/4XBZ3PBG?page=3)

<mark style="background: #5fb236">LLM is, by itself, not a conversational agent.4 For a start, the LLM will have to be embedded in a larger system to manage the turn-taking in the dialogue. But it will also need to be coaxed into producing conversation-like behaviour.5</mark> [(p. 4)](zotero://open-pdf/library/items/4XBZ3PBG?page=4)

<mark style="background: #5fb236">A bare-bones LLM doesn’t “really” know anything because all it does, at a fundamental level, is sequence prediction. Sometimes a predicted sequence takes the form of a proposition. But the special relationship propositional sequences have to truth is apparent only to the humans who are asking questions, or to those who provided the data the model was trained on.</mark> [(p. 5)](zotero://open-pdf/library/items/4XBZ3PBG?page=5)

<mark style="background: #ff6666">But even if we allow this, knowing that the word “Burundi” is likely to succeed the words “The country to the south of Rwanda is” is not the same as knowing that Burundi is to the south of Rwanda. To confuse those two things is to make a profound category mistake.</mark> [(p. 5)](zotero://open-pdf/library/items/4XBZ3PBG?page=5)

<mark style="background: #5fb236">It cannot participate fully in the human language game of truth, because it does not inhabit the world we human language-users share.7</mark> [(p. 5)](zotero://open-pdf/library/items/4XBZ3PBG?page=5)

<mark style="background: #5fb236">But if Alice were to remark that “Wikipedia knew that Burundi was south of Rwanda”, it would be a figure of speech, not a literal statement. An encyclopedia doesn’t literally “know” or “believe” anything, in the way that a human does, and neither does a bare-bones LLM.</mark> [(p. 6)](zotero://open-pdf/library/items/4XBZ3PBG?page=6)

<mark style="background: #5fb236">Crucially, this line of thinking depends on the shift from the language model itself to the larger system of which the language model is a part. The language model itself is still just a sequence predictor, and has no more access to the external world than it ever did. It is only with respect to the whole system that the intentional stance becomes more compelling in such a case.</mark> [(p. 6)](zotero://open-pdf/library/items/4XBZ3PBG?page=6)

<mark style="background: #5fb236">In this respect, the relationship between a user-provided image and the words generated by the VLM is fundamentally different from the relationship between the world shared by humans and the words we use when we talk about that world. Importantly, the former relationship is mere correlation, while the latter is causal.10</mark> [(p. 7)](zotero://open-pdf/library/items/4XBZ3PBG?page=7)

<mark style="background: #5fb236">If the user presents the VLM with a picture of a dog, and the VLM says “This is a picture of a dog”, there is no guarantee that its words are connected with the dog in particular, rather than some other feature of the image that is spuriously correlated with dogs (such as the presence of a kennel).</mark> [(p. 7)](zotero://open-pdf/library/items/4XBZ3PBG?page=7)

<mark style="background: #5fb236">But in such systems today, the role of language is very limited. The user issues instructions to the system in natural language, and the system generates interpretable natural language descriptions of its actions. But this tiny repertoire of language use hardly bears comparison to the cornucopia of collective activity that language supports in humans.</mark> [(p. 8)](zotero://open-pdf/library/items/4XBZ3PBG?page=8)

<mark style="background: #5fb236">The content neutrality of logic means that we cannot criticise talk of reasoning in LLMs on the grounds that they have no access to an external reality against which truth or falsehood can be measured.</mark> [(p. 8)](zotero://open-pdf/library/items/4XBZ3PBG?page=8)

<mark style="background: #5fb236">But it takes time for new language to settle, and for new ways of talking to find their place in human affairs. It may require an extensive period of interacting with, of living with, these new kinds of artefact before we learn how best to talk about them.12 Meanwhile, we should try to resist the siren call of anthropomorphism.</mark> [(p. 9)](zotero://open-pdf/library/items/4XBZ3PBG?page=9)

```
@article{Shanahan_2022, title={Talking About Large Language Models}, url={[http://arxiv.org/abs/2212.03551](http://arxiv.org/abs/2212.03551)}, abstractNote={Thanks to rapid progress in artiﬁcial intelligence, we have entered an era when technology and philosophy intersect in interesting ways. Sitting squarely at the centre of this intersection are large language models (LLMs). The more adept LLMs become at mimicking human language, the more vulnerable we become to anthropomorphism, to seeing the systems in which they are embedded as more human-like than they really are. This trend is ampliﬁed by the natural tendency to use philosophically loaded terms, such as “knows”, “believes”, and “thinks”, when describing these systems. To mitigate this trend, this paper advocates the practice of repeatedly stepping back to remind ourselves of how LLMs, and the systems of which they form a part, actually work. The hope is that increased scientiﬁc precision will encourage more philosophical nuance in the discourse around artiﬁcial intelligence, both within the ﬁeld and in the public sphere.}, note={0 citations (Semantic Scholar/arXiv) [2022-12-11] arXiv:2212.03551 [cs]}, number={arXiv:2212.03551}, publisher={arXiv}, author={Shanahan, Murray}, year={2022}, month={Dec}, language={en} }
```

%% Import Date: 2023-01-10T19:25:46.458-08:00 %%
