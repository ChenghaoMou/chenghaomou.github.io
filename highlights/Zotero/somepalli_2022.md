---
aliases:
  - Diffusion Art or Digital Forgery? Investigating Data Replication in Diffusion Models
  - "Diffusion Art or Digital Forgery? Investigating Data Replication in Diffusion Models"
authors: "Gowthami Somepalli, Vasu Singla, Micah Goldblum, Jonas Geiping, Tom Goldstein"
date: 2023-01-10 19:24:30
linter-yaml-title-alias: Diffusion Art or Digital Forgery? Investigating Data Replication in Diffusion Models
order: -1
tags: 
title: Diffusion Art or Digital Forgery? Investigating Data Replication in Diffusion Models
url: "http://arxiv.org/abs/2212.03860"
---

# Diffusion Art or Digital Forgery? Investigating Data Replication in Diffusion Models

## Abstract

Cutting-edge diffusion models produce images with high quality and customizability, enabling them to be used for commercial art and graphic design purposes. But do diffusion models create unique works of art, or are they stealing content directly from their training sets? In this work, we study image retrieval frameworks that enable us to compare generated images with training samples and detect when content has been replicated. Applying our frameworks to diffusion models trained on multiple datasets including Oxford flowers, Celeb-A, ImageNet, and LAION, we discuss how factors such as training set size impact rates of content replication. We also identify cases where diffusion models, including the popular Stable Diffusion model, blatantly copy from their training data.

