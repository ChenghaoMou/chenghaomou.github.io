---
aliases:
  - Against LLM maximalism
url: https://explosion.ai/blog/against-llm-maximalism
author: About the author
publisher: explosion.ai
order: -20230518075536
date: 2023-05-18
tags:
---

## Highlights
<mark>Applying rules and logic around your models to do data transformations or handle cases that can be fully enumerated is also extremely important.</mark>

<mark>But fundamentally the LLM maximalist position is that you want to trust the LLM to solve the problem. You’re preparing for the technologies to continue to improve, and the current pain-points to keep reducing over time.</mark>

<mark>What makes a good program? It’s not only how efficiently and accurately it solves a single set of requirements, but also how reliably it can be understood, changed and improved. Programs written with the LLM maximalist approach are not good under these criteria.</mark>

<mark>Instead of throwing away everything we’ve learned about software design and asking the LLM to do the whole thing all at once, we can break up our problem into pieces, and treat the LLM as just another module in the system. When our requirements change or get extended, we don’t have to go back and change the whole thing. We can add new modules, or rearrange the ones we’re already happy with.</mark>

<mark>Breaking up the task into separate modules also helps you to see which parts really need an LLM, and what could be done more simply and reliably with another approach.</mark>

<mark>LLM pragmatism. * Break down what you want your application to do with language into a series of predictive and generative steps. * Keep steps simple, and don’t ask for transformations or formatting you could easily do deterministically. * Put together a prototype pipeline, using LLM prompts or off-the-shelf solutions for all the predictive or generative steps. * Try out the pipeline in as realistic a context as you can. * Design some sort of extrinsic evaluation. What does success look like here? Net labour saved? Engagement? Conversions? If you can’t measure the utility of the system directly, you can use some other sort of metric, but you should try to make it as meaningful as possible. If false negatives matter more than false positives, account for that in your extrinsic evaluation metric. * Experiment with alternative pipeline designs. Try to create tasks where the correct answer makes sense independent of your use-case. Prefer text classification to entity recognition, and entity recognition to relation extraction (faster to annotate, accuracy is better). * Pick a predictive (as opposed to generative) component and spend two to five hours labelling annotation data for it. * Measure the LLM-powered component’s accuracy using your evaluation data. * Use the LLM-powered component to help you create training data, to train your own model. One approach is to simply save out the LLM-powered component’s predictions, and trust they’re good enough. This is a good thing to try if the LLM-powered component’s accuracy seems more than sufficient for your needs. If you need better accuracy than what the LLM is giving you, you need example data that’s more correct. A good approach is to load the LLM predictions into an annotation tool and fix them up. * Train a supervised model on your new training data, and evaluate it on the same evaluation data you used previously. * To decide whether you should annotate more training data, run additional experiments where you hold part of your training data back. For instance, compare how your accuracy changed when you use 100%, 80% and 50% of the data you have. This should help you determine how your accuracy might look if you had 120% or 150%. However, be aware that if your training set is small, there can be a lot of variance in your accuracy. Try a few different random seeds to figure out how much your accuracy changes simply due to chance, to help put your results into perspective. * Repeat this process with any other predictive components.</mark>

