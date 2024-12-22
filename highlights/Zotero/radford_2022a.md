---
aliases:
  - Robust Speech Recognition via Large-Scale Weak Supervision
authors: "Alec Radford, Jong Wook Kim, Tao Xu, Greg Brockman, Christine McLeavey, Ilya Sutskever"
date: '2024-10-12 19:22:01'
tags:
  - todo
title: "Robust Speech Recognition via Large-Scale Weak Supervision"
url: "http://arxiv.org/abs/2212.04356"
created: 2024-02-03
modified: 2024-10-13
---

# Robust Speech Recognition via Large-Scale Weak Supervision

## Abstract

We study the capabilities of speech processing systems trained simply to predict large amounts of transcripts of audio on the internet. When scaled to 680,000 hours of multilingual and multitask supervision, the resulting models generalize well to standard benchmarks and are often competitive with prior fully supervised results but in a zero-shot transfer setting without the need for any fine-tuning. When compared to humans, the models approach their accuracy and robustness. We are releasing models and inference code to serve as a foundation for further work on robust speech processing.

> In contrast to a lot of work on speech recognition, we train Whisper models to predict the raw text of transcripts without any significant standardization, relying on the expressiveness of sequence-to-sequence models to learn to map between utterances and their transcribed form. [(p. 2)](zotero://open-pdf/library/items/FY62NCIF?page=2)

> While diversity in audio quality can help train a model to be robust, diversity in transcript quality is not similarly beneficial. Initial inspection showed a large amount of subpar transcripts in the raw dataset. To address this, we developed several automated filtering methods to improve transcript quality. [(p. 2)](zotero://open-pdf/library/items/FY62NCIF?page=2)

> In order to avoid learning “transcript-ese”, we developed many heuristics to detect and remove machine-generated transcripts from the training dataset. Many existing ASR systems output only a limited subset of written language which removes or normalizes away aspects that are difficult to predict from only audio signals such as complex punctuation (exclamation points, commas, and question marks), formatting whitespace such as paragraphs, or stylistic aspects such as capitalization. An all-uppercase or all-lowercase transcript is very unlikely to be human generated. While many ASR systems include some level of inverse text normalization, it is often simple or rule-based and still detectable from other unhandled aspects such as never including commas. [(p. 2)](zotero://open-pdf/library/items/FY62NCIF?page=2)

> We break audio files into 30-second segments paired with the subset of the transcript that occurs within that time segment. We train on all audio, including segments where there is no speech (though with sub-sampled probability) and use these segments as training data for voice activity detection. [(p. 2)](zotero://open-pdf/library/items/FY62NCIF?page=2)

> performed manual inspection of these data sources sorting by a combination of both high error rate and data source size in order to identify and remove low-quality ones efficiently. This inspection showed a large amount of only partially transcribed or poorly aligned/misaligned transcripts as well as remaining low-quality machine-generated captions that filtering heuristics did not detect. [(p. 3)](zotero://open-pdf/library/items/FY62NCIF?page=3)

> To reduce this complexity, we would like to have a single model perform the entire speech processing pipeline, not just the core recognition part. An important consideration here is the interface for the model. There are many different tasks that can be performed on the same input audio signal: transcription, translation, voice activity detection, alignment, and language identification are some examples. [(p. 3)](zotero://open-pdf/library/items/FY62NCIF?page=3)

![[statics/radford_2022a/image-4-x38-y277.png]] ^59b0fb

> To avoid this, we fine-tune Whisper models briefly on the subset of transcripts that do not include speaker annotations which removes this behavior. [(p. 5)](zotero://open-pdf/library/items/FY62NCIF?page=5)

> We suspect a large part of this gap between human and machine behavior is due to conflating different capabilities being measured by human and machine performance on a test set. This claim may seem confusing at first; if both humans and machines are taking the same test, how can it be that different skills are being tested? The difference arises not in the testing but in how they trained for it. Humans are often asked to perform a task given little to no supervision on the specific data distribution being studied. Thus human performance is a measure of out-of-distribution generalization. But machine learning models are usually evaluated after training on a large amount of supervision from the evaluation distribution, meaning that machine performance is instead a measure of in-distribution generalization. While both humans and machines are being evaluated on the same test data, two quite different abilities are being measured due to a difference in train data. [(p. 5)](zotero://open-pdf/library/items/FY62NCIF?page=5)

> This mirrors the diminishing returns observed with model size scaling for English speech recognition and could similarly be explained by saturation effects when approaching human-level performance. [(p. 11)](zotero://open-pdf/library/items/FY62NCIF?page=11)

> We start with temperature 0, i.e. always selecting the tokens with the highest probability, and increase the temperature by 0.2 up to 1.0 when either the average log probability over the generated tokens is lower than −1 or the generated text has a gzip compression rate higher than 2.4. Providing the transcribed text from the preceding window as previous-text conditioning when the applied temperature is below 0.5 further improves the performance. [(p. 12)](zotero://open-pdf/library/items/FY62NCIF?page=12)

> combining the no-speech probability threshold of 0.6 and the average log-probability threshold of −1 makes the voice activity detection of Whisper more reliable. [(p. 13)](zotero://open-pdf/library/items/FY62NCIF?page=13)

```
@article{Radford_Kim_Xu_Brockman_McLeavey_Sutskever_2022, title={Robust Speech Recognition via Large-Scale Weak Supervision}, url={[http://arxiv.org/abs/2212.04356](http://arxiv.org/abs/2212.04356)}, DOI={[10.48550/arXiv.2212.04356](https://doi.org/10.48550/arXiv.2212.04356)}, abstractNote={We study the capabilities of speech processing systems trained simply to predict large amounts of transcripts of audio on the internet. When scaled to 680,000 hours of multilingual and multitask supervision, the resulting models generalize well to standard benchmarks and are often competitive with prior fully supervised results but in a zero-shot transfer setting without the need for any fine-tuning. When compared to humans, the models approach their accuracy and robustness. We are releasing models and inference code to serve as a foundation for further work on robust speech processing.}, note={arXiv:2212.04356 [cs, eess]}, number={arXiv:2212.04356}, publisher={arXiv}, author={Radford, Alec and Kim, Jong Wook and Xu, Tao and Brockman, Greg and McLeavey, Christine and Sutskever, Ilya}, year={2022}, month=dec }
```