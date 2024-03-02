---
order: -1
tags: [sagemaker]
title: 5 Implementation and Operations
---

## SageMaker + Docker

- All models are hosted with Docker containers
	- Tensorflow docker image is not automatically distributed. Use [GitHub - horovod/horovod: Distributed training framework for TensorFlow, Keras, PyTorch, and Apache MXNet.](https://github.com/horovod/horovod) for this.
	- Including the inference code and model artifacts
- [NGINX](https://www.nginx.com/) + [Flask](https://flask.palletsprojects.com/en/2.0.x/) + [Gunicorn](https://gunicorn.org/) + [uWSGI](https://uwsgi-docs.readthedocs.io/en/latest/)
- Environment variables
	- `SAGEMAKER_PROGRAM`
- `Production Variants` for A/B testing, with varying weights

## SageMaker Neo

- Compiling code for edge devices.
- AWS IoT Greengrass
	- Deploying models to the actual edge device

## SageMaker Security

- Identity and Access Management (IAM) with minimum permissions
- MFA
- SSL/TLS
- CloudTrail to log activities for auditing (CloudWatch is for monitoring)
- Encryption
- PII

- At rest data encryption:
	- KMS
	- S3 [[S3#^8a6482]]
- In transit
	- Encrypted communication (inter container traffic communication)
	- IAM
	- TLS/SSL

## SageMaker VPC

- When network is disabled:
	- Use PrivateLink or NAT Gateway to access S3