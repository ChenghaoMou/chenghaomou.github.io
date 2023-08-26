---
order: -1
tags: [processed]
title: Henderson et al_2022_Pile of Law
---

#### [Page 1](highlights://Henderson%20et%20al_2022_Pile%20of%20Law#page=1)

> First, it is practically difficult to perform reliable and
> transparent filtering at scale. That is partially because
> undesirable content is deeply contextual.

Context can extend beyond text.

***

> And privacy expectations may vary widely across countries

***

#### [Page 2](highlights://Henderson%20et%20al_2022_Pile%20of%20Law#page=2)

> We note that recent research has shown that pretraining in legal
> contexts may have a unique feature: training smaller models on
> highly in-domain data may be better than large models on big
> data [126, 29]. Our dataset is uniquely large and diverse enough
> to test this hypothesis, where our initial models can form a
> baseline.

***

#### [Page 3](highlights://Henderson%20et%20al_2022_Pile%20of%20Law#page=3)

> No jurisdiction normally permits the publication of financial
> account numbers,
> datesofbirth,oridentitynumberslikesocialsecuritynumbers.6
> Allofthesearebrightlinerules directly applicable to text
> corpora.

***

#### [Page 4](highlights://Henderson%20et%20al_2022_Pile%20of%20Law#page=4)

> Public availability is not a limit. In many cases, the rules for
> sanitizing PSI and sealing cases do not depend on whether
> information is already public.

***

> Detecting and redacting juvenile names, dates of birth, and
> account and identity numbers is virtually always appropriate
> across countries. Legal protections for already-public
> information show why sanitization may be necessary even for text
> collected from public-facing web pages.

***

#### [Page 5](highlights://Henderson%20et%20al_2022_Pile%20of%20Law#page=5)

> One implication of these divergent choices concerns mentions of
> toxic language, where a speaker refers to something said by
> another [112]. For example, if a judge writes that “Plaintiff
> claims that her supervisor called her ‘___”’ (where ___ is a
> profane epithet), an intent-based standard typically would not
> deem the use of ___ ‘toxic,’ while an approach targeting
> profanity typically would.

***

> Explicit racial, sexual, or offensive terms do appear in modern
> legal text, but most often in the form of a quotation than
> direct use.

***

> Under the rules applicable to lawyers, filters based on simple
> word lists would be over-inclusive because they would capture
> references to offensive language that may be non-toxic in
> context. Second, the rules applied in courts suggest that
> generative models should portray toxic behavior explicitly in
> some contexts, either to serve the values of ‘accuracy and
> precision’ or to persuade readers [62, p. 7]; but as [43]
> argues, this view is contested.

***

#### [Page 6](highlights://Henderson%20et%20al_2022_Pile%20of%20Law#page=6)

> Accessible language models like Roberta [76] have a maximum
> context window of 512 tokens. If a reference to offensive
> content spans the majority of these tokens, the model will
> simply uptake the offensive content as if it were being trained
> for direct use. As model contexts grow, it may become more
> reasonable for researchers to adopt judicial norms.

***

> We demonstrate how subsets of the data can be used to learn the
> value judgements made in making this pseudonymity decision. We
> split cases into paragraphs and mask terms used to refer to the
> applicant. We train a distill-BERT base model [103] to predict
> whether the paragraph should use pseudonymity or not.

***

#### [Page 7](highlights://Henderson%20et%20al_2022_Pile%20of%20Law#page=7)

> These experiments show that the Pile of Law encodes signals
> about privacy standards that can be learned to produce more
> nuanced recommendations about filtering. For example,
> researchers may consider whether to mimic the EOIR standard to
> remove names in proceedings related to minors, asylum or safety
> concerns. Or they may wish to learn and apply the more
> contextual standard that is used in general U.S. litigation,
> where a complex set of factors is used to justify the exclusion
> of names from case texts.

***

#### [Page 8](highlights://Henderson%20et%20al_2022_Pile%20of%20Law#page=8)

> (1) toxicity filters often disagree, creating potential issues
> for automated filtering; (2) toxicity filters may be
> value-misaligned when it comes to content that is flagged in
> Pile of Law; (3) toxicity scores vary highly with the length of
> the content, making it unclear how to handle long-document
> filtering.

***

#### [Page 9](highlights://Henderson%20et%20al_2022_Pile%20of%20Law#page=9)

> We find that by using longer span, we can systematically
> decrease the perceived toxicity of a span, even if it is
> obviously toxic under any definition.

***

> The experiments above demonstrate that, while toxicity filtering
> is im- portant to align with the courts’ modern lower bounds
> banning uses of epithets, it is not clear that existing filters
> are not consistent and filter out content aligned with different
> values. Moreover, they can arbitrarily label content as
> non-toxic in long-document or out-of-distribution settings,
> which may affect filtering mechanisms. More work is needed to
> create robust, value-aligned toxicity filters for pretraining
> and it is unclear if off-the-shelf mechanisms strike the right
> balance.

***

#### [Page 19](highlights://Henderson%20et%20al_2022_Pile%20of%20Law#page=19)

> CreativeCommons Attribution-NonCommercial-ShareAlike 4.0
> International license

***

> For example, civil rights cases we reference (e.g., Brown,
> Loving) are crucial civil rights law that legal models must
> understand despite (or perhaps because of) their references to
> unjust legal regimes.

***

