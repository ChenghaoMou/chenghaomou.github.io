---
order: -1
tags: 
title: Lecture 5 Dependency Parsing
---

## 1. Syntactic Structure

constituency = phrase structure grammar = context-free grammars

**Phrase structure** organizes words into nested constituents.
**Dependency structure** shows words depend on which other words

Word embeddings carry word meanings, but it won't go very far. In order to understand bigger concepts, it is important understand the sentence structure that glues words together.

In programming languages, the use of `else` is strictly interpreted deterministically. But it is not the same with natural language, it inherits ambiguity.

- Prepositional phrase attachment ambiguity
	- San Jose cops kill man **with knife**
	- PP attachment multplies (exponentially) as the number of PP grows (Catalan numbers)
- Coordination scope ambiguity
	- Shuttle veteran **and** longtime NASA executive **Fred Gregoy** appointed to board
	- No heart, cognitive **issues**
- Adjectival Modifier Ambiguity
- Verb Phrase attachment ambiguity
	- Mutilated body washes up on _Rio beach_ **to be used for Olympics beach volleyball**

## 2. Dependency Grammar and TreeBanks

- head -> dependent
- Add a ROOT node
- Each word is either a dependent of something or a ROOT

This makes the dependencies a tree

## 3. Transition-based Dependency Parsing

shift and reduce

## 4. Neural Dependency Parsing

ML issues:
- features are sparse
- features are incomplete
- features are expensive

Use distributed representations