---
url: "https://www.numind.ai/blog/nuextract-a-foundation-model-for-structured-extraction"
author: "Alexandre Constantin"
publisher: "numind.ai"
published: 2024-06-24
aliases:
  - "NuExtract: A Foundation Model for Structured Extraction"
title: "NuExtract- A Foundation Model for Structured Extraction"
created: 2024-06-30
modified: 2024-07-04
---

## Highlights

> At NuMind, we encountered two kinds of applications for structured extraction. The first one is fairly classic - but still rather unsolved - and consists of parsing technical documents such as medical reports, legal documents, or financial reports. One up-and-rising reason to parse such documents is to create knowledge bases to power RAG solutions. The second kind of application deals with chatbot conversations, for instance to order groceries, book a train ticket, or replace traditional forms. In each scenario, the correct information must be extracted for the conversational agents to make the appropriate API calls in real time.

> For half of the examples, we extract information from the full text, but for the other half, we remove part of the text. Removing part of the text (but keeping the original template) creates empty fields in the output, and will teach the model that it is acceptable to return an empty string when the information is not present. This form of negative sampling is a way to fight hallucinations.

> The other - and much better - way is to give full input → output examples of the task in the prompt. The issue is that input texts can be long, which takes up valuable context space. We found that, surprisingly, only providing the outputs works great. This is a sort of hybrid few-shot setting.

