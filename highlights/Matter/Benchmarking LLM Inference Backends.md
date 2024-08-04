---
url: https://bentoml.com/blog/benchmarking-llm-inference-backends
author: sherlockxu
publisher: bentoml.com
title: "Benchmarking LLM Inference Backends"
tags: []
created: 2024-07-29
modified: 2024-08-03
---

## Highlights

> Time to First Token (TTFT): Measures the time from when a request is sent to when the first token is generated, recorded in milliseconds. TTFT is important for applications requiring immediate feedback, such as interactive chatbots. Lower latency improves perceived performance and user satisfaction.

> Token Generation Rate: Assesses how many tokens the model generates per second during decoding, measured in tokens per second. The token generation rate is an indicator of the model's capacity to handle high loads. A higher rate suggests that the model can efficiently manage multiple requests and generate responses quickly, making it suitable for high-concurrency environments.

> For the Llama 3 8B model, LMDeploy consistently delivers low TTFT and the highest decoding speed across all user loads. Its ease of use is another significant advantage, as it can convert the model into TurboMind engine format on the fly, simplifying the deployment process. At the time of writing, LMDeploy offers limited support for models that utilize sliding window attention mechanisms, such as Mistral and Qwen 1.5.

> vLLM consistently maintains a low TTFT, even as user loads increase, making it suitable for scenarios where maintaining low latency is crucial. vLLM offers easy integration, extensive model support, and broad hardware compatibility, all backed by a robust open-source community.

> For the Llama 3 70B Q4 model, LMDeploy demonstrates impressive performance with the lowest TTFT across all user loads. It also maintains a high decoding speed, making it ideal for applications where both low latency and high throughput are essential. LMDeploy also stands out for its ease of use, as it can quickly convert models without the need for extensive setup or compilation, making it ideal for rapid deployment scenarios.

> vLLM manages to maintain a low TTFT even as user loads increase, and its ease of use can be a significant advantage for many users. However, at the time of writing, the backend's lack of optimization for AWQ quantization leads to less than optimal decoding performance for quantized models.