<mark style="background: #ff0000">fusion outputs. There is a risk that diffusion models might, without notice, reproduce data from the training set directly, or present a collage of multiple training images.</mark> [(p. 2)](zotero://open-pdf/library/items/4CR4EDIW?page=2)

<mark style="background: #ffd400">We informally refer to the reproduction of training images, either in part or in whole, as content replication. In principle, replicating partial or complete information from the training data has implications for the ethical and legal use of diffusion models in terms of attributions to artists and photographers.</mark> [(p. 2)](zotero://open-pdf/library/items/4CR4EDIW?page=2)

<mark style="background: #ff8000">Furthermore, replicants are either a benefit or a hazard; there may be situations where content replication is considered acceptable or fair use, and others where it is “stealing.” While these ethical boundaries are unclear at this time, we focus on the scientific question of whether replication actually happens with modern state-of-the-art diffusion models, and to what degree.</mark> [(p. 2)](zotero://open-pdf/library/items/4CR4EDIW?page=2)

<mark style="background: #ffd400">Furthermore, replicants are either a benefit or a hazard; there may be situations where content replication is considered acceptable or fair use, and others where it is “stealing.” While these ethical boundaries are unclear at this time, we focus on the scientific question of whether replication actually happens with modern state-of-the-art diffusion models, and to what degree.</mark> [(p. 2)](zotero://open-pdf/library/items/4CR4EDIW?page=2)

<mark style="background: #00ff00">We show that for small and medium dataset sizes, replication happens frequently, while for a model trained on the large and diverse ImageNet dataset, replication seems undetectable.</mark> [(p. 2)](zotero://open-pdf/library/items/4CR4EDIW?page=2)

<mark style="background: #00ff00">This latter finding may lead one to believe that replication is not a problem for large-scale models. However, the even larger Stable Diffusion model exhibits clear replication in various forms (Fig 1). Furthermore, we believe that the rate of content replication we identify in Stable Diffusion likely underestimates the true rate because the model is trained on a large 2B image split of LAION, but we only search for matches in the 12M image “aesthetics” subset.</mark> [(p. 2)](zotero://open-pdf/library/items/4CR4EDIW?page=2)

<mark style="background: #ff0000">We say that a generated image has replicated content if it contains an object (either in the foreground or background) that appears identically in a training image, neglecting minor variations in appearance that could result from data augmentation.</mark> [(p. 3)](zotero://open-pdf/library/items/4CR4EDIW?page=3)

<mark style="background: #5fb236">We say that a generated image has replicated content if it contains an object (either in the foreground or background) that appears identically in a training image, neglecting mi- nor variations in appearance that could result from data augmentation.</mark> [(p. 3)](zotero://open-pdf/library/items/4CR4EDIW?page=3)

<mark style="background: #ff0000">Inner product metrics measure global, rather than local similarity. This is because inner product spaces are metric spaces and thus satisfy the triangle inequality. To see why this is a problem, consider an example in which generated image Igen contains a car and a tree directly stolen from two unrelated images Icar and Itree, respectively. Then we would like d(Igen, Icar) and d(Igen, Itree) to be very small indicating replication. But by the triangle inequality, the two unrelated images satisfy d(Icar, Itree) ≤ d(Igen, Icar) + d(Igen, Itree), and are also scored as similar even though they share nothing.</mark> [(p. 4)](zotero://open-pdf/library/items/4CR4EDIW?page=4)

<mark style="background: #ff6666">Inner product metrics measure global, rather than local similarity. This is because inner product spaces are metric spaces and thus satisfy the triangle in- equality.</mark> [(p. 4)](zotero://open-pdf/library/items/4CR4EDIW?page=4)

<mark style="background: #00ff00">To bypass this potential problem, we implement a splitproduct metric that breaks each feature vector into chunks, computes inner products between corresponding chunks, and returns the maximum across these inner products. In vision transformers, we use the representation corresponding to each token as a chunk since they are more local in nature than the [CLS] token. Under this strategy, if d(Igen, Icar) and d(Igen, Itree) are small, then for each of these two image pairs, at least one such feature vector chunk must yield a high inner product.</mark> [(p. 4)](zotero://open-pdf/library/items/4CR4EDIW?page=4)

<mark style="background: #5fb236">Most samples generated by the 300-sample model are extremely similar to the training data, having very high sim- ilarity scores. However, the histogram’s mass shifts drasti- cally to left when we train the model instead on 3000 points.
We do see blatant copies from this model too, but this phe- nomenon occurs infrequently. The histograms of similar- ity scores computed using the full dataset model are highly overlapping. This strong alignment indicates that the model is not, on average, copying its training images any more than its training images are copies of each other.</mark> [(p. 6)](zotero://open-pdf/library/items/4CR4EDIW?page=6)

<mark style="background: #ff0000">Surprisingly, we see that a typical source image from the dataset is duplicated more often than a typical matched image. This does not support the hypothesis that training data duplication leads to more frequent replication.</mark> [(p. 9)](zotero://open-pdf/library/items/4CR4EDIW?page=9)

<mark style="background: #ffd400">Surprisingly, we see that a typical source image from the dataset is du- plicated more often than a typical matched image</mark> [(p. 9)](zotero://open-pdf/library/items/4CR4EDIW?page=9)

![[statics/somepalli_2022/image-1-x50-y549.jpg]]

<mark style="background: #ff0000">Because these datasets are too large for careful human curation, the origins and intellectual property rights of the data sources are largely unknown. This fact, combined with the ability of large models to memorize their training data [9,10,22], raises questions about the originality of dif- 12.03860v2 1</mark> [(p. 1)](zotero://open-pdf/library/items/4CR4EDIW?page=1)

<mark style="background: #ff0000">fusion outputs. There is a risk that diffusion models might, without notice, reproduce data from the training set directly, or present a collage of multiple training images.</mark> [(p. 2)](zotero://open-pdf/library/items/4CR4EDIW?page=2)

<mark style="background: #ff7f00">Furthermore, replicants are either a benefit or a hazard; there may be situations where content replication is considered acceptable or fair use, and others where it is “stealing.” While these ethical boundaries are unclear at this time, we focus on the scientific question of whether replication actually happens with modern state-of-the-art diffusion models, and to what degree.</mark> [(p. 2)](zotero://open-pdf/library/items/4CR4EDIW?page=2)

<mark style="background: #00ff00">We show that for small and medium dataset sizes, replication happens frequently, while for a model trained on the large and diverse ImageNet dataset, replication seems undetectable.</mark> [(p. 2)](zotero://open-pdf/library/items/4CR4EDIW?page=2)

<mark style="background: #00ff00">This latter finding may lead one to believe that replication is not a problem for large-scale models. However, the even larger Stable Diffusion model exhibits clear replication in various forms (Fig 1). Furthermore, we believe that the rate of content replication we identify in Stable Diffusion likely underestimates the true rate because the model is trained on a large 2B image split of LAION, but we only search for matches in the 12M image “aesthetics” subset.</mark> [(p. 2)](zotero://open-pdf/library/items/4CR4EDIW?page=2)

<mark style="background: #ff0000">We say that a generated image has replicated content if it contains an object (either in the foreground or background) that appears identically in a training image, neglecting minor variations in appearance that could result from data augmentation.</mark> [(p. 3)](zotero://open-pdf/library/items/4CR4EDIW?page=3)

<mark style="background: #ff0000">Inner product metrics measure global, rather than local similarity. This is because inner product spaces are metric spaces and thus satisfy the triangle inequality. To see why this is a problem, consider an example in which generated image Igen contains a car and I a tree directly stolen from two unrelated images Icar and I Itree, respectively. Then we would like d(Igen, Icar) and I I I d(Igen, Itree) to be very small indicating replication. But I I by the triangle inequality, the two unrelated images satisfy d(Icar, Itree) ≤ d(Igen, Icar) + d(Igen, Itree), and are also I I ≤I II I scored as similar even though they share nothing.</mark> [(p. 4)](zotero://open-pdf/library/items/4CR4EDIW?page=4)

<mark style="background: #00ff00">To bypass this potential problem, we implement a splitproduct metric that breaks each feature vector into chunks, computes inner products between corresponding chunks, and returns the maximum across these inner products. In vision transformers, we use the representation corresponding to each token as a chunk since they are more local in nature than the [CLS] token. Under this strategy, if d(Igen, Icar) I I and d(Igen, Itree) are small, then for each of these two imI I age pairs, at least one such feature vector chunk must yield a high inner product.</mark> [(p. 4)](zotero://open-pdf/library/items/4CR4EDIW?page=4)

<mark style="background: #00ff00">Most samples generated by the 300-sample model are extremely similar to the training data, having very high similarity scores. However, the histogram’s mass shifts drastically to left when we train the model instead on 3000 points. We do see blatant copies from this model too, but this phenomenon occurs infrequently. The histograms of similarity scores computed using the full dataset model are highly overlapping. This strong alignment indicates that the model is not, on average, copying its training images any more than its training images are copies of each other. The histogram of generated images (gray) no longer has a long right tail, indicating that the model is unlikely to generate exact copies of its training samples.</mark> [(p. 6)](zotero://open-pdf/library/items/4CR4EDIW?page=6)

<mark style="background: #ff0000">Surprisingly, we see that a typical source image from the dataset is duplicated more often than a typical matched image. This does not support the hypothesis that training data duplication leads to more frequent replication.</mark> [(p. 9)](zotero://open-pdf/library/items/4CR4EDIW?page=9)

```
@article{Somepalli_Singla_Goldblum_Geiping_Goldstein_2022, title={Diffusion Art or Digital Forgery? Investigating Data Replication in Diffusion Models}, url={[http://arxiv.org/abs/2212.03860](http://arxiv.org/abs/2212.03860)}, DOI={[10.48550/arXiv.2212.03860](https://doi.org/10.48550/arXiv.2212.03860)}, abstractNote={Cutting-edge diffusion models produce images with high quality and customizability, enabling them to be used for commercial art and graphic design purposes. But do diffusion models create unique works of art, or are they stealing content directly from their training sets? In this work, we study image retrieval frameworks that enable us to compare generated images with training samples and detect when content has been replicated. Applying our frameworks to diffusion models trained on multiple datasets including Oxford flowers, Celeb-A, ImageNet, and LAION, we discuss how factors such as training set size impact rates of content replication. We also identify cases where diffusion models, including the popular Stable Diffusion model, blatantly copy from their training data.}, note={0 citations (Semantic Scholar/arXiv) [2022-12-09] arXiv:2212.03860 [cs]}, number={arXiv:2212.03860}, author={Somepalli, Gowthami and Singla, Vasu and Goldblum, Micah and Geiping, Jonas and Goldstein, Tom}, year={2022}, month={Dec} }
```

%% Import Date: 2023-01-10T19:25:46.705-08:00 %%
