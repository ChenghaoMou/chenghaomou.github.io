---
title: '202110091321 Open Vocabulary'
updated: '2021-10-09 13:21'
tags:
  - open vocabulary
  - representation learning
  - translation
  - nlp
---

# Open Vocabulary

## Problems
Word based models suffer from the Out-of-Vocabulary (OOV) problem. Character-level models can be useful if the sequence length is manageable. Recent sub-word models using [^1], [^2], and [^3]  are a good compromise. To some extend, they can be considered as open vocabulary since you can degenerate a word to complete characters (all Unicode characters theoretically, but ASCII characters in the English dominating world). But the problem of a vocabulary remains:
- You have to store and maintain a physical copy of the vocabulary along side your model
- You have to store the token embeddings, which can be a lot of parameters, in your model

## Open, Low, and No Vocabulary

If we define open vocabulary as a criterion that there would be no OOV problem, then you can either have a finite vocabulary or no vocabulary at all(hash, VTR). If you do, the vocabulary can be small (bytes, ASCII characters), moderate or big(BPE w/ fixed size).

### No vocabulary
![[Paper Robust Open-Vocabulary Translation from Visual Text Representations]]
- [^4]
- [^5]

### Low vocabulary
![[Paper CANINE Pre-training an Efficient Tokenization-Free Encoder for Language Representation]]
![[Paper Charformer Fast Character Transformers via Gradient-based Subword Tokenization]]
- [^7]


[^1]: [[1609.08144v2] Google's Neural Machine Translation System: Bridging the Gap between Human and Machine Translation](https://arxiv.org/abs/1609.08144v2)
[^2]: [[1808.06226] SentencePiece: A simple and language independent subword tokenizer and detokenizer for Neural Text Processing](https://arxiv.org/abs/1808.06226)
[^3]: [Byte pair encoding - Wikipedia](https://en.wikipedia.org/wiki/Byte_pair_encoding)
[^4]: [https://aclanthology.org/D19-1506.pdf](https://www.aclweb.org/anthology/D19-1506.pdf)
[^5]: [Google AI Blog: Advancing NLP with Efficient Projection-Based Model Architectures](https://ai.googleblog.com/2020/09/advancing-nlp-with-efficient-projection.html)
[^6]: [[2106.12672] Charformer: Fast Character Transformers via Gradient-based Subword Tokenization](https://arxiv.org/abs/2106.12672)
[^7]: [[2105.13626] ByT5: Towards a token-free future with pre-trained byte-to-byte models](https://arxiv.org/abs/2105.13626)