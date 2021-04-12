# CANINE: Pre-training an Efficient Tokenization-Free Encoder for Language Representation

We've seen some ideas on remedy the vocabulary burden from modern large models with hashing tricks like [PARDO](https://www.aclweb.org/anthology/D19-1506.pdf)/[PQRNN](https://ai.googleblog.com/2020/09/advancing-nlp-with-efficient-projection.html). But all of them still require some level of tokenization up-front where text is broken into hashable & somehow meaningful chunks/subwords.

## Model
In this paper, CANINE makes it more generic by applying character/code-point level hash embeddings and block-wise self-attention – focusing on locality of characters since they don't really have long dependency – and strided convolutions to down-size the sequence length ($\frac{2048}{4}\rightarrow{512}$). 

Above-mentioned architecture is suffient for classification, but for sequence generation tasks, they concatenate the attended character embeddings (word/subword-level information) with down-sampled hidden embeddings (contextual information) and apply another round of concolution and transformer decoder layer to generate characters sequentially.

## Loss
- Span masking and prediction: they mask span of characters and ask the model to predict characters




