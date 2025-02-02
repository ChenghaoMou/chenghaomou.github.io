---
title: "OmniFlatten An End-to-end GPT Model for Seamless Voice Conversation"
alias:
- "OmniFlatten An End-to-end GPT Model for Seamless Voice Conversation"
created: 2024-11-30 14:54:05:758518
updated: 2024-11-14 20:49:37:518000
modified: 2024-11-30 14:54:05:758525
authors: ['Qinglin Zhang', 'Luyao Cheng', 'Chong Deng', 'Qian Chen', 'Wen Wang', 'Siqi Zheng', 'Jiaqing Liu', 'Hai Yu', 'Chaohong Tan']
url: https://arxiv.org/abs/2410.17799v1
zotero_url: zotero://open-pdf/library/items/E8XHVZC5
tags:
- reMarkable
---

# OmniFlatten An End-to-end GPT Model for Seamless Voice Conversation
[Open in Zotero](zotero://open-pdf/library/items/E8XHVZC5)
## Abstract

Full-duplex spoken dialogue systems significantly advance over traditional turn-based dialogue systems, as they allow simultaneous bidirectional communication, closely mirroring human-human interactions. However, achieving low latency and natural interactions in full-duplex dialogue systems remains a significant challenge, especially considering human conversation dynamics such as interruptions, backchannels, and overlapping speech. In this paper, we introduce a novel End-to-End GPT-based model OmniFlatten for full-duplex conversation, capable of effectively modeling the complex behaviors inherent to natural conversations with low latency. To achieve full-duplex communication capabilities, we propose a multi-stage post-training scheme that progressively adapts a text-based large language model (LLM) backbone into a speech-text dialogue LLM, capable of generating text and speech in real time, without modifying the architecture of the backbone LLM. The training process comprises three stages: modality alignment, half-duplex dialogue learning, and full-duplex dialogue learning. Throughout all training stages, we standardize the data using a flattening operation, which allows us to unify the training methods and the model architecture across different modalities and tasks. Our approach offers a straightforward modeling technique and a promising research direction for developing efficient and natural end-to-end full-duplex spoken dialogue systems. Audio samples of dialogues generated by OmniFlatten can be found at this web site (https://omniflatten.github.io/).
## Pages
### Page -1
**Highlights**:

<mark style="background-color: rgba(190, 234, 254, 255)">Specifically, Moshimodels multiple streams of user’s speech input andsystem’s text and speech output in parallel, simplifying handling of full-duplex dialogues. However,this parallel framework is not supported nativelyby GPT-based models and hence requires sophisticated designs such as acoustic delay and innermonologue.</mark>
### Page 1
**Highlights**:

<mark style="background-color: rgba(190, 234, 254, 255)">After obtaining the speech-text LLM, we finetune it using interleaved and serialized dialoguesthrough three progressive stages. In the first stage,we train the model on half-duplex dialogues by flattening both text and speech streams of user inputand system output into a single sequence (that is,flatten four-stream data).</mark>
<mark style="background-color: rgba(190, 234, 254, 255)">In the second stage,we further remove the user input text stream, perform fine-grained chunking and alignment on theremaining three steams, flatten the chunks, and continue training the model with the resulting flattenthree-stream data.</mark>
<mark style="background-color: rgba(190, 234, 254, 255)">Finally, we construct flatten two-stream data comprising only input and output speech, and continuetraining the model to focus on speech-to-speech</mark>
<mark style="background-color: rgba(190, 234, 254, 255)">generation, hence eliminating the dependence onintermediate text and thereby reducing latency andbringing the system closer to real-time interaction.</mark>
![Image (page 1)](statics/a8a035effb5c/tmpx95xj4my.svg)
### Page 2
**Highlights**:

<mark style="background-color: rgba(190, 234, 254, 255)">Qwen-audio2 (Chu et al., 2024) andSALMONN (Tang et al., 2024), support voice input but only output text; hence, they rely on external TTS systems to synthesize speech output.SpeechGPT (Zhang et al., 2023), LauraGPT (Duet al., 2024b), Mini-Omni (Xie and Wu, 2024) andLLaMA-Omni (Fang et al., 2024), are capable ofcomprehending both speech and text input and generating output in both speech and text; however,they are predominantly turn-based dialogue models and do not support full-duplex conversation.</mark>
<mark style="background-color: rgba(190, 234, 254, 255)">Another related work in this area models isVITA (Fu et al., 2024), which involves a duplexscheme by two separate modules: one model generates responses to user queries while another continuously monitors environmental inputs to selectivelyprovide updated interactions.</mark>
### Page 3
**Highlights**:

![Image (page 3)](statics/a8a035effb5c/tmp_12r9q9w.png)
### Page 4
**Highlights**:

<mark style="background-color: rgba(190, 234, 254, 255)">Building upon the aforementioned speech-text multimodal model, we conduct dialogue learning inthree stages, including half-duplex dialogue training using both speech and text streams of turnbased dialogue data, and then full-duplex dialoguetraining based on fine-grained chunking and alignment of speech and text sequences. Specifically,during full-duplex dialogue training, we first remove the input text stream and use the remainingthree streams for training, and then further removethe output text stream and use the remaining twostreams for training, in order to gradually eliminate the dependence on text information, focus onspeech-to-speech generation, and reduce latency.During all three stages, we interleave and flatten themulti-stream dialogue data into a single sequence.</mark>
<mark style="background-color: rgba(190, 234, 254, 255)">steams of data for training. In order to handle overlapping speech, we introduce chunking and relaxedspeech-text token alignment based on the chunks;in this way, we do not require strict token-levelalignment between speech and text. Specifically, toprepare the training data for this stage, we chunkthe speech and text token sequences of dialoguedata with fixed chunk sizes and then interleave thethree-stream data and flatten them into a single sequence for training, following the order of inputspeech, output text, and output speech. Notably,given the higher efficiency of text, the size of thetext chunks is generally smaller than that of thespeech chunks. In this work, we set the text chunk</mark>
### Page 5
**Highlights**:

![Image (page 5)](statics/a8a035effb5c/tmpj2nni_bo.svg)
### Page 6
**Highlights**:

<mark style="background-color: rgba(190, 234, 254, 255)">Additionally, we incorporate several proprietaryASR and TTS datasets. In sum, the datasets utilized</mark>
<mark style="background-color: rgba(190, 234, 254, 255)">Among thedatasets, 30% are open-source data and 70% areproprietary data.</mark>
<mark style="background-color: rgba(190, 234, 254, 255)">promptly. After the Assistant speech ends, we sample the pause duration between the end time of theAssistant’s turn and the start time of the next User’sturn from a normal distribution. In this way, we</mark>
<mark style="background-color: rgba(190, 234, 254, 255)">Thirdly, to mimic real-world scenarios of theUser audio channel, we also sample backgroundnoise from the MUSAN noise dataset (Snyder et al.,2015) and add noise into the User audio channel.</mark>
### Page 7
**Highlights**:

<mark style="background-color: rgba(190, 234, 254, 255)">tions (Zheng et al., 2023a). Therefore, we evaluatethe full-duplex dialogue capabilities of OmniFlatten, by prompting a competitive text LLM to evaluate the semantics of dialogues and assign a scoreon the predicted Assistant textual response fromthe model after training on three-stream data. Notably, OmniFlatten after the final stage of trainingon two-stream data only outputs Assistant speech,which is challenging to be evaluated by text-basedLLMs.</mark>
### Page 8
**Highlights**:

<mark style="background-color: rgba(190, 234, 254, 255)">Conversely, User’s turn-taking occurs at the beginning of the turn, before the semantic context isto be fully established, hence the system requireslonger response time to make the decision, stopping speaking and yielding the turn.</mark>