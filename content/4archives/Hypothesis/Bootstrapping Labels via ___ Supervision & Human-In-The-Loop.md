---
doc_type: hypothesis-highlights
order: -1
tags: [todo]
title: Bootstrapping Labels via ___ Supervision & Human-In-The-Loop
url: 'https://eugeneyan.com/writing/bootstrapping-data-labels/'
---

# Bootstrapping Labels via ___ Supervision & Human-In-The-Loop

## Metadata

- Author: [eugeneyan.com]()
- Title: Bootstrapping Labels via ___ Supervision & Human-In-The-Loop
- Reference: https://eugeneyan.com/writing/bootstrapping-data-labels/
- Category: #article

## Page Notes

## Highlights

- In active learning, we select the most “interesting” unlabeled samples for labeling via human-in-the-loop (HITL). One way to identify such samples is uncertainty sampling, where samples with the highest uncertainty in model predictions are selected. — [Updated on 2021-09-24 13:08:44](https://hyp.is/OBS_Zh1zEeyCOvN7RCDUJA/eugeneyan.com/writing/bootstrapping-data-labels/) — Group: #Public

- DoorDash shared some tips to develop good labeling guidelines for tags, such as: Ensure tags are mutually exclusive (i.e., no overlap): This allows annotators to move on if a sample already has a tag and reduces annotation volume. Partition taxonomy at the top level by distinct attributes (e.g., regional cuisine style, flavor, etc.): This allows parallelization of annotation tasks. Ensure there’s a tag for “Other” at each level: This allows you to revisit the “Other” tags to improve granularity in future (instead of having to go through all tags). Ensure tags are objective: Tags such as “popular” or “convenient” are subjective and can change over time. — [Updated on 2021-09-24 13:18:56](https://hyp.is/pWIOsB10EeycmNtxiozwOg/eugeneyan.com/writing/bootstrapping-data-labels/) — Group: #Public

- In the earliest stage, we can adopt weak supervision. This can include labeling functions via keyword-based regex, statistical aggregations, knowledge graphs, user segmentation, etc. — [Updated on 2021-09-24 13:20:42](https://hyp.is/5IFzzh10EeyzRKMRjuE5dg/eugeneyan.com/writing/bootstrapping-data-labels/) — Group: #Public

- With some seed data, we can then adopt semi-supervised learning. We can train a high precision model to predict on unlabeled samples, then add the pseudo-labels with the highest confidence to the training data. Or we can try active learning (e.g., nearest neighbors + uncertainty sampling/information density) to identify labels with the highest uncertainty for HITL before adding it to the dataset. — [Updated on 2021-09-24 13:20:56](https://hyp.is/7OLfJh10EeywYuPit-6flQ/eugeneyan.com/writing/bootstrapping-data-labels/) — Group: #Public

- Finally, in the late stage, our machine learning systems and policies would have matured. Here’s where we start to get a stream of good labels for model training, and can try more sophisticated models that require a large number of labels. — [Updated on 2021-09-24 13:21:12](https://hyp.is/9gMHyh10EeyoQePM8ug4kQ/eugeneyan.com/writing/bootstrapping-data-labels/) — Group: #Public

- Even in mature ML systems, we might not be able to use the labels immediately as they can change over time. — [Updated on 2021-09-24 13:21:26](https://hyp.is/_rlvgB10EeydVU_lrdCtlw/eugeneyan.com/writing/bootstrapping-data-labels/) — Group: #Public

- Using premature or incorrect labels can lead to vicious cycle feedback loops, where the model learns from invalid labels and makes prediction errors that exacerbate ground truth errors. — [Updated on 2021-09-24 13:21:42](https://hyp.is/CAFmuh11Eey1Al9kB4cI-g/eugeneyan.com/writing/bootstrapping-data-labels/) — Group: #Public


---

# Bootstrapping Labels via ___ Supervision & Human-In-The-Loop

---

# Bootstrapping Labels via ___ Supervision & Human-In-The-Loop
# Bootstrapping Labels via ___ Supervision & Human-In-The-Loop
# Bootstrapping Labels via ___ Supervision & Human-In-The-Loop

