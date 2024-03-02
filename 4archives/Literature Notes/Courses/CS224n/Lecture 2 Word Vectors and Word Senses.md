---
order: -1
tags: 
title: Lecture 2 Word Vectors and Word Senses
---

## 1. Recap on Word2vec

- Words tend to have a high similarity with high-frequency words (of, the, and)
- Words can be similar to others in many different directions in high-dimension space

## 2. Optimization: Gradient Descent

$\alpha$: learning rate

$$\theta^{\mbox{new}} = \theta^{\mbox{old}} - \alpha\triangledown_\theta J(\theta)$$

### Stochastic Gradient Descent

Use mini-batch to do the calculation instead of updating the network after one whole pass.

### Details

- Two matrices to simlify the calculation.
- Two variants: Skip-gram (context words -> center word) and Continous Bag of Words (center word -> context words)
- **Negative sampling** instead of naïve softmax

## 3. Co-occurrence

- sparse and large matrix -> reduce the dimensionality -> SVD
- Hacks:
	- Ramped/weighted windows
	- Function words are capped
	- Use Perason Correlation instead of counts

| Count based              | Direct prediction          |
| ------------------------ | -------------------------- |
| LSA, HAL                 | Skip-gram, CBOW, ...       |
| Fast training            | Scale with corpus size     |
| Efficient usage of stats | Inefficient usage of stats |
| Word similarity          | Beyond word similarity     |
| Issues with large counts | Transferability            |                         |                            |

## 4. GloVe

   $P(x|\mbox{ice})$ should be larger with $x=\mbox{solid}$ and $x=\mbox{water}$, $P(x|\mbox{steam})$ should be larger with $x=\mbox{gas}$ and $x=\mbox{water}$. Then $\frac{P(x|\mbox{ice})}{P(x|\mbox{steam})}$ would be high when $x=\mbox{solid}$ or low when $x=\mbox{gas}$ .

   If we assume $w_i \cdot w_j = \log P(i|j)$, then the $w_x \cdot (w_a - w_b) = \log \frac{P(x|a)}{P(x|b)}$

## 5. Evaluation

| Intrinsic                              | Extrinsic                           |
| -------------------------------------- | ----------------------------------- |
| evaluation on a subtask                | evaluation on a real task           |
| fast to compute                        | difficult to compute                |
| understanding the system               | understanding changes to the system |
| not understanding the real performance | not understanding the system        |                                       |                                     |

### Intrinsic Evaluations

- analogies
- word similarity
- word sense
- disambiguity