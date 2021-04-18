# Robust Open-Vocabulary Translation from Visual Text Representations

We have seen similar problems using subwords for languages like English in paper [[canine]], and in this paper, the authors takes on the same problem with a refreshing perspective - learning text embeddings from visually rendered text. 

Text segmentation techniques like BPE and SentencePiece are subject to a lot of noise from the following scenarios:

| Phenomena                   | Word     | BPE         |
| --------------------------- | -------- | ----------- |
| Vowelization                | كتاب     | كتاب        |
|                             |          | الك·ِ·ت·اب· |
| Misspelling                 | lang**ua**ge | language    |
|                             | lang**au**ge | la ng au ge |
| Confusables                 | rea**ll**y   | really      |
|                             | rea**11**y   | re a 1 1 y  |
| Shared Character Components | 확인한다 | 확인·한·다  |
|                             | 확인했다 | 확인·했다   |

