---
order: -1
tags: 
title: Write Up
---
To remove *near duplicate* documents in OSCAR which is already exact-deduplicated, we used SimHash ([^1], [^2]) with 6-grams and a hamming distance of 4. About 0.7% of the documents on average (0.07% ~ 2.7%) were identified as near duplicates. In order to further reduce false positives, especially in long documents based on our observation, and false negatives, we also applied substring deduplication [^4] based on Suffix Array[^3] as a complementary deduplication method for documents with more than 6000 (TODO: CHECK THIS NUMBER) characters. With this method, we found on average 21.67% (10.61% ~ 32.30%) of the data (in bytes) are duplicates.

---

[^1]: Charikar, M. (2002). Similarity estimation techniques from rounding algorithms. _STOC '02_.
[^2]: Manku, G.S., Jain, A., & Sarma, A.D. (2007). Detecting near-duplicates for web crawling. _WWW '07_.
[^4]: Lee, K., Ippolito, D., Nystrom, A., Zhang, C., Eck, D., Callison-Burch, C., & Carlini, N. (2021). Deduplicating Training Data Makes Language Models Better. _ArXiv, abs/2107.06499_.
[^3]: Manber, U., & Myers, E.W. (1990). Suffix arrays: a new method for on-line string searches. _SIAM J. Comput., 22_, 935-948.