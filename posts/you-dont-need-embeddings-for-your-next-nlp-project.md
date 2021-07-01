# An Embedding Layer might not be Necessary for Your Next NLP Project
Okay, it might be a little exaggerated, but even if you do need one, you can try starting with a very samll embedding layer.

This blog post talks about the embedding layer, which usually maps the whole vocabulary onto some dense distributed representations at the very begining of most modern neural networks. 

You may not realize this but the embedding layer consist of quite a lot of parameters, and depending on your task or dataset, you might not need them at all. Let's do a simple math here. Typically a pre-trained BERT has around 30,000 tokens in its vocabulary, each of which is embedded into a 768 dimension tensor and that sums up to 23M trainable parameters out of all 110M parameters of a base model.

If you trace back the memory lane, you can probably remember Word2Vec and GloVe embeddings that really kick off the NLP trend back in 2013/14. Ever since that, almost every NLP model has a `nn.Embedding` layer somewhere in their code. It is easy — a simple look up — but now, researchers are finding ways to remove the need for an embedding layer.

## What is wrong with the embedding layer/tokenization
Tokenization and the embedding layer come hand in hand, you need a tokenizer to segment your text into tokens and an embedding layer to map each token to its representation. That part is easy but if you ever tried to take tokenization by yourself before, you know there is no prefect tokenizer and it can easily drive a sane man into madness.

Authors from [Robust Open-Vocabulary Translation from Visual Text Representations](https://arxiv.org/abs/2104.08211) give a nice summary of issues with tokenization methods we have right now:
![[Pasted image 20210701151829.png]]
Figure 1: Examples of common behavior which cause divergent representations for subword models. BPE models shown have vocabularies of size 5k.

Yes, BPE and sentencepiece are great for formal, English and clean dataset, but it is only a small tip of the iceberg — informal usage of language (emojis, confusables), low-resource, morphological or orthgraphical rich languages cannot take direct benefit from the same method. 

## Hash Embedding Comes to the Resuce
## No Embedding for Images
## A Samll Embedding Goes a Long Way
## No Tokenization is Perfect, Unless You Learn to Be


## References and Resources
1.  Clark, J. H., Garrette, D., Turc, I. & Wieting, J. CANINE: Pre-training an Efficient Tokenization-Free Encoder for Language Representation. _Arxiv_ (2021).
2.   Salesky, E., Etter, D. & Post, M. Robust Open-Vocabulary Translation from Visual Text Representations. _Arxiv_ (2021).