# An Embedding Layer might not be Necessary for Your Next NLP Project
Okay, it might be a little exaggerated, but even if you do need one, you can try starting with a very samll embedding layer.

This blog post talks about the embedding layer, which usually maps the whole vocabulary onto some dense distributed representations at the very begining of most modern neural networks. 
You may not realize this but the embedding layer consist of quite a lot of parameters, and depending on your task or dataset, you might not need them at all. Let's do a simple math here. Typically a pre-trained BERT has around 30,000 tokens in its vocabulary, each of which is embedded into a 768 dimension tensor and that sums up to 23M trainable parameters out of all 110M parameters of a base model.

If you trace back the memory lane, you can probably remember Word2Vec and GloVe embeddings 
