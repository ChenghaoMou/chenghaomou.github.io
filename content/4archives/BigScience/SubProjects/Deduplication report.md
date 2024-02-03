---
created: 2022-03-05 19:43
order: -1
tags:
title: Deduplication report
---

## [[SimHash deduplication|SimHash Results]]

![[Pasted image 20220309205243.png]]

### Format

```text
#matches.tsv (diff means simhash bit difference)
id1     id2     diff
5676323 8347653 4
20899   10053778        4

#clusters.tsv (-1 means no cluster)
id      hash    cluster
0       2471784231621897202     -1
1       16314724221857303546    -1
4       10666012509495373957    -1
```

### Analysis

False positives in long documents: Because SimHash is essentially a BOW algorithm that long documents are more likely ended up being similar to each other, it might be a good idea to combine [[Suffix Array Substring deduplication]] when filtering long duplicates:
1. Remove short duplicates or closely-similar documents – documents with small bit difference – based on SimHash (e.g `len <= 1024` or `diff <= 3`)
2. Remove substring duplicates based on Suffix Array

The time took for SimHash hashing and clustering is usually faster given the same data and computation resources than Suffix Array, e.g:
1. It took a few hours to hashing and clustering English data with 96 cores and 1.4TB memory, while it took more than a day just to build the suffix array;

## [[Suffix Array Substring deduplication|Suffix Array Results]]

![[Pasted image 20220309205125.png]]

**Note**: All offsets are byte offsets instead of string offsets.

### Format

```text
# text.csv (line based documents, each document has replaced the newline character with space)
document1
document2

# ids.csv (line based ids)
id0
id1

# sa.txt (byte offsets of duplicates from text.csv)
0 288
658 765
982 1246
1298 1586

# substring_bytes.tsv (restored line-based byte offsets)
# e.g. document 0 has two byte sequence duplicates: doc0[0:288] and doc0[658:765]
id      x       y
0       0       288
0       658     765
1       150     414
1       466     754
```

### Analysis

The threshold is applied both to the generation of `sa.txt` and the restoration of `substring_bytes.tsv`, meaning:
1. If a substring is shorter than $50$ bytes in `text.csv`, it will be ignored;
2. If a substring spans multiple documents with a length longer than $50$, then during document boundary restoration aka. mapping the substring back to the each documents, any document-bound sub-substring that is shorter than $50$ bytes will be further ignored;