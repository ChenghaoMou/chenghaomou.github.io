---
authors: [J. de Curtò y DíAz, I. de Zarzà i Cubero, Carlos T. Calafate, Hong Yan]
citation: |
order: -1
reference: "https://arxiv.org/abs/2204.07953"
tags: [paper reading, signature transform, few-shot learning]
title: Learning with Signatures
---

%%## Tensor Product

![[Pasted image 20220424095425.png]]%%

## Signature

Reference: [Signatures and Streamed Data-New Mathematics for Data Science | Terry Lyons - YouTube](https://www.youtube.com/watch?v=PPBo-egC0hA)

The goal of [Rough path - Wikipedia](https://en.wikipedia.org/wiki/Rough_path) aka *Path Signature* is to provide a perspective to understand data stream, especially in multimodal multidimensional settings.

Data stream, in a broad sense, can be something like drawing with your phone (handwriting), a sequence of words (text), or even an Amazon transaction. Imagine the body pose tracking problem, where a landmark of the body moving in time/video stream, it forms a path on the screen. Writing a number could also form a path, regardless of the speed you write.

There is something about the path that is invariant, just like you can take photos of a face from different angles even though it is the same face. A "3" is a "3" no matter how you write it.

In this case, typical deep learning models are spending a lot of the time learning such invariance instead of the true feature/essence of the data (learning the definition VS. learning the similarity)

Writing a "3" can be decomposed into two paths in $x$ and $y$ directions against the time. (But streaming data can expand beyond 3 dimensions in reality). So we need a better description of the path to solve the challenge.

The goal of Path Signature is not just to describe a certain window (values) of the path but rather **the effect it has** or **sometimes both** (values and effects).

Given a streaming data window $I = [s, t]$ (not the time window as this is agnostic to the time), and $k$ samples of the data, the signature is defined by

$$
S_k(\gamma, I) := \iint_{s<u_1<...<u_k<t}d\gamma_{u_1}\otimes d\gamma_{u_2}...d\gamma_{u_k}
$$

It is a feature description of sequential of effects, while some parameterization like Fourier Transformation are more time-dependently and less effective to describe the invariance.

Since this is a feature by itself, you can use it with different models you like.

Library they used to calculate the signature [GitHub - bottler/iisignature: Iterated integral signature calculations](https://github.com/bottler/iisignature)

