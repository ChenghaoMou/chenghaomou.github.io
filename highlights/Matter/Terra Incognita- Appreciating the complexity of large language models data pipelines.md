---
url: "https://blog.christianperone.com/2023/06/appreciating-llms-data-pipelines/"
author: "Christian S. Perone"
publisher: "blog.christianperone.com"
published: 2023-06-03
aliases:
  - "Terra Incognita: Appreciating the complexity of large language models data pipelines"
title: "Terra Incognita- Appreciating the complexity of large language models data pipelines"
created: 2024-07-04
modified: 2024-07-04
---

## Highlights

> There is, however, Pythia (Pythia: A Suite for Analyzing Large Language Models Across Training and Scaling) that said that “… deduplication of our training data has no clear benefit on language modeling performance.” [emphasis added].

> The next step after sharding is paragraph normalization, as deduplication happens at the paragraph level. They normalize each paragraph by lower-casing it, replacing numbers with a placeholder, and removing all Unicode punctuation (you can also replace them) and accent marks. Next, they compute the SHA1 of each paragraph and use the first 64 bits to deduplicate them.

> It doesn’t mean, however, that the quality is good. That’s the reason why CCNet does another filtering step: they use the perplexity from a language model trained on the target domain language, as they found this score to be a relatively good proxy for quality. They train a 5-gram Kneser-Ney model on the Wikipedia of the same language as the target domain and then use these models to compute per-paragraph perplexity.

> Some documents despite being valid text ends up in the tail because they have a vocabulary very different from Wikipedia. This includes blog comments with spokenlike text, or very specialized forums with specific jargon. We decided to not remove content based on the LM score because we think that some of it could be useful for specific applications.

