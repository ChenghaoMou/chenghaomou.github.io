# CANINE: Pre-training an Efficient Tokenization-Free Encoder for Language Representation

We've seen some ideas on remedy the vocabulary burden from modern large models with hashing tricks like [PARDO](https://www.aclweb.org/anthology/D19-1506.pdf)/[PQRNN](https://ai.googleblog.com/2020/09/advancing-nlp-with-efficient-projection.html). But all of them still require some level of tokenization up-front where text is broken into hashable & somehow meaningful chunks/subwords. In this paper, CANINE makes it more generic by applying character/code-point level hash embeddings and block-wise self-attention - focusing on locality of characters since they don't really have long dependency)

