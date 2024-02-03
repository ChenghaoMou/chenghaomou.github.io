---
doc_type: hypothesis-highlights
url: >-
  https://www.amazon.science/blog/simplifying-bert-based-models-to-increase-efficiency-capacity
---
# Simplifying BERT-based models to increase efficiency, capacity
## Highlights

<mark>To make BERT-based models more efficient, we progressively eliminate redundant individual-word embeddings in intermediate layers of the network, while trying to minimize the effect on the complete-sentence embeddings.</mark>


<mark>The basic idea is that, in each of the network’s encoders, we preserve the embedding of the CLS token but select a representative subset — a core set — of the other tokens’ embeddings.</mark>





