---
title: "Machine Learning Interviews"
author: Susan Shu Chang
created: 2024-06-22
modified: 2024-07-04
---

# Machine Learning Interviews

[Apple Books Link](ibooks://assetid/D59C2DBFD79316B27FC7FEBC91F611C0)

> When faced with real interviews, it’s easy to freeze up and forget the STAR method or hero’s journey. I recommend practicing with friends, and some peers have had good experience practicing on platforms like Pramp, which pairs you with a stranger for mock interviews (there are both free and paid options).

> Clarify with your interviewer when in doubt.
As with the previous point, this is to make sure you’re not going down a rabbit hole when you’re unsure about something.

> NDCG is calculated via the sum of the predicted relevance scores (DCG, or discounted cumulative gain) divided by the IDCG (ideal discounted cumulative gain). This is then normalized so that the result is between 0 and 1.

> ML optimizers

> Using implicit feedback within a recommender system can help alleviate some common biases as well; people are more likely to leave an explicit review if they either loved or hated the product (and you know people are more vocal if something went wrong).

> Quickly summarize your interpretation of the question for the interviewer.
This can help check if you’re understanding the question correctly and gives the interviewer a chance to correct any misunderstandings before you spend a lot of time answering the wrong thing.

> ML loss functions

> Ranking metrics

> Normalized discounted cumulative gain (NDCG)

> Slice-based evaluation
Test your model performance on various slices, or subgroups, of the test split.

> Make sure to pause occasionally during a longer answer or explanation.
Don’t ramble on forever without giving your interviewer a moment to interject with questions.

> Precision at K

> However, if you use the mean of all the available data before splitting it into training, validation, and test sets, then it inevitably captures traits of the test set. Hence, the ML model will be trained on imputed data that contains latent information about the test set, which sometimes causes the accuracy to increase for no reason other than the way the data was imputed. This is called data leakage. If you want to use imputation, then be sure to split the training, validation, and test sets first, and impute missing values in the training set with the summary statistics of the training set only. If you don’t mention this in the interview or explain it correctly, that’s a pretty obvious oversight in your ML model, unless you can defend your reasoning.

> Invariance tests
Test if an ML model performs consistently in different conditions

> Mean reciprocal rank (MRR)

> Perturbation tests7
Introduce some noise or transform the test data

> When answering ML interview questions, take a second to confirm the scope of the question. In other words, if the question is asking only for a definition of logistic regression, don’t go on a tangent about various other techniques. If the question is open-ended, you can confirm whether the interviewer is asking for something specific.

> Using ROC can help us determine the trade-off in the true positive rate and the false positive rate at various thresholds, and we can then decide what is the optimal threshold to use.

