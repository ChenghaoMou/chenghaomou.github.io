---
doc_type: hypothesis-highlights
order: -1
tags: [processed]
title: DALL·E 2 Pre-Training Mitigations
url: 'https://openai.com/blog/dall-e-2-pre-training-mitigations/'
---

# DALL·E 2 Pre-Training Mitigations

## Metadata

- Author: [openai.com]()
- Title: DALL·E 2 Pre-Training Mitigations
- Reference: https://openai.com/blog/dall-e-2-pre-training-mitigations/
- Category: #article

## Page Notes

## Highlights

- we describe how we filtered out violent and sexual images from DALL·E 2’s training dataset. Without this mitigation, the model would learn to produce graphic or explicit images when prompted for them, and might even return such images unintentionally in response to seemingly innocuous prompts. — [Updated on 2022-07-02 15:38:08](https://hyp.is/pawcdPpXEey5OadciDFykw/openai.com/blog/dall-e-2-pre-training-mitigations/) — Group: #Personal
    - Annotation: Even when we are exposed to such content on the internet, we humans can still uphold our moral standards and avoid producing toxic content. The conscious choice that we make not to be influenced by such content should be a key feature of "intelligence" compared to not learning it by force.
- In practice, we found that this image regurgitation is caused by images that are replicated many times in the dataset, and mitigate the issue by removing images that are visually similar to other images in the dataset. — [Updated on 2022-07-02 15:38:51](https://hyp.is/v0PBKPpXEeyaNE-0OI5bTA/openai.com/blog/dall-e-2-pre-training-mitigations/) — Group: #Personal

- first, we create a specification for the image categories we would like to label; second, we gather a few hundred positive and negative examples for each category; third, we use an active learning procedure to gather more data and improve the precision/recall trade-off; and finally, we run the resulting classifier on the entire dataset with a conservative classification threshold to favor recall over precision. To set these thresholds, we prioritized filtering out all of the bad data over leaving in all of the good data. — [Updated on 2022-07-02 15:39:53](https://hyp.is/49V8tvpXEeydpqsBI99K6w/openai.com/blog/dall-e-2-pre-training-mitigations/) — Group: #Personal

- This is because we can always fine-tune our model with more data later to teach it new things, but it’s much harder to make the model forget something that it has already learned. — [Updated on 2022-07-02 15:40:01](https://hyp.is/6K8XGvpXEeyrKKOgakqDyQ/openai.com/blog/dall-e-2-pre-training-mitigations/) — Group: #Personal

- However, we also found an unexpected side-effect of data filtering: it created or amplified the model’s biases towards certain demographics. — [Updated on 2022-07-02 15:41:47](https://hyp.is/J9EvvvpYEeydYS_uEY2opw/openai.com/blog/dall-e-2-pre-training-mitigations/) — Group: #Personal

- We hypothesize that this particular case of bias amplification comes from two places: first, even if women and men have roughly equal representation in the original dataset, the dataset may be biased toward presenting women in more sexualized contexts; and second, our classifiers themselves may be biased either due to implementation or class definition, despite our efforts to ensure that this was not the case during the data collection and validation phases. Due to both of these effects, our filter may remove more images of women than men, which changes the gender ratio that the model observes in training. — [Updated on 2022-07-02 15:44:22](https://hyp.is/hD2_LvpYEeysPyvnvpCu1w/openai.com/blog/dall-e-2-pre-training-mitigations/) — Group: #Personal

- Additionally, reproducing training images verbatim can raise legal questions around copyright infringement, ownership, and privacy (if people’s photos were present in training data). — [Updated on 2022-07-02 15:48:16](https://hyp.is/D7l1SPpZEeyaOAv6Q8dIzg/openai.com/blog/dall-e-2-pre-training-mitigations/) — Group: #Personal

- First, the images were almost all simple vector graphics, which were likely easy to memorize due to their low information content. Second, and more importantly, the images all had many near-duplicates in the training dataset. — [Updated on 2022-07-02 15:48:58](https://hyp.is/KL1Y1PpZEeyvPRdfMY9LxA/openai.com/blog/dall-e-2-pre-training-mitigations/) — Group: #Personal

- Consider what happens if we cluster our dataset before performing deduplication. Since nearby samples often fall into the same cluster, most of the duplicate pairs would not cross cluster decision boundaries. We could then deduplicate samples within each cluster without checking for duplicates outside of the cluster, while only missing a small fraction of all duplicate pairs. This is much faster than the naive approach, since we no longer have to check every single pair of images.[3] — [Updated on 2022-07-02 15:50:50](https://hyp.is/a20x9PpZEeyzn1dyRyW6Gg/openai.com/blog/dall-e-2-pre-training-mitigations/) — Group: #Personal

- The more clusterings you try, the more likely you are to discover a given duplicate pair. In practice, we settled on using five clusterings, which means that we search for duplicates of each image in the union of five different clusters. In practice, this found 97% of all duplicate pairs on a subset of our data. — [Updated on 2022-07-02 15:51:44](https://hyp.is/jA9hhPpZEeyRApcyBq6ZXA/openai.com/blog/dall-e-2-pre-training-mitigations/) — Group: #Personal

- While deduplication is a good first step towards preventing memorization, it does not tell us everything there is to learn about why or how models like DALL·E 2 memorize training data. — [Updated on 2022-07-02 15:53:59](https://hyp.is/3ErbxPpZEey17B8Bz6b0zw/openai.com/blog/dall-e-2-pre-training-mitigations/) — Group: #Personal


---

# DALL·E 2 Pre-Training Mitigations

---

# DALL·E 2 Pre-Training Mitigations
# DALL·E 2 Pre-Training Mitigations
# DALL·E 2 Pre-Training Mitigations

