---
aliases:
  - Deduplication in Modern Large-scale LM Datasets
linter-yaml-title-alias: Deduplication in Modern Large-scale LM Datasets
order: -1
tags: []
title: Deduplication in Modern Large-scale LM Datasets
updated: 2022-02-20 13:50
---

# Deduplication in Modern Large-scale LM Datasets

```toc
```

## Motivations Behind Deduplication

Like the old saying, garbage in, garbage out, it is important to take care of our data before feeding it to the model. One of the problems we face, especially considering the rapid scaling of modern language modeling datasets, is duplication. It has been shown that models tend to output training data verbatim when there are many duplicates [@lee_2021](zotero://select/items/@lee_2021) and it potentially makes the model vulnerable to privacy attacks [@kandpal_2022](zotero://select/items/@kandpal_2022). Typically, the advantage of deduplication includes:

1. Efficient training. Depending on how you look at it, you can have either the same amount of learnable knowledge with smaller data size or more with the same data size, which means you can achieve the same performance with less training steps or better performance with same number of steps. [@lee_2021](zotero://select/items/@lee_2021)
2. Better understanding. In [@bowman_2021a](zotero://select/items/@bowman_2021a), authors have discussed various problems regarding the benchmarks. Thought language modeling datasets often precedes the use of benchmarking datasets, similar problems they presented, in my opinion, extend to this stage as well, especially the statistical power the dataset represents. Without deduplicates, the metrics give a clearer view on the performance without being skewed by the duplicates. Given the fact that pre-training with large dataset is still a dominant schema in deep learning, we should pay at least equal attention to LM datasets, if not more.
3. Another related issue is the duplication between splits or between datasets or between LM datasets and benchmarks. Any amount of duplicates discredit our metrics and potentially make so-called improvement a false promise.
4. More accessibility. Socially speaking, most of us cannot afford to download or transfer thousands of giga bytes of text, not to mention training a model with it. Deduplication, for a fix-sized dataset, makes it more easier to transfer and collaborate on.

## Pipeline

The following sections cover a typical workflow of data deduplication. Admittedly, the workflow is intended mostly for English only. I will try my best to include my thoughts for multilingual datasets.

### Preprocessing

#### From Web Pages to Text

It is easy to find templated web pages on the internet, but how do we transform the webpages into textual data and maybe remove the bulk of the deduplicates/templates in the very first step?

It does not look like Common Crawl is doing anything special in this regarding. I couldn't find obvious WET extraction code on the internet or any mention about special text extraction being used, so I am assuming that the WET format text data is directly extracted, without any filtering, from the WARC data, which means the templates in those web pages are most likely reserved in the final text output.

I understand that from their perspective, they are keeping the data as raw as possible to enable any further research. Unfortunately, re-processing the WARC data so that one can remove templated content with some tools like [adbar/trafilatura](https://github.com/adbar/trafilatura) seems like an endeavor only a handful researchers have done so far. In Pile-CC [@gao_2020](zotero://select/items/@gao_2020), the authors used [miso-belica/jusText](https://github.com/miso-belica/jusText) that removes the boilerplate from the WARC files and it yields better quality in the end. (They also have a nice discussion on their decision with jusText.)

#### From Text to Data

Common procedures I have seen in papers like [@wenzek_2020](zotero://select/items/@wenzek_2020) and [@lin_2021a](zotero://select/items/@lin_2021a):

1. Lowercase everything.
2. Replace numbers with placeholders. I would argue that this might lead to the lack of numerical or mathematical astuteness of the model.
3. Remove all punctuation. Downsides of this is that your model won't be able to understand punctuations at all and some context might be lost as well. In languages like Spanish, "Tú eres estudiante." (You are a student) means totally different from "¿Tú eres estudiante?" (Are you a student?).
4. Remove accents. That would be understandably a No for many other languages.

Ideally, you might want a recoverable deduplication where you find as many as possible duplicates with relaxed matching (e.g w/o accents) and compare them with the raw text (w/ accents) afterwards to decide if they are duplicates or not. This would help weeding out the false positives from the relaxed matching.

### Exact Deduplication

For starters, one can remove duplicated webpages by just looking at the URL. A simple hash set of urls would suffice and it is usually not elaborated in papers since the size of URLs is significantly smaller than the actual text.

Exact deduplication on the text can be more involved. Depending on what level of granularity you want to achieve, people usually do one or more of:

1. document level
2. paragraph level
3. sentence level
4. sub-string level

deduplications.

Exact deduplication usually takes on the form of hashing. Each piece of text is hashed into a bucket (e.g. the first 64 bit of SHA-1 in [@wenzek_2020](zotero://select/items/@wenzek_2020)) or directly into a hash set. Sub-string level deduplication is more complicated and it goes beyond any boundaries so we will talk about it in the next section.

### Exact Sub-string Deduplication

[@lee_2021](zotero://select/items/@lee_2021) builds on the idea of [Suffix array - Wikipedia](https://en.wikipedia.org/wiki/Suffix_array) to find duplicate sub-strings in a corpus. If a string is repeated in two locations in the corpus, their suffices will appear as neighbors in the sorted suffix array. The authors also shared their code in [GitHub - google-research/deduplicate-text-datasets](https://github.com/google-research/deduplicate-text-datasets) so I encourage you to give it a try.

### Near Deduplication

Aka. the friendly competition between MinHash + LSH and SimHash. SimHash was proposed in [@charikar_](zotero://select/items/@charikar_) in 2002 and widely used by Google crawlers [@manku_2007](zotero://select/items/@manku_2007), while MinHash debuted in [@broder_1998](zotero://select/items/@broder_1998) in 1998. Both algorithms require some form of hashing, permutation and grouping. Without going too much into details here, based on my personal experience and some account on [Choosing between SimHash and MinHash for a production system - Stack Overflow](https://stackoverflow.com/a/46415603), the main difference is that:

1. SimHash is faster and more cpu-friendly than MinHash;
2. SimHash is more strict on what are near duplicates than MinHash;
3. MinHash + LSH seems like a more popular choice (I also only learned about MinHash + LSH in school)

### Semantic Deduplication

TODO

### Repetition VS. Deduplication

One kind of deduplication or quality filtering is removing documents that are self-repetitive, meaning a document could contain:

<ol type="I">
  <li>small pieces of text that appear many times</li>
  <li>large chunk of text that appear more than once</li>
</ol>

In this regard, [@rae_2021](zotero://select/items/@rae_2021) developed some useful heuristics for finding those English documents that are infested with (i) repeated lines (2) repeated paragraphs or (3) repeated n-grams;

Terminologies they used in the paper:

- **Duplicate line/paragraph fraction:** Given a line/paragraph duplicate, does it appear more than $x\%$ of the document? (case I);
- **Duplicate line/paragraph character fraction:** Given a line/paragraph duplicate, does it have more than $x\%$ characters of the document? (case II);
- **Top n-gram character fraction:** Given a document, if the top n-gram occurrences contains more than $x\%$ of the characters, remove the document;
- **Duplicate n-gram character fraction:** Given a document, if the top duplicated n-gram occurrences contains more than $x\%$ of the characters, remove the document;

They also postulated the thresholds $x$ in each scenario, please the original paper if you're interested.

### Removal

It often goes unmentioned on how to deal with the duplicates.

Exact duplicates that have boundaries (sentences, paragraphs, documents) are easy, you can keep the first instance and ditch the rest. It is unclear what is the best practice for something like sub-string duplicates. Removing one sub-string can easily break the context for the text.

Depending on the algorithms you choose, near deduplication might give you pairs of duplicates or duplicates for each query documents. For pair of duplicates, [@rae_2021](zotero://select/items/@rae_2021) only removes a random one from that pair. If given `(A, B)`, `(B, C)` and `(C, A)` then it is possible you remove `[B, C, A]` for each pair and lead to non of the docs are kept for that cluster. But building a cluster from those pairs might lead you to a cluster that are not as compact as you might expect – a few dissimilarity here and there might group completely unrelated items together in the end.

TODO What would be the best action then?

## Applications

### Validation or Test Leakage

[@lee_2021](zotero://select/items/@lee_2021) found a large duplicates exist in dataset splits and stressed the problem of metric being unreliable due to such duplication. [@gao_2020](zotero://select/items/@gao_2020) states that they only make sure the Pile itself, along with its splits are deduplicated and they won't proactively deduplicating for any downstream benchmarks and leave that decision to readers; [@rae_2021](zotero://select/items/@rae_2021) applied n-gram Jaccard similarity to filter training documents that resemble test documents and also pointed out that some datasets do have curated test-set and such filtering is not necessary for them.

## Cost and Implementation

When you have an academic budget, what is your best defense?
Time.

- It took several days to process Pile-CC with an in-memory LSH according to [@gao_2020](zotero://select/items/@gao_2020).
- It 96 hours on 100 48-core machines on MareNostrum 4 for [@gutierrez-fandino_2021](zotero://select/items/@gutierrez-fandino_2021)'s deduplication.
- It took me ~12 hours on a 80 core machine to calculate SimHash for 1TB Oscar English data (python) and few days on my M1 Max laptop to cluster them (c++).
- Running any code or algorithms with a 1TB input would requires measurement in days.

### Libraries

- [Onion deduplication tool](http://corpus.tools/wiki/Onion)
- [GitHub - google-research/deduplicate-text-datasets](https://github.com/google-research/deduplicate-text-datasets)
	- You can run the code with just a text file;
	- If you want to respect the document boundaries, you have to manually recover from their output;
	- The number of jobs should not exceed the number of openable files or number of arguments if you do not wish to modify their code;
	- The `collect_similar` command does not like a relative file path;
	- It will take 2 hours for a 4GB file in a single job, and each job takes about **10x** memory;
	- Running it with Oscar English would requires at least $O(8n)$ of storage and $O(2n)$ of memory;
- [GitHub - ekzhu/datasketch: MinHash, LSH, LSH Forest, Weighted MinHash, HyperLogLog, HyperLogLog++, LSH Ensemble](https://github.com/ekzhu/datasketch)
- [GitHub - ChenghaoMou/simhash: Simhash in C++](https://github.com/ChenghaoMou/simhash)
- [data_tooling/ac_dc/deduplicate at dedup-improved · ChenghaoMou/data_tooling · GitHub](https://github.com/ChenghaoMou/data_tooling/tree/dedup-improved/ac_dc/deduplicate)

## Final Thoughts

Here is a table that covers most techniques mentioned in this article.

| Dataset                  | OpenWebText2 [@gao_2020](zotero://select/items/@gao_2020) | Pile-CC [@gao_2020](zotero://select/items/@gao_2020) | [@gutierrez-fandino_2021](zotero://select/items/@gutierrez-fandino_2021) | MassiveText [@rae_2021](zotero://select/items/@rae_2021) | [@lin_2021a](zotero://select/items/@lin_2021a) | C4 [@lee_2021](zotero://select/items/@lee_2021)                                   | Real News [@lee_2021](zotero://select/items/@lee_2021) | LM1B [@lee_2021](zotero://select/items/@lee_2021) | WIKI40B [@lee_2021](zotero://select/items/@lee_2021) |
| ------------------------ | --------------------------------------------------------- | ---------------------------------------------------- | ------------------------------------------------------------------------ | -------------------------------------------------------- | ---------------------------------------------- | --------------------------------------------------------------------------------- | ------------------------------------------------------ | ------------------------------------------------- | ---------------------------------------------------- |
| Input Size               | After URL deduplication: 193.89GB (69M docs)              | ~306GB                                               | Between 2TB and 59TB                                                     |                                                          |                                                | 806.92GB (364M docs)                                                              | ~120GiB                                                | ~4.40GiB (30M)                                    | ~2.9M                                                |
| Output Size or Deduction | After MinHashLSH: 65.86GB (17M docs)                      | 227.12GiB (~55M)                                     | 2TB after document deduplication<br/>570GB after substring deduplication | 0.001TB~2.1TB                                            | 0.01GiB~3324.45GiB                             | 3.04%~7.18% **↓** (train)                                                         | 13.63%~19.4% **↓** (train)                             | 0.76%~4.86% **↓** (train)                         | 0.39%~2.76% **↓** (train)                            |
| Level                    | 1. URL<br/>2. Documents                                   | Documents                                            | 1. Sentences<br/>2. Substrings                                           | Documents                                                | 1. URL<br/>2. Paragraphs                       | 1. Substrings<br/>2. Documents                                                    | Same as **C4**                                         | Same as **C4**                                    | Same as **C4**                                       |
| Method                   | 1. URL(Exact)<br/>2. Documents(MinHash LSH)               | Documents(jusText + MinHash LSH)                    | Sentences(Exact) Substrings(Exact)                                       | Documents(Exact) Documents(MinHash)                      | 1. URL(Exact)<br/>2. Paragraphs(Exact)         | 1. Substrings(Suffix Array)<br/>2. Documents(MinHash)                             | Same as **C4**                                         | Same as **C4**                                    | Same as **C4**                                       |
| Parameters               | $(10, 0.5, ?)^*$                                          | $(10, 0.5, ?)^*$                                     | N/A                                                                      | $(?, 0.8, 13)^*$                                         | SHA-1                                          | 1. Suffix Array: minimum 50-token window<br/>MinHash: $(9000, 0.8, 5, 20, 450)^*$ | Same as **C4**                                         | Same as **C4**                                    | Same as **C4**                                       |
| Language                 | English                                                   | English                                              | Spanish                                                                  | English                                                  | Multilingual                                   | English                                                                           | English                                                | English                                           | English                                              |

\* MinHash + LSH parameters $(H, T, N)$:
1. $H$ number of permutations/hashes
2. $J$ Jaccard similarity threshold
3. $N$ n-gram size
4. \* number of bands
5. \* number of rows
