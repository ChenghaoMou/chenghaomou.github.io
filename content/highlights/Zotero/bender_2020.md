---
aliases:
  - "Climbing Towards NLU: On Meaning, Form, and Understanding in the Age of Data"
  - "Climbing towards NLU: On Meaning, Form, and Understanding in the Age of Data"
  - '"Climbing towards NLU: On Meaning'
  - Form
  - 'and Understanding in the Age of Data"'
authors: "Emily M. Bender, Alexander Koller"
date: 2023-01-15 13:54:45
tags: []
title: "Climbing Towards NLU: On Meaning, Form, and Understanding in the Age of Data"
url: "https://aclanthology.org/2020.acl-main.463"
---

# Climbing Towards NLU: On Meaning, Form, and Understanding in the Age of Data

## Abstract

The success of the large neural language models on many NLP tasks is exciting. However, we find that these successes sometimes lead to hype in which these models are being described as “understanding” language or capturing “meaning”. In this position paper, we argue that a system trained only on form has a priori no way to learn meaning. In keeping with the ACL 2020 theme of “Taking Stock of Where We've Been and Where We're Going”, we argue that a clear understanding of the distinction between form and meaning will help guide the field towards better science around natural language understanding.

<mark style="background: #ff6666">We take (linguistic) meaning to be the relation between a linguistic form and communicative intent.</mark> [(p. 1)](zotero://open-pdf/library/items/B7WYZSV6?page=1)

<mark style="background: #ff6666">If the highlighted terms are meant to describe human-analogous understanding, comprehension, or recall of factual knowledge, then these are gross overclaims. If, instead, they are intended as technical terms, they should be explicitly defined.</mark> [(p. 2)](zotero://open-pdf/library/items/B7WYZSV6?page=2)

<mark style="background: #ff6666">One important consequence of imprudent use of terminology in our academic discourse is that it feeds AI hype in the popular press.</mark> [(p. 2)](zotero://open-pdf/library/items/B7WYZSV6?page=2)

<mark style="background: #ff6666">they were instead simply more effective at leveraging artifacts in the data than previous approaches.</mark> [(p. 2)](zotero://open-pdf/library/items/B7WYZSV6?page=2)

<mark style="background: #5fb236">We take form to be any observable realization of language: marks</mark> [(p. 2)](zotero://open-pdf/library/items/B7WYZSV6?page=2)

<mark style="background: #5fb236">on a page, pixels or bytes in a digital representation of text, or movements of the articulators</mark> [(p. 3)](zotero://open-pdf/library/items/B7WYZSV6?page=3)

<mark style="background: #5fb236">When humans use language, we do so for a purpose: We do not talk for the joy of moving our articulators, but in order to achieve some communicative intent.</mark> [(p. 3)](zotero://open-pdf/library/items/B7WYZSV6?page=3)

<mark style="background: #5fb236">There are many types of communicative intents: they may be to convey some information to the other person; or to ask them to do something; or simply to socialize. We take meaning to be the relation M ⊆ E × I which contains pairs (e, i) of natural language expressions e and the communicative intents i they can be used to evoke. Given this definition of meaning, we can now use understand to refer to the process of retrieving i given e.</mark> [(p. 3)](zotero://open-pdf/library/items/B7WYZSV6?page=3)

<mark style="background: #5fb236">The conventional meaning of an expression (word, phrase, sentence) is what is constant across all of its possible contexts of use. Conventional meaning is an abstract object that represents the communicative potential of a form, given the linguistic system it is drawn from.</mark> [(p. 3)](zotero://open-pdf/library/items/B7WYZSV6?page=3)

<mark style="background: #5fb236">Each linguistic system (say, English) provides a relation C ⊆ E × S, which contains pairs (e, s) of expressions e and their conventional meanings s.</mark> [(p. 3)](zotero://open-pdf/library/items/B7WYZSV6?page=3)

<mark style="background: #5fb236">The speaker has a certain communicative intent i, and chooses an expression e with a standing meaning s which is fit to express i in the current communicative situation. Upon hearing e, the listener then reconstructs s and uses their own knowledge of the communicative situation and their hypotheses about the speaker’s state of mind and intention in an attempt to deduce i.</mark> [(p. 3)](zotero://open-pdf/library/items/B7WYZSV6?page=3)

<mark style="background: #5fb236">We humans are also very willing, as we will see in §4 below, to attribute communicative intent to a linguistic signal of a language we speak, even if the originator of the signal is not an entity that could have communicative intent.</mark> [(p. 3)](zotero://open-pdf/library/items/B7WYZSV6?page=3)

<mark style="background: #ff6666">We argue that, independently of whether passing the Turing test would mean a system is intelligent, a system that is trained only on form would fail a sufficiently sensitive test, because it lacks the ability to connect its utterances to the world.</mark> [(p. 4)](zotero://open-pdf/library/items/B7WYZSV6?page=4)

> Interrelation with other form of text can be seen as a tiny fraction of the world.

<mark style="background: #ff6666">but only because A does all the work in attributing meaning to O’s response. It is not because O understood the meaning of A’s instructions or even his own reply.</mark> [(p. 5)](zotero://open-pdf/library/items/B7WYZSV6?page=5)

<mark style="background: #ff6666">The language exchanged by A and B is a projection of their communicative intents through the meaning relation into linguistic forms. Without access to a means of hypothesizing and testing the underlying communicative intents, reconstructing them from the forms alone is hopeless, and O’s language use will eventually diverge from the language use of an agent who can ground their language in coherent communicative intents.</mark> [(p. 5)](zotero://open-pdf/library/items/B7WYZSV6?page=5)

<mark style="background: #ff6666">Because she assumes that O is B, she uses that conventional meaning together with her other guesses about B’s state of mind and goals to attribute communicative intent. It is not that O’s utterances make sense, but rather, that A can make sense of them.</mark> [(p. 5)](zotero://open-pdf/library/items/B7WYZSV6?page=5)

<mark style="background: #ff6666">But that is precisely the point we are trying to make: a system that has learned the meaning (semantics) of a programming language knows how to execute code in that language. And a system that has learned the meaning of a human language can do things like answer questions posed in the language about things in the world (or in this case, in pictures).</mark> [(p. 6)](zotero://open-pdf/library/items/B7WYZSV6?page=6)

> Interrelation among forms are building a castle in the air

<mark style="background: #5fb236">The form of Java programs, to a system that has not observed the inputs and outputs of these programs, does not include information on how to execute them. Similarly, the form of English sentences, to a system that has not had a chance to acquire the meaning relation C of English, and in the absence of any signal of communicative intent, does not include any information about what language-external entities the speaker might be referring to. Accordingly, a system trained only on the form of Java or English has no way learn their respective meaning relations.</mark> [(p. 6)](zotero://open-pdf/library/items/B7WYZSV6?page=6)

<mark style="background: #5fb236">This is not supported by scholarly work on language acquisition: rather, we find that human language learning is not only grounded in the physical world around us, but also in interaction with other people in that world.</mark> [(p. 6)](zotero://open-pdf/library/items/B7WYZSV6?page=6)

<mark style="background: #5fb236">In summary, the process of acquiring a linguistic system, like human communication generally, relies on joint attention and intersubjectivity: the ability to be aware of what another human is attending to and guess what they are intending to communicate. Human children do not learn meaning from form alone and we should not expect machines to do so either.</mark> [(p. 6)](zotero://open-pdf/library/items/B7WYZSV6?page=6)

<mark style="background: #ff6666">One approach to providing grounding is to train distributional models on corpora augmented with perceptual data, such as photos (Hossain et al., 2019) or other modalities (Kiela and Clark, 2015; Kiela et al., 2015).</mark> [(p. 6)](zotero://open-pdf/library/items/B7WYZSV6?page=6)

<mark style="background: #5fb236">Our arguments do not apply to such scenarios: reading comprehension datasets include information which goes beyond just form, in that they specify semantic relations between pieces of text, and thus a sufficiently sophisticated neural model might learn some aspects of meaning when trained on such datasets. It also is conceivable that whatever information a pretrained LM captures might help the downstream task in learning meaning, without being meaning itself.</mark> [(p. 7)](zotero://open-pdf/library/items/B7WYZSV6?page=7)

<mark style="background: #5fb236">Thus, everything is going great when we take the bottom-up view. But from a top-down perspective, the question is whether the hill we are climbing so rapidly is the right hill. How do we know that incremental progress on today’s tasks will take us to our end goal, whether that is “General Linguistic Intelligence” (Yogatama et al., 2019) or a system that passes the Turing test or a system that captures the meaning of English, Arapaho, Thai, or Hausa to a linguist’s satisfaction?</mark> [(p. 7)](zotero://open-pdf/library/items/B7WYZSV6?page=7)

<mark style="background: #5fb236">First, above all, cultivate humility towards language and ask top-down questions.</mark> [(p. 8)](zotero://open-pdf/library/items/B7WYZSV6?page=8)

<mark style="background: #5fb236">here is no reason to assume that the distribution of language in the test data remotely resembles the distribution of real natural language; thus evaluation results on such tasks must be interpreted very carefully</mark> [(p. 8)](zotero://open-pdf/library/items/B7WYZSV6?page=8)

<mark style="background: #5fb236">Analyses which start from an attitude of healthy skepticism (“too good to be true”) and probing tasks which try to identify what the model actually learned can be good ways to find out whether the system performs well for the right reasons.</mark> [(p. 8)](zotero://open-pdf/library/items/B7WYZSV6?page=8)

<mark style="background: #5fb236">In addition, certain tasks are designed in a way that specific forms are declared as representing certain semantic relations of interest. Examples of this include NLI datasets (Dagan et al., 2006; Rajpurkar et al., 2016; Ostermann et al., 2019) which pair input/output tuples of linguistic forms with an explicit semantic relation (e.g. text + hypothesis + “entailed”).</mark> [(p. 8)](zotero://open-pdf/library/items/B7WYZSV6?page=8)

<mark style="background: #5fb236">Thus a learner could have access to a weak form of interaction data, from which the meaning of Java could conceivably be learned. This is true, but requires a learner which has been equipped by its human developer with the ability to identify and interpret unit tests. This learner thus has access to partial grounding in addition to the form.</mark> [(p. 9)](zotero://open-pdf/library/items/B7WYZSV6?page=9)

<mark style="background: #5fb236">The internal representations of a neural network have been found to capture certain aspects of meaning, such as semantic similarity (Mikolov et al., 2013; Clark, 2015). As we argued in §4, semantic similarity is only a weak reflection of actual meaning. Neural representations neither qualify as standing meanings (s), lacking interpretations, nor as communicative intents (i), being insufficient to e.g. correctly build a coconut catapult.</mark> [(p. 9)](zotero://open-pdf/library/items/B7WYZSV6?page=9)

<mark style="background: #ff6666">It has probably learned something about meaning, in the same sense that syntax captures something about meaning and semantic similarity captures something about meaning: a potentially useful, but incomplete, reflection of the actual meaning.</mark> [(p. 9)](zotero://open-pdf/library/items/B7WYZSV6?page=9)

<mark style="background: #5fb236">This means that even large language models such as BERT do not learn “meaning”; they learn some reflection of meaning into the linguistic form which is very useful in applications.</mark> [(p. 9)](zotero://open-pdf/library/items/B7WYZSV6?page=9)

```
@inproceedings{Bender_Koller_2020, address={Online}, title={Climbing towards NLU: On Meaning, Form, and Understanding in the Age of Data}, url={[https://aclanthology.org/2020.acl-main.463](https://aclanthology.org/2020.acl-main.463)}, DOI={[10.18653/v1/2020.acl-main.463](https://doi.org/10.18653/v1/2020.acl-main.463)}, abstractNote={The success of the large neural language models on many NLP tasks is exciting. However, we find that these successes sometimes lead to hype in which these models are being described as “understanding” language or capturing “meaning”. In this position paper, we argue that a system trained only on form has a priori no way to learn meaning. In keeping with the ACL 2020 theme of “Taking Stock of Where We’ve Been and Where We’re Going”, we argue that a clear understanding of the distinction between form and meaning will help guide the field towards better science around natural language understanding.}, note={267 citations (Semantic Scholar/DOI) [2022-08-20]}, booktitle={Proceedings of the 58th Annual Meeting of the Association for Computational Linguistics}, publisher={Association for Computational Linguistics}, author={Bender, Emily M. and Koller, Alexander}, year={2020}, month={Jul}, pages={5185–5198} }
```

%% Import Date: 2023-01-15T13:54:56.827-08:00 %%
