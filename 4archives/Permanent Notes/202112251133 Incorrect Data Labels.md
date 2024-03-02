---
order: -1
tags: [data, annotation, machine learning]
title: 202112251133 Incorrect Data Labels
---

Machine learning models are robust even when there is **random errors/noise** in the training set. But it is less so when they are **systematic errors/bias**.

When there are incorrect labels in the validation or test set, it is important to evaluate the percentage of those correctable errors. If the errors are worth the efforts more so than the in-correctable examples (actual mistakes from the model), then:
1. Find out what went wrong
2. Apply the fix to both the validation and test sets