---
aliases:
  - "Large Language Model: world models or surface statistics?"
url: https://thegradient.pub/othello/
author: Kenneth Li
publisher: The Gradient
date: 2023-01-21
tags: []
title: "Large Language Model- world models or surface statistics-"
---

## Highlights
<mark>At this point, it seems fair to conclude the crow is relying on more than surface statistics. It evidently has formed a model of the game it has been hearing about, one that humans can understand and even use to steer the crow's behavior. Of course, there's a lot the crow may be missing: what makes a good move, what it means to play a game, that winning makes you happy, that you once made bad moves on purpose to cheer up your friend, and so on. We make no comment on whether the crow “understands” what it hears or is in any sense “intelligent”. We can say, however, that it has developed an interpretable (compared to in the crow’s head) and controllable (can be changed with purpose) representation of the game state.</mark>

<mark>One early work [7] probed sentence embeddings with 10 linguistic properties like tense, parsing tree depth, and top constituency. Later people found that syntax trees are embedded in the contextualized word embeddings of BERT models [8].</mark>

<mark>They suggest language models can develop world models for very simple concepts in their internal representations (layer-wise activations), such as color [9], direction [10], or track boolean states during synthetic tasks [11]. They found that the representations for different classes of these concepts are easier to separate compared to those from randomly-initialized models. By comparing probe accuracies from trained language models with the probe accuracies from randomly-initialized baseline, they conclude that the language models are at least picking up something about these properties.</mark>

<mark>This suggests that there exists a world model in the internal representation of a trained Othello-GPT. Now, what is its shape? Do these concepts organize themselves in the high-dimensional space with a geometry similar to their corresponding tiles on an Othello board?</mark>

<mark>We evaluate this by comparing the ground-truth post-intervention legal moves returned by the Othello engine and those returned by the model. It turns out that it achieves an average error of only 0.12 tiles. It shows that the world representations are more than probable from the internal activations of the language model, but are also directly used for prediction. This ties back to the prank in the parable where moving the seeds around can change how the crow thinks about the game and makes the next move prediction.</mark>

<mark>We first study the direction from internal activations to world representations. By training probes, we are able to predict world representations from the internal activations of Othello-GPT.</mark>

<mark>How is the other way around? We devised the intervention technique to change the internal activation so that it can represent a different world representation given by us. And we found this works concordantly with the higher layers of the language model—these layers can make next-move predictions solely based on the intervened internal activations without unwanted influence from the original input sequence. In this sense, we established a bidirectional mapping and opened the possibility of many applications, like the latent saliency map.</mark>

<mark>Putting these two links into the first flow chart, we’ve arrived at a deeply satisfying picture: two systems—a powerful yet black-box neural network and a human-understandable world model—not only predict consistently, but also share a unified mid-stage representation.</mark>

