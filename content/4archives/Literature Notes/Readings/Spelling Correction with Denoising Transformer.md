---
order: -1
tags: 
title: Spelling Correction with Denoising Transformer
---

---
tags:
  - spelling correction
  - typo correction
  - query understanding
---

*The name is confusing. Because this paper isn't about transformer architecture or any fancy performance boost stemming from model engineering. It's mostly about data-driven heuristics and rules about human typos learned from search logs. ([note on p.1](zotero://open-pdf/library/items/CEKDM4JX?page=1))*

> This leads to 10-15% of web search queries being misspelled (Dalianis, 2002; Cucerzan and Brill, 2004), with percentage of misspellings increasing to up to 20% for long-tail queries (Broder et al., 2009), and 26% for academic search engines (Wang et al., 2003).
>
> [Kuznetsov and Urdiales 2021:1](zotero://open-pdf/library/items/CEKDM4JX?page=1)

Assuming the first few numbers are from general search engines, the the percentage of misspellings varies drastically from domain to domain. A good first question to ask when you are trying to implement a spelling correction system would be how much misspellings you are seeing in your system.

A simple way to estimate the number is, following the heuristics they used in this paper to find potential `<typo, correction>` pairs from query logs, collect the number of such pairs.

## Over-correction

Over-correction refers to the situation where user input is actually correct, albeit [too rare, too random or too gibberish (code e.g.)](zotero://open-pdf/library/items/CEKDM4JX?page=1) and the spelling correction model/system correct it into something more mundane. General search engines are more infested than domain specific ones.

They claim that they address such issue with the generated large corpus, but I am not convinced. They argue "Instead, given the large size and diversity of the dataset, it forces the model to output sequences identical to the input sequence by default, and to only attempt correction in cases of high certainty (e.g. if a typo is made in a sufficiently popular token). By forcing model outputs to be identical to model inputs in case of gibberish queries, this setup effectively addresses the overcorrection problem" ([Kuznetsov and Urdiales 2021:4](zotero://open-pdf/library/items/CEKDM4JX?page=4)).

## Inductive Typo Mining

1. [A rolling window of 10 subsequent queries](zotero://open-pdf/library/items/CEKDM4JX?page=3);
2. [There is a small edit distance between two queries](zotero://open-pdf/library/items/CEKDM4JX?page=3);
3. [There is a significant difference in popularity of two queries](zotero://open-pdf/library/items/CEKDM4JX?page=3);
	1. Unclear definition of popularity
4. [The query is considered to be "correct" if all its tokens are either present in the verified vocabulary, or belong to 1.5K most popular tokens in search logs](zotero://open-pdf/library/items/CEKDM4JX?page=3);
5. [The candidate "typo" query is not composed solely of known tokens](zotero://open-pdf/library/items/CEKDM4JX?page=3);
	1. This also excludes incorrect usage of correct words. For example, "a piece of cake" VS. "a peace of cake";
6. [Queries do not contain any forbidden special characters (e.g. @, , #, n)](zotero://open-pdf/library/items/CEKDM4JX?page=3);

Such patterns are then applied randomly to generating realistic typos in the data so that a model(a mini transformer in this case) can learn to redo the noise.

## Typo Distribution

It looks like most of them are [edit-based errors]((zotero://open-pdf/library/items/CEKDM4JX?page=3)). What are the rest?

> "We find that typos tend to happen closer to the end of the string, confirming findings in earlier studies (Mitton, 1996)."
>
> [Kuznetsov and Urdiales 2021:4](zotero://open-pdf/library/items/CEKDM4JX?page=4)