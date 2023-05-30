---
order: -1
tags: 
title: Gu et al_2021_UniDoc
---

#### [Page 1](highlights://Gu%20et%20al_2021_UniDoc#page=1)

> UDoc is designed to support most document understand- ing tasks,
> extending the Transformer to take multimodal embeddings as
> input. Each input element is composed of words and visual
> features from a semantic region of the input document image.

> it learns a generic representation by making use of three
> self-supervised losses, encouraging the rep- resentation to
> model sentences, learn similarities, and align modalities

No open source code available.

> (1) documents are composed of semantic regions.

The semantic region is left undefined. The difference between OCR block and semantic region is also unexplanied.

> documents have a hierarchical structure (words form sentences,
> sentences form a semantic region, and semantic regions form a
> document).

#### [Page 2](highlights://Gu%20et%20al_2021_UniDoc#page=2)

> (2) documents are more than words. The semantic structure of the
> document is not only determined by the text within it but also
> the visual features such as table, font size and style, and
> figure, etc.

> (3) documents have spatial layout. Visual and layout information
> is critical for document understanding.

> To handle textual information, we encode sentences using a
> hierarchical transformer encoder. The first level of the
> hierarchical encoder models the formation of the sentences from
> words. The second level models the formation of the document
> from sentences.

> Meanwhile, it reduces model computation complexity exponentially
> and increases the number of input words.

512 * 512 = 262144 tokens for each document

> we combine convolution with self-attention to form a mixed
> attention mechanism that combines the advantages of the two
> operations.

> Instead of treating outputs from both modalities identically, we
> design a gating mechanism that can dynamically control the
> influence of textual and visual features.

#### [Page 3](highlights://Gu%20et%20al_2021_UniDoc#page=3)

> UDoc, which consists of four components: feature extraction,
> feature embedding, multi-layer gated cross-attention encoder,
> and pretraining tasks.

#### [Page 4](highlights://Gu%20et%20al_2021_UniDoc#page=4)

> In the feature extraction step, we first employ an off-the-shelf
> OCR tool [17] to extract text from a doc- ument image I, where
> the words are grouped into sentences S = {s1 , . . . , sN }
> whose corresponding bounding boxes are P = {p1 , . . . , pN }.

Sentencization in a document can be problamatic especially when the sections and headers do not follow the grammar rule of a sentence. OCR tools in my experience rarely share the same understanding of the textual information in the documents.

> For each sentence bounding box pi , we use a ConvNet-based
> backbone fImEnc and RoI Align [18] fRoIAlign to extract the
> pooled RoI features vi.

> To obtain a feature embedding, we extract the sentence embedding
> si for each sentence si via a pretrained sentence encoder
> fSentEnc.

> Each region’s RoI feature vi is discretized into a finite set of
> visual representations viQ 2 VQ via product quantization [19].

> Formally, a document image I 2 RW⇥H consists of N regions, where
> each region’s bounding box is characterized by a 6-d vector, as
> pi = {xLT , yLT , xRB , yRB , w , h }

I think they refer each sentence bounding box as region, but what if the sentence stretches two lines, or what about tables, TOC, lists? A rigorously definition of region should help here.

> We also have different types of segments to distinguish
> different modalities. The input sequence to the
> transformer-based encoder starts with a special start element
> ([CLS] and full visual features), then it is followed by
> multimodal elements, and it ends with a special ending element
> ([SEP]+full visual features).

visual features + [SEP] or [SEP] + visual features?

#### [Page 5](highlights://Gu%20et%20al_2021_UniDoc#page=5)

> The goal is to predict the masked sentence embeddings based on
> the contextual information from the surrounding sentences and
> image regions, by minimizing the smooth L1 loss [16]:

> where sim(·, ·) computes the cosine similarity between two
> vectors, is a hyperparameter, and  is a
Task #3 :
> Vision-Language Alignment. To enforce the alignment among
> different modalities, we explicitly encourage alignment between
> words and image regions via similarity-preserving knowledge
> distillation [25]. Note that, unlike the text-image alignment in
> LayoutLMv2 [5] which splits the image into four regions and
> predicts whether the given word is covered or not on the image
> side, we align the image and text belonging to the same region.
> The goal is to minimize the differences
log P
temperature
> scalar. The second term encourages the model to use the codebook
> entries more equally. 5

#### [Page 6](highlights://Gu%20et%20al_2021_UniDoc#page=6)

> between the pairwise similarities of sentence embeddings and the
> pairwise similarities of image region features:

> The paragraph mode groups the non-paragraph results into text
> regions.

This is different from what is previously defined.

#### [Page 9](highlights://Gu%20et%20al_2021_UniDoc#page=9)

> We find that OCR plays a key role in document classification
> performance.

#### [Page 10](highlights://Gu%20et%20al_2021_UniDoc#page=10)

> (2) Although impressive performance has been achieved in
> document entity recognition tasks such as form and receipt
> understanding, the classification accuracy on semi-structured
> documents such as forms is still inferior to that of rich-text
> documents. It is possible to devise a better method to model the
> spatial relationship among words.

> Lastly, the use of different OCR tools is one of the major
> sources of inconsistency among the existing document pretraining
> works. It is worthwhile and essential to build standardized
> pretraining document image datasets with preprovided OCR
> results. In addition to scanned documents, using digital PDF as
> part of the pretraining data is a direction worth exploring
> since it provides rich metadata which could be beneficial for
> multimodal learning.