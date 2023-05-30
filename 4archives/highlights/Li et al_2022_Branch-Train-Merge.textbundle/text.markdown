

#### [Page 1](highlights://Li%20et%20al_2022_Branch-Train-Merge#page=1)

> ELMFOREST1 models consist of a set of EXPERT LMs (ELMs), each
> specialized to a distinct domain in the training corpus, e.g.,
> scientific or legal text. The ELMs are each independently
> functional LMs with no shared parameters

***

#### [Page 2](highlights://Li%20et%20al_2022_Branch-Train-Merge#page=2)

> ELMs can be added and removed to the model at any time to update
> data coverage, ensembled to generalize to new domains, or
> parameter averaged to collapse back to a single LM for more
> efficient inference.

***

> Each new ELM in the ELMFOREST is first branched by initializing
> a new LM with an average of the parameters of the most relevant
> LMs in the current set, then further trained on new domain data
> with a standard cross-entropy loss, and finally merged into the
> model by simply adding it to the current ELMFOREST (Figure 3
> provides a schematic of this process). BTM is initialized with a
> single LM that is trained on heterogeneous data to establish
> strong shared representations for future domain specialization,
> a process that we explore extensively in our ablation analysis.

***

> Ensembled ELMFORESTs outperform ensembling across random data
> splits, suggesting that domain specialization is a critical
> component to our approach

***

> These results provide compelling evidence for the promise of
> scaling large language models with many smaller, independently
> trained ELMs

Do we compartmentalize our knowledge in our brain? If knowledge is interrelation between things, would this be an counter example to the paper meaning without reference?

***

> We envision that this work lays the foundation for democratized
> model development at inclusive compute budgets — that groups
> with different resource constraints and research interests may
> combine efforts to build open-sourced, community-authored large
> language models, comprised of continually-evolving repositories
> of EXPERT LMs.

huggingface-ensemble: ensemble models on huggingface within a LM family.

***

#### [Page 3](highlights://Li%20et%20al_2022_Branch-Train-Merge#page=3)

> s. We follow Gururangan et al. 2022 and define domains by
> provenance, or the source of the document (e.g., whether it is a
> legal document or computer science research paper), which yields
> simple and interpretable corpus segmentations, and is useful for
> identifying ELMs in our experiments.3

***

#### [Page 4](highlights://Li%20et%20al_2022_Branch-Train-Merge#page=4)

> We find that using the cached prior from §2.3 to define a
> weighted average LM is the strongest method. ELMFOREST weighted
> parameter averages outperform TRANSFORMER-LM baselines at all
> model sizes studied, and continue to outperform TRANSFORMER-LMs
> and approach ELMFOREST ensembling performance as we increase the
> number of domains (§6.5).

***

#### [Page 5](highlights://Li%20et%20al_2022_Branch-Train-Merge#page=5)

![](assets/Page5Image72.26377337300256_436.1845328443633-471.6398661364741_319.9933220009698.jpg)

***

> ing experts ✓1,✓2,...,✓k, we can initialize the new expert with
> the weighted parameter average nearest ELM or – our best
> performing approach – a parameter average of ELMs according to
> their domain posterior on the new data dk+1

***

#### [Page 8](highlights://Li%20et%20al_2022_Branch-Train-Merge#page=8)

> Using uniform weights underperforms all baselines, even
> TRANSFORMER-LMs, highlighting the importance of domain relevance
> in ensembling and parameter averaging ELMs.

***

> Weighting the average with the domain posterior outperforms all
> other techniques, and provides consistent performance
> improvements over TRANSFORMER-LMs at no additional inference
> cost.

***

#### [Page 16](highlights://Li%20et%20al_2022_Branch-Train-Merge#page=16)

> While the costs of using all ELMs in an ensemble at inference
> time is high, these costs can be reduced (with minimal
> performance degradation) to that of the equivalent
> TRANSFORMER-LM through parameter averaging.

***




[Page5Image72.26377337300256_436.1845328443633-471.6398661364741_319.9933220009698.jpg]: assets/Page5Image72.26377337300256_436.1845328443633-471.6398661364741_319.9933220009698.jpg