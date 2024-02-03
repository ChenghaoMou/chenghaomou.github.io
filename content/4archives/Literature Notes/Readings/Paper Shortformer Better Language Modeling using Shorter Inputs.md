---
aliases:
  - Second Pass
linter-yaml-title-alias: Second Pass
order: -1
tags: 
title: Second Pass
---

## Content

- [x] Title, abstract, and introduction
- [x] All headings
- [x] Conclusion
- [x] References

## Goals

- [x] What is the category of this paper

    Transformer

- [x] What is the context of this paper

    To make the transformer more efficient

- [x] What are the assumptions of this paper
    - The input length is not always the longer the better
    - Starting with short sequences and then moving onto longer sequences (curriculum learning) helps the model in terms of perplexity
- [x] What are the main contributions of this paper
    - Position infused attention (PIA) makes it possible to cache the hidden representations to allow attention work across non-overlapping sequences
    - Two-stage sequence-length-based curriculum learning improves the model's performance
- [x] Is the paper well-written

# Second Pass

## Content

- [x] Figures, diagrams, and other illustrations
- [x] Mark useful references

## Goals

- [x] Summarize the paper with supporting evidence
    - Two-stage training
        - short sequences (32-1536 in the paper) first and then long sequences (3072 in the paper) last
    - PIA
        - `L'` is the cached sequence length
        - Key + Pos: `[L' + {1, ..., L}, H]` the de facto context
        - Query + Pos: `[H, 1]` the current word
        - Value: `[L' + {1, ..., L}, H]`

    ```python
    weights = (Key + Pos) @ (Query + Pos)
    = [L' + {1, ..., L}, H] @ [H, 1]
    = [L' + {1, ..., L}, 1]

    weights = softmax(weights)

    value = weights * value
    ```

# Third Pass

## Content

- [ ] Virtually re-implement
- [ ] Identify and challenge every assumption

## Goals

- [ ] Reconstruct the entire structure
- [ ] Identify strong and weak points
- [ ] Identify implicit assumptions, missing citations, and issues with experimental and analytical techniques