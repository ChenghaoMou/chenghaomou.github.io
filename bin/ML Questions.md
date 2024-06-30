---
title: "ML Questions"
created: 2024-05-26
modified: 2024-06-27
tags:
  - flashcards
---

Pedro Tabacof: Staff Machine Learning Scientist

Sagar Joglekar: Machine Learning Scientist

Qs:

1. What is the most difficult challenge you are facing at Intercom? Are you working on the same track?
2. How do different working groups/tracks share learnings?

>[!INFO]
>What is it and when to use it? Can you give an example?
>What are the pros and cons?
>What the difference between this and that?

**What ML tools do you use**
?
1. data tools: blob storage, databases bigquery
2. model tools: sklearn, statsmodel, xgboost, catboost, pytorch, lightning, transformers, peft, setfit
3. serving: tensorrt, onnxruntime, optimum
4. tracking, monitoring: azure/mlflow, weights & biases, comet, grafana, azure monitor
5. versioning and management: git, DVC, poetry, conda
6. frameworks: spark, dask or ray,
7. platforms: GCP or Azure

**What is the difference between causation vs correlation?**
?
**Causation**: {{If A causes B, then whevener A happens, B will follow. Temporally, A must occur before B. A and B are correlated, and there is no other confounding variables to the could cause B.}}
**Correlation**: {{It simply means that two variables are related. Positive correlation means if one increases, the other one tends to increase as well. Negative correlation means if one increase, the other one decreases. However it does not imply causation.}}

**An example of the difference is** {{inflation, petrol price, and grocery price}}.

To prove causation, you need {{a well-designed experiment to remove or control confounding variables}}. Correlation can be easily estabilished.

**How to calculate correlation?**
?
Use Pearson correlation coefficient. It has a range {{[-1, 1]}}. It assumes normal distribution and linear relationship.

**What is Cohen's d?**
?
Cohen's d is a standardized effect size measure used to quantify the {{difference between two group means}}. It is calculated by dividing the mean difference between the two groups by the pooled standard deviation of the data. This measure helps to standardize the effect size by relating it to the variability in the data.

**Interpretation of Cohen's d**
?
Cohen's d is typically interpreted as follows:
- **Small effect size**: 𝑑=0.2
- **Medium effect size**: 𝑑=0.5
- **Large effect size**: 𝑑=0.8

**What is A/B testing?**
?
	1. baseline vs treatment
		1. non-existent vs new feature
		2. old feature vs new feature
		3. shadowing
	2. metrics and monitorining (new product or new feature)
	3. explicit metrics (biased) vs implicit metrics

**What if you can't do an A/B testing?**
?
1. Can we do an A/A testing instead? Shadow traffic for testing;
2. Recruit a small number of users for beta testing for early access to new features in exchange for feedback;

**What is the difference between effec size and significance?**
?
**Effect size** measures the {{magnitude or strength}} of an effect, while **statistical significance** indicates the likelihood that the observed effect is not due to chance.
**Effect size** is {{independent}} of sample size, while **statistical significance** is {{directly related}} to sample size. A large sample can lead to a statistically significant result even when the effect size is {{small}.
**Effect size** provides information about the practical importance of a finding, while **statistical significance** only indicates whether the null hypothesis can be rejected.
**Effect sizes** are typically reported using standardized measures like Cohen's d or Pearson's r, while **statistical significance** is denoted by p-values. Effect sizes allow comparing results across studies, while **p-values** are specific to a particular study and sample.

**Do you have any experience deploying ML in production? What technical challenges did you have?**
?
TODO

**What evaluation metrics did you use?**
?
	1. Precision, Recall, F1 (micro, macro, exact, fuzzy)
	2. Information retrieval metrics
		1. MRR $1/rank$
		2. NDCG
		3. Precision@K

**What is Mean Reciprocal Rank?**
?
The MRR is calculated as the mean of the reciprocal ranks for a set of queries $\frac{1}{Q}\sum_{i=1}^Q\frac{1}{rank_{i}}$. $rank_{i}$ is the rank of the first relevant result. The higher the rank, the larger the RR.
A higher MRR indicates better performance, as the system is more likely to return the correct answer at a higher rank. The reciprocal rank is used to emphasize the importance of the first correct answer, as it is more likely to be the most relevant result.

**What is Normalised Discounted Cumulative Gain?**
?
Normalized Discounted Cumulative Gain (nDCG) is a metric used to evaluate the effectiveness of ranking systems in information retrieval. It measures the quality of an ordered list of results by considering both the relevance of each result and its position in the list. The relevance of each result is typically measured using a graded relevance scale, where higher values indicate higher relevance.
It is calculated by $\text{NDCG}_p = \frac{\text{DCG}_p}{\text{IDCG}_p}$
The $\text{DCG}_p$ is calculated as: $\text{DCG}_p = \sum_{i=1}^{p} \frac{2^{\text{rel}_i} - 1}{\log_2(i+1)}$. The higher the position, the higher the weight $\frac{1}{\log_{2}(i + 1)}$. The $\text{IDCG}_p$ is calculated by perfect ordering of the results by descending relevance.
NDCG ranges from 0 to 1, with 1 indicating a perfect ranking that matches the ideal ranking. Higher values of NDCG indicate better ranking performance.

**What is the difference between logistic vs linear regression**
?
	1. **Output**: {{Linear regression predicts a continuous numerical outcome, while logistic regression predicts a categorical outcome (e.g. probability of an event occurring)}}
	2. **Relationship Modeling**: {{Linear regression models a linear relationship between variables, while logistic regression models the nonlinear relationship using a logistic/sigmoid function.}}
	3. **Optimization Method**: {{Linear regression uses the least squares method for optimization, while logistic regression uses maximum likelihood estimation}}
	4. **Robustness**: {{Logistic regression is more robust to outliers compared to linear regression}}
	5. **Interpretation**: {{In linear regression, coefficients represent the direct change in the dependent variable. In logistic regression, coefficients represent the change in the log-odds of the dependent variable}}
	6. **Computational Speed**: {{Logistic regression is generally slower than linear regression due to its iterative optimization process}}

**What is the difference between overfitting vs underfitting?**
?
**Overfitting**: model learns the patterns in training data perfectly yet is not able to generate beyond the training data. {{Low}} bias but {{ high}} variance. {{Low}} train error and {{high}} test error.
**Underfitting**: model learns little from the training data and perform poorly on the all data. {{High}} bias and {{low}} variance. {{High}} training and testing errors.

 **Define TP, FP, TN, FN**
 ?
	1. TP: Groud truth is positive and the model prediction is positive
	2. FP: Groud truth is negative, pred = positive
	3. TN: G=negative, P=positive
	4. FN: G=positive, P=negative

**What is Precision, Recall?**
?
**Precision**: $\frac{TP}{TP + FP}$
**Recall/sensitivity**: $\frac{TP}{TP + FN}$
**TPR**: $\frac{TP}{TP+FN}$
**FPR**: $\frac{FP}{FP + TN}$

**What is Receiver Operationg Characteristic Curve?**
?
A graphical plot that represents the {{true positive rate (TPR)}} against the {{false positive rate (FPR)}} at various threshold settings. A high {{Aare under the curve (AUC)}} indicates a better model, regardless of the threshold. It is agnostic to class imbalance.
A random choice baseline would have a straightline from (0, 0) to (1, 1). It {{does not bias towards}} rare classes.

**What is Precision-Recall Curve?**
?
Evaluate the trade-off between precision and recall. Can be biased towards positives.

**What is Akaike Information Criterion?**
?
Goal: goodness-of-fit for choosing statistical models.
Intuition: Lower is better. If the performance is the same, prefer the one with fewer parameters.

 **ML types use cases**
 ?
	1. Supervised learning (In context learning)
	2. Unsupervised
	3. Reinforcement learning
	4. semisupervised

**Observability**
?
	1. What are you monitoring?
	2. Data shifts: distribution change
	3. Errors or warnings: alerts for failures
	4. Throughput, processing time, accumulated counts
	5. Hardware utilitization: GPU usage

**Describe a time where you have to come up with a new algorithm**
?
DLA problem. Not really a new algorithm, but a workflow of different models and algorithms to solve a complex question.
	1. Situation
	2. how to go about
	3. evaluate
	4. simple solution first
	5. necessary
	6. though process
	7. results

**Why self-driving car pros and cons, explain like I am 5**
?
- Pros:
		- Self-driving cars are safer because they don't get distracted or make mistakes like humans do. They can see all around and react faster to avoid accidents
		- They can drive more efficiently, communicate with each other, and reduce traffic jams. This saves time and gas
		- Self-driving cars help people who can't drive, like the elderly or disabled, to get around more easily and independently
- Cons:
		- Self-driving cars are very expensive to make and require a lot of special technology
		- They need to be able to communicate with each other to work best. If there are only a few on the road, they won't be as effective
		- People are worried about trusting a computer to drive their car. What if it breaks down or gets hacked?
		- Some jobs like taxi and truck driving could be lost if self-driving cars become common

**Ensembles: pros and cons explain like I am 5**
?
- Pros
	1. **Higher Predictive Accuracy**: Ensemble methods often achieve higher predictive accuracy compared to individual models by combining diverse models to make better decisions[3][4][5].
	2. **Handling Complex Data**: Ensembles are useful when dealing with both linear and non-linear data, as different models can be combined to handle various types of data effectively[4][5].
	3. **Bias/Variance Reduction**: Ensemble methods can reduce bias and variance, leading to models that are less likely to be underfitted or overfitted
	4. **Stability and Noise Reduction**: Ensembles are less noisy and more stable, providing robust predictions even in the presence of noisy data
- Cons
	1. **Interpretability**: Ensembles can be challenging to interpret, making it difficult to explain the reasoning behind the predictions, which can be a drawback in some applications[3][4].
	2. **Learning Curve**: The art of ensembling is complex and requires expertise. Incorrect selection of models can lead to lower predictive accuracy compared to individual models[3][4].
	3. **Resource Intensive**: Ensembling can be expensive in terms of time and space, as it involves training and storing multiple models, which can impact the return on investment (ROI)[3][4].
	4. **Risk of Overfitting**: Ensembles can be prone to overfitting if not carefully managed, especially if the base models are too weak or too strong, or if the aggregation method is not appropriately chosen
In summary, while ensembling in machine learning offers improved accuracy, stability, and robustness, it also comes with challenges related to interpretability, resource requirements, and the risk of overfitting. Understanding these pros and cons is crucial for effectively leveraging ensemble methods in machine learning applications.

**What is the bias and variance?**
?
	1. Bias: fit of the training data
	2. Variance: how likely the prediction will change if the input is different
	3. Low bias and high variance: overfitting, but if your data is large, it could be fine
		1. ensemble like boosting to reduce the variance
		2. regularization methods to reduce overfitting
		3. feature selection or dimentionality reduction
	4. High bias and low variance: underfitting
		1. Add more variables, more layers, more depth, more complex models
		2. feature extraction
		3. more data
		4. reduce regularization
		5. increasing iterations or training time

 **How do you detect outliers: scenarios and solutions**
 ?
	**Z-Score or Standard Deviation Method**: Calculate the z-score (number of standard deviations from the mean) for each data point. Points with z-scores beyond a threshold (e.g. +/- 3) are considered outliers.
	**Interquartile Range (IQR) Method**: Calculate the IQR (Q3 - Q1) and flag points below Q1 - 1.5*IQR or above Q3 + 1.5*IQR as outliers.
	**K-Nearest Neighbors (KNN)**: Compute the distance of each point to its kth nearest neighbor. Points with an abnormally large distance are flagged as outliers.
	**Distance from the Mean**: Calculate the Euclidean/Mahalanobis distance of each point from the mean of the data. Points beyond a threshold distance are marked as outliers.
	**Local Outlier Factor (LOF)**: Compute the local density deviation of a point with respect to its neighbors. Points with significantly lower density than neighbors are outliers.
	**DBSCAN Clustering**: Cluster the data using DBSCAN which separates out low-density outlier regions that fail to form dense clusters.
	**Isolation Forest**: This tree-based ensemble method isolates outliers by randomly selecting features and splitting values.
	**One-Class SVM**: Train a one-class SVM to learn the region describing the majority of data, with instances far from this region flagged as outliers.
	The choice of method depends on the dataset characteristics like number of dimensions, data distribution, and the nature of outliers present. It's often useful to try multiple methods and use domain knowledge to interpret the results.

**How does one-class SVM work?**
?
It tries to create a hyperplane or hypersphere to encapsulate the normal data points.

**How do you detect data shift?**
?
1. Statistical Hypothesis Testing: a common approach to compare the distribution of the training data and inference data. Two-sample tests such as {{Kolmogorov-Smirnov test}} or the {{Kullback-Leibler divergence}}, compare the distributions of two samples to determine if they come from the same distribution. Dimensionality reduction can be used before applying tests to make it more efficient.
2. Monitoring: certain online metrics can be monitor to help detect drifts. Significant changes in those metrics may indicate a data drift. In addition to metrics, {{summary statistics like mean and variance}} can also be used for comparision. Additionally, {{visualisation like scatter plot, histograms}} can be used to inspect a change. Model-based reconstruction loss differences can also be used to identify data distribution change.

**What is outlier detection?**
?
Outlier detection, also known as anomaly detection, focuses on identifying data points that deviate significantly from the majority of the data within a given dataset. These outliers can arise due to various reasons such as measurement errors, data corruption, or they may represent rare but genuine observations.
Techniques:
- **Z-Score**: Measures how many standard deviations an observation is from the mean.
- **IQR (Interquartile Range) Score**: Identifies outliers based on the spread of the middle 50% of the data. This can be done with boxplot too.
- **DBSCAN**: Density-based clustering algorithm that treats low-density points as outliers.
- **Isolation Forest**: Ensemble method that isolates anomalies by randomly selecting features and splitting values

**What is novelty detection?**
?
Novelty detection, on the other hand, is concerned with identifying new or previously unseen data points that were not present in the training dataset. Unlike outlier detection, which deals with anomalies within the existing data, novelty detection aims to discover new patterns or behaviors that emerge over time.

**What is the difference between outlier and novelty detection?**
?
- **Context**: Outlier detection is used to identify anomalies within the existing dataset, while novelty detection identifies new patterns or data points that were not part of the training data.
- **Purpose**: Outlier detection aims to improve data quality and analysis accuracy by handling anomalies. Novelty detection helps systems adapt to new conditions and discover new trends or behaviors.
- **Application**: Outlier detection is often used in data cleaning, fraud detection, and error identification. Novelty detection is crucial in dynamic environments like cybersecurity, finance, and scientific research where new patterns can emerge over time

**What is the difference between frequentist and Bayes**
?
	The key differences between the frequentist and Bayesian approaches to statistics are:
	## Interpretation of Probability
	**Frequentist**: Probabilities are interpreted as long-run relative frequencies of outcomes in repeated trials under identical conditions. The probability of an event is the limit of its relative frequency as the number of trials goes to infinity.[
	**Bayesian**: Probabilities represent degrees of belief or confidence in the occurrence of an event, given the available information or data. Probabilities are subjective and can be updated as new information becomes available using Bayes' theorem.
	## Treatment of Parameters
	**Frequentist**: Population parameters (e.g. means, proportions) are treated as fixed but unknown constants. Inferences are made about these parameters based on sample data.[1][3]
	**Bayesian**: Parameters are treated as random variables with an associated probability distribution, known as the prior distribution, which represents the initial belief about the parameters before observing data.
	## Prior Information
	**Frequentist**: Does not explicitly incorporate prior information or beliefs about parameters into the analysis.
	**Bayesian**: Explicitly incorporates prior information or beliefs about parameters through the prior distribution. As data is observed, the prior is updated to the posterior distribution using Bayes' theorem.
	## Hypothesis Testing
	**Frequentist**: Tests hypotheses by computing p-values and comparing them to a significance level. Rejects or fails to reject the null hypothesis.
	**Bayesian**: Compares the posterior probabilities of competing hypotheses or models. Provides the probability of hypotheses being true given the data.
	## Interpretation
	**Frequentist**: Conclusions are made about whether results are statistically significant or not based on p-values.
	**Bayesian**: Conclusions are probabilistic statements about parameter values or hypotheses based on the posterior distribution.
	The choice between frequentist and Bayesian methods depends on the research question, availability of prior information, and philosophical preferences about interpreting probabilities. Bayesian methods allow incorporating prior knowledge but require specifying priors, while frequentist methods do not use priors but conclusions can be less intuitive.

**What are the common dimension reduction methods?**
?
The process of reducing the dimensionality of data involves transforming data from a {{high-dimensional space}} to a {{low-dimensional space}}, ensuring the new representation retains meaningful properties of the original.
1. Linear Techniques
	**Principal Component Analysis (PCA) w/ linear kernel**: It finds a lower-dimensional subspace that {{maximizes the variance}} in the data by computing the eigenvectors of the covariance matrix and the eigenvalue is the importance of the principle component/eigenvector.
	**Linear Discriminant Analysis (LDA)**: LDA is a supervised technique that finds a linear combination of features that {{maximizes the separability between classes}}. It is commonly used for dimensionality reduction before classification.
	**Truncated Singular Value Decomposition (SVD)**: SVD is a matrix factorization technique that can be used to decompose a matric into three other matrices. Truncated SVD can be used to reduce the features by only keeping top {{singular values}}, which capture the most significant information.
2. Non-Linear Techniques
	**Kernel PCA**: PCA with a nonlinear kernel.
	**Isomap**: Isomap is a non-linear technique that computes geodesic distances on a weighted graph representing the data, preserving geodesic distances in the low-dimensional representation.
	**Locally Linear Embedding (LLE)**: LLE finds a low-dimensional representation by preserving local neighborhood identities in the high-dimensional space.
	**t-SNE (t-Distributed Stochastic Neighbor Embedding)**: t-SNE is a powerful non-linear technique that maps high-dimensional data to a lower dimension while preserving local and global structure.
	**UMAP (Uniform Manifold Approximation and Projection)**: UMAP is a more recent manifold learning technique that provides good performance and faster runtimes compared to t-SNE.

**How does UMAP work?**
?
At a high-level: first, it constructs a graph with edges representing the similarity between data points in the high-dimensional space. Then, it optimise a low-dimentional graph using SGD to preserve both local and global patterns.

**What is a chi-squared test?**
?
A chi-squared test (also known as a chi-square or χ² test) is a statistical hypothesis test used to determine if there is a significant association between categorical variables.

**What is null hypothesis?**
?
The null hypothesis (denoted as H0​) is a fundamental concept in statistical hypothesis testing. It represents a default position that there is no effect or no difference, and it serves as the statement that is tested against the alternative hypothesis (H1​).

**What is p-value?**
?
The p-value is the probability of obtaining a result equal to or more extreme than what was actually observed, under the assumption that the null hypothesis is correct.