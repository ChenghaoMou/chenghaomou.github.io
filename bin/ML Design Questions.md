---
title: "Workflow"
created: 2024-05-26
modified: 2024-06-27
aliases:
  - Workflow
---

Pratik Bothra: Staff engineer (8 years)

Nuno Teixeira: Senior Product Engineer

1. How do you collaborate with MLE or MLS?
2. Is there anything you can share regarding career growth at Intercom?

>[!caution]
>## Shape the solution

We know the value of our work and we design solutions that deliver it efficiently.

> ## Keep it simple

The more complex, the longer it takes to move. Simple solutions are simply better.

> ## Be technically conservative

We don’t need to reinvent the wheel. We just need the right wheel at the right time.

> ## Work with positivity, pride, and love

Engineering is a collaborative process. Great things are only built together.

> ## Build in small steps

Large changes are difficult—we deliver complex changes in small steps instead.

# Workflow

1. Clarification on the use case
	1. Maybe use a simple interaction flow
2. Scope
	1. Metrics
		1. Offline (MRR, nDCG, precision@k, recall@K, F1@K)
		2. Online (A/B testing, business metrics)
	2. Functional requirements
		1. Input
		2. Output
		3. Training (update/retrain schedule, offline vs online)
		4. Inference
		5. data (feedback + training data, annotated data, open source datasets)
		5. feature (sensitive information, security/legal)
		6. Model options: baseline vs model
		7. Service options: vector database search engine, reranker, retriever
	3. None functional requirements
		1. monitoring, alerting, debugging
		2. analytics
		3. scaling, stability, availability SLA
	4. Calculation and estimation
		1. assumption
		2. data size
		3. cost
		4. bandwidth or scale
		5. support
		6. timeline
	5. Scope buffer for nice-to-have
	6. Questions: cold-start, sparsity, convention or existing service patterns,
3. High-level design
4. Scale the design
5. Summary: what would I change if I can start over?