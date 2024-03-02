---
order: -1
tags: [aws, ai]
title: High Level ML Services
---

## AWS Comprehend

- NLP and text analytics
- NER, Sentiment, Syntax, Language, Topics, and Classification

## AWS Translate

- Custom terminology

## AWS Transcribe

- Audio file or streaming
- Speaker Identification
- Channel Identification
- Custom Vocabulary

## AWS Polly

- Text-to-speech
- Custom lexicons
- Speech Synthesis Markup Language
- Speech Marks (animation)

## AWS Rekognition

- Object and scene detection
- Image moderation
- Facial analysis
- Celebrity recognition
- Face comparison
- Text in image
- Video analysis

Images from S3 or request body, video comes from [[Kinesis]].

## AWS Forecast

- time series prediction
- auto ML included
- dataset groups, predictors, and forecast

## AWS Lex

- chat bot engine
- intent detection and slot-filling

## AWS Personalize

- recommender engine
- data – items, users, or interactions – from s3 or API integration + schema (Avro)
- get recommendations `USER_PERSONALIZATION`, similar items `RELATED_ITEMS`, or rankings `PERSONALIZED_RANKING`
- real-time or batch
- new users and new items
- contextual recommendations based on the device, time or location
- solutions:
	- training
	- objectives
	- hyper-parameter optimization (HPO)
		- `hidden_dimension` for both user and item (id or metadata)
		- `bptt`
		- `recency_mask`
		- `min/max_user_history_length_percentile`
		- `exploration_item_age_cut_off`
		- `exporation_weight`: relevancy
- campaign for deployment

### Tricks for Maintaining Relevance

1. keep the dataset up to date
2. feed real-time interactions
3. re-train frequently

### Security

1. no data between websites
2. encryption at rest and in transit

### Pricing

1. data ingestion: per GB
2. training: per training hour
3. inference: per TPS-hours
4. batch inference: by user or by item

## Misc

- AWS Textract
- AWS DeepRacer
- AWS DeepLens
- AWS Lookout: device or equipment monitoring
- AWS Monitron: end to end system for monitoring, including the sensors
- TorchServe and AWS Neuron (Inferentia chip)
- AWS Panorama: CV at the edge device
- AWS DeepComposer
- AWS Fraud Detector
- AWS CodeGuru
- Contact Lens for Amazon Connect
- AWS Kendra
- Augmented AI: human in the loop