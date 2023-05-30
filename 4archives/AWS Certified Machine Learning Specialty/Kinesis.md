---
order: -1
tags: [aws, kinesis]
title: Kinesis
---

Kinesis is an alternative to Kafka. It is great for processing, analyzing and transforming real-time streaming data.

## Kinesis Streams

- Good for general real-time streaming data
- Processed in shards/partitions
- Size limit: 1MB
- Retention limits: 1 to 365 days

## Kinesis Analytics

- Good for both real-time streaming and batched data
- Use case: ETL, metric generation, responsive analytic
- ML algorithms:
	- RANDOM_CUT_FOREST for online anomaly detection
	- HOTSPOTS for finding dense areas in the feature space

## Kinesis Firehose

- Data aggregation and exportation
- Batch writes to target destinations (S3(compression supported), Redshift, ElasticSearch, Splunk)
- Near real-time output because of the batching
- Automatic scaling

## Kinesis Video Streams

- Streaming data from cameras, DeepLens etc.
- One device, one stream
- Retention: 1 hour to 10 years

