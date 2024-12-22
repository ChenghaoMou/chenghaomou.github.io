---
aliases:
  - "Simul-Whisper: Attention-Guided Streaming Whisper with Truncation Detection"
authors: "Haoyu Wang, Guoqiang Hu, Guodong Lin, Wei-Qiang Zhang, Jian Li"
date: '2024-10-12 19:45:12'
tags:
  - todo
title: "Simul-Whisper: Attention-Guided Streaming Whisper with Truncation Detection"
url: "https://arxiv.org/abs/2406.10052v1"
created: 2024-02-03
modified: 2024-10-13
---

# Simul-Whisper: Attention-Guided Streaming Whisper with Truncation Detection

## Abstract

As a robust and large-scale multilingual speech recognition model, Whisper has demonstrated impressive results in many low-resource and out-of-distribution scenarios. However, its encoder-decoder structure hinders its application to streaming speech recognition. In this paper, we introduce Simul-Whisper, which uses the time alignment embedded in Whisper's cross-attention to guide auto-regressive decoding and achieve chunk-based streaming ASR without any fine-tuning of the pre-trained model. Furthermore, we observe the negative effect of the truncated words at the chunk boundaries on the decoding results and propose an integrate-and-fire-based truncation detection model to address this issue. Experiments on multiple languages and Whisper architectures show that Simul-Whisper achieves an average absolute word error rate degradation of only 1.46% at a chunk size of 1 second, which significantly outperforms the current state-of-the-art baseline.

> Our training objective is to ensure that the number of firings of the IF neurons matches the number of words in the audio. [(p. 3)](zotero://open-pdf/library/items/A33YDGZ4?page=3)

> Since Whisper pads the input to 30 seconds during inference, the last frame of the encoder features is actually the transition point from speech content to silent padding, where the IF neuron always fires. Therefore, to ensure the correctness of the IF results, we discard the last frame of the encoder features. [(p. 3)](zotero://open-pdf/library/items/A33YDGZ4?page=3)

> On the other hand, the Simul-Whisper’s latency is generally 1 to 2 times the chunk length. This is because most tokens are either generated after the current chunk (1-chunk latency) or delayed until the next chunk (2-chunk latency). Finally, although TDM slightly increases computation time, it achieves less performance degradation for the same computation-aware latency, demonstrating its effectiveness. [(p. 4)](zotero://open-pdf/library/items/A33YDGZ4?page=4)

```
@misc{Wang_Hu_Lin_Zhang_Li_2024, title={Simul-Whisper: Attention-Guided Streaming Whisper with Truncation Detection}, url={[https://arxiv.org/abs/2406.10052v1](https://arxiv.org/abs/2406.10052v1)}, abstractNote={As a robust and large-scale multilingual speech recognition model, Whisper has demonstrated impressive results in many low-resource and out-of-distribution scenarios. However, its encoder-decoder structure hinders its application to streaming speech recognition. In this paper, we introduce Simul-Whisper, which uses the time alignment embedded in Whisper’s cross-attention to guide auto-regressive decoding and achieve chunk-based streaming ASR without any fine-tuning of the pre-trained model. Furthermore, we observe the negative effect of the truncated words at the chunk boundaries on the decoding results and propose an integrate-and-fire-based truncation detection model to address this issue. Experiments on multiple languages and Whisper architectures show that Simul-Whisper achieves an average absolute word error rate degradation of only 1.46% at a chunk size of 1 second, which significantly outperforms the current state-of-the-art baseline.}, journal={arXiv.org}, author={Wang, Haoyu and Hu, Guoqiang and Lin, Guodong and Zhang, Wei-Qiang and Li, Jian}, year={2024}, month=jun, language={en} }
```