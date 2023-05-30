---
order: -1
tags: ['constituency parsing', 'natural language processing', 'course', 'cs224n', 'recursive neural network', 'sentiment']
title: Lecture 18 Constituency Parsing and TreeRNNs
updated: '11-07-2021 12:46'
---

## Semantic Representation Beyond Word Vectors

We want to represent the *meaning of larger phrases* instead of words. i.e. to find the meaning of a semantic composition of smaller elements, aka. compositionality.

## The Recursion From Small Parts to Bigger Parts

The hierarchical structure of the language that can theoretically expand to infinity.

*The principle of compositionality*: the meaning of a sentence is defined by 1. the words and 2. the way it is constructed.

### The Difference Between Recurrency and Recursiveness

*Recurrency*: modeling the meaning of the input up to the current step;
*Recursiveness*: modeling each constituency bottom up, requiring a tree/syntactic structure;

## Recursive Neural Network for Structure Prediction

```
                                              
 Plausibility Score           Meaning Vector  
                                              
          ▲                          ▲        
          └─────────────┬────────────┘        
                        │                     
                        │                     
                ┌──────────────┐              
                │              │              
                │      NN      │              
                │              │              
                │              │              
                └──────────────┘              
                        ▲                     
                        │                     
               ┌────────┴─┐                   
               │          │                   
               │          │                   
               │          │                   
                                              
              W1         W2                   
                                              
```

### Equation

$$
	p = \mathit{tanh}(W
	\begin{bmatrix}
	c_1\\
	c_2
	\end{bmatrix} + b
	)
$$

## Syntactically-Untied RNN

Instead of using the same weight matrix $W$ like the one in [[#Recursive Neural Network for Structure Prediction|TreeRNN]], use different weight matrices for different constituents.

### New Equation

$$
	p = \mathit{tanh}(W
	\begin{bmatrix}
	C_2 \cdot c_1\\
	C_1 \cdot c_2
	\end{bmatrix} + b
	)
$$

Each constituent $i$ not only has a meaning vector $c_i$ but also an operator matrix $C_i$ so that "good" in "good person" can have an influence on the "person".

$$
	P = \mathit{W}(
	\begin{bmatrix}
	C_1\\
	C_2
	\end{bmatrix}
	)
$$

and the parent operator matrix is calculated based on the two constituents' operator matrices.

## Recursive Neural Tensor Network

$$
	p_i = c_1 \cdot \mathit{W_i} \cdot c_2^\intercal + p_i'
$$

$p_i$ comes from the [[#Syntactically-Untied RNN]].

