---
url: "https://explosion.ai/blog/bloom-embeddings"
author: "About the authors"
publisher: "explosion.ai"
published: 2022-04-26
aliases:
  -  Compact word vectors with Bloom embeddings
title: Compact word vectors with Bloom embeddings
---

## Highlights
> There are three obvious approaches to reducing the size of the embedding table: 1. Reduce the number of words in the vocabulary. 2. Reduce the number of dimensions per vector. 3. Reduce the number of bits per dimension. While all three of these options can be effective, there’s also a less obvious solution: 4. Cheat, using a probabilistic data structure.

> This gives the model a little more resolution for the unknown words. If all out-of-vocabulary words are assigned the same vector, then they’ll all look identical to the model. Even if the training data actually includes information that shows two different out-of-vocabulary words have important, different implications – for instance, if one word is a strong indicator of positive sentiment, while the other is a strong indicator of negative sentiment – the model won’t be able to tell them apart. However, if we have 10 buckets for the unknown words, we might get lucky, and assign these words to different buckets. If so, the model would be able to learn that one of the unknown-word vectors makes positive sentiment more likely, while the other vector makes negative sentiment more likely.

> Now the question is: will we be able to find values for these weights that let us actually map words to useful vectors?

> And in terms of the model size, there’s yet another advantage to relying on hash functions to map strings to rows: given the same hash function, the same string always maps to the same hash, so the model does not even need to store a list of known vocab items like it would for a traditional sequentially-numbered vocab. Any arbitrary string can be mapped into this table, and the model does not require a stored vocab.

> fastText uses the same idea with using the full table for the “unknown” portion and hashes each subword into a large table. Since there are typically a very large number of possible subwords (for just 26 lowercase letters there are nearly 12M possible 5-grams), the default hash table size is relatively large at 2M rows. (As a side note, the huge subword table is why fastText .bin files are so large even for small vocabs.)

