---
order: -1
reference: 'https://www.youtube.com/watch?v=9oTHFx0Gg3Q&list=PLoROMvodv4rOhcuXMZkNm7j3fVwBBY42z&index=12'
tags: [subword, cs224n, course]
title: Lecture 12 Subword Models
updated: '10-02-2021 10:40'
---

- Human languages/sounds(phonemes) is not countinus even though our mouth is.
- Morphemes are meaningful subwords.
- Writing systems are different between languages. Sometimes one word in one language might be 4 in another. (Componds)
- Why we want a subword level model:
	- For understanding complex and rich morphology
	- For transliteration (e.g names)
	- Informal spelling on the internet

## Character-level Models

- Word embeddings from character embeddings
- Direct sequence modeling based on character embeddings

Characters might don't mean much by themselves. But large/deep models are capable of learning to remember higher level meaning from those character embeddings.

But one character model in English is not going to be useful for other languages, because the writing systems aren't the same.

### Disadvantages

- hard to train because of the increased sequenc length

## Subword Models

**Byte Pair Encoding**: Merge byte pairs as a new byte
**Wordpiece**: Tokenize a word within a word boundary
**Sentencepiece**: Tokenize an input with spaces being a special character

- Conv/Highway + char embeddings to learn word representations.

## Hybrid Models

Only use the character LSTM model when it is OOV, both in training and inference.
Because the this character model is a second-level model, it does not perform well on capturing context from word-level representations. (Translating names for example)

## fastText

A next-generation of [[Lecture 1 Overview#^c7f69e]]: n-gram augmented with boundary symbols for one word