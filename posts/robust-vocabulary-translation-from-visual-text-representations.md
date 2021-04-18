# Robust Open-Vocabulary Translation from Visual Text Representations

We have seen similar problems using subwords for languages like English in paper [[canine]], and in this paper, the authors takes on the same problem with a refreshing perspective - learning text embeddings from visually rendered text. 

Text segmentation techniques like BPE and SentencePiece are subject to a lot of noise from the following scenarios:

| Phenomena    | Word     | BPE         |
| ------------ | -------- | ----------- |
| Vowelization |          |             |
| Misspelling  | language | language    |
|              | langauge | la ng au ge |
| Confusables  | really   | really      |
|              | rea11y   | re a 1 1 y  |
|              |          |             |
