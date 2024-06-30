---
title: "Machine Learning System Design Interview"
created: 2024-06-27
modified: 2024-06-29
---

## 1. Problem statement

Convert the question into a **machine learning modelling problem** by asking clarification questions.

> [!tip]
> Some aspects of the a system might be too big to dive into in the beginning such as scaling and throughput. It is recommended to just note down the general consideration to control the scope and revisit them when needed.

## 2. Metrics

What are the **offline** and **online** metrics?

*Online metrics* consider the entire system as a whole and they are aligned more with business values. To propose suitable online metrics, you will need some level of understanding of the customer pain points and the goal of your solution. Common metrics can be successful conversion, resolution, or engagement.

Offline metircs are used to evaluate individual components and are aligned with the type of machine learning problem you are solving. It can be used to compare the models quickly and see which one gives you the best result. Common metrics can be precision, recall, and F1.

## 3. Initial Architecture Components

Start with a data flow diagram to showcase all key components in the system, indicating:

- Actors including the **user**, the direct and indirect **input** and **output** (e.g. movie, query, or context/background), and the **model**;
- Transition: how data and interactions are flowed in the system;

## 4. Feature Engineering

Based on the requirements and the architecture chart, summarise the feature you would use for model training and inference. This is where you extend the input and output from the previous diagram and outline the features you would like to use or compute.

## 5. Training Data Generation

To fulfil a truly life-cycle of a machine learning system, you would need to come with ongoing or periodical data collection components to impove your model constantly. Consider following aspects for training data generation:

1. Human annotation: expensive (time and cost) but accurate;
2. Pseudo annotation with existing data such as telemetries and direct user feedback; You might need to release a baseline/random feature to collect;

## 6. Modelling

Explain your modelling choice based on the requirements and feature sets:

1. Use **funnel method** to come up with layers where you gradually move from a large set of data to a more precise set for the next step in the funnel; Cheap and quick models at first, expensive and slow models at last;
3. Scaling, latency, or throughput might add additional requirements;

## 7. Deployment and A/B Testing

- Retraining frequency: Online learning vs offline learning;
- How A/B testing should be carried out.