---
order: -1
tags: 
title: Lecture 1 Overview
---

> Language isn't a formal system. Language is glorious chaos.
>
> [I Could Care Less](https://xkcd.com/1576/)

## How Do We Represent the Meaning of a Word?

$$\mbox{symbol} \rightarrow \mbox{idea or thing}$$

$\mbox{WordNet}$: good but missing sufficient context, less or hard up to date, bad for computers to ingest.

`One-hot encoding`: sparse and localist representation, missing notation of similarity.
`Distributional semantics`: embed a word's context in a vector

> You shall know a word by the company it keeps
>
> J. R. Firth

## Word2vec

^c7f69e

Fun fact: it turns out [corpus](https://en.wiktionary.org/wiki/corpus#Latin) is actually a [third-declension noun](https://en.wiktionary.org/wiki/Appendix:Latin_third_declension) not a [fourth-declension noun](https://en.wiktionary.org/wiki/Appendix:Latin_fourth_declension)

$$\mathit{L(\theta)} = \prod_{t=1}^{T}\prod_{ -m \leq j \leq m, j \neq 0}P(w_{t+j}|w_t;\theta)$$

$$\rightarrow$$

$$J(\theta)=-\frac{1}{T}\sum_{t=1}^{T}\sum_{ -m \leq j \leq m, j \neq 0}\log P(w_{t+j}|w_t;\theta)$$

Calculating the probability with softmax

$$P(o|c) = \frac{exp(u_o^Tv_c)}{\sum_{w \in V}exp(u_w^Tv_c)}$$

It tells us how similar word $o$ and $c$ are to each other in a scale of the whole vocabulary.

### Derivatives

we want to maximize the $J(\theta)$. Taking the derivative for the center word vector:

$$\frac{\partial \log P(u_o|v_c)}{\partial{v_c}} =  \log exp(u_o^Tv_c) - \log \sum_{w \in V}exp(u_w^Tv_c)$$

$$\frac{\partial \log P(u_o|v_c)}{\partial{v_c}} = u_o - \frac{1}{\sum_{w \in V}exp(u_w^Tv_c)} \sum_{j=1}^{V} \frac{\partial}{\partial v_c} exp(u_j^Tv_c)$$

$$\frac{\partial \log P(u_o|v_c)}{\partial{v_c}} = u_o - \frac{1}{\sum_{w \in V}exp(u_w^Tv_c)} \sum_{j=1}^{V} exp(u_j^Tv_c) \times u_j$$

$$\frac{\partial \log P(u_o|v_c)}{\partial{v_c}} = u_o - \sum_{j=1}^{V} u_j \times \frac{exp(u_j^Tv_c)}{\sum_{w \in V}exp(u_w^Tv_c)}$$

$$\frac{\partial \log P(u_o|v_c)}{\partial{v_c}} = u_o - \sum_{j=1}^{V} u_j \times P(u_x|v_c)$$