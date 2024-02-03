---
aliases:
  - Annotation Summary of Sculley Et Al. - Hidden Technical Debt in Machine Learning Systems.pdf.
linter-yaml-title-alias: Annotation Summary of Sculley Et Al. - Hidden Technical Debt in Machine Learning Systems.pdf.
order: -1
tags: [machine learning, engineering, practice]
title: Annotation Summary of Sculley Et Al. - Hidden Technical Debt in Machine Learning Systems.pdf.
updated: '10-17-2021 14:56'
---

# Annotation Summary of Sculley Et Al. - Hidden Technical Debt in Machine Learning Systems.pdf.

 *Highlight [page 1]:* This paper argues it is dangerous to think of these quick wins as coming for free.

 *Highlight [page 1]:* Using the software engineering framework of technical debt, we ﬁnd it is common to incur massive ongoing maintenance costs in real-world ML systems.

 *Highlight [page 1]:* developing and deploying ML systems is relatively fast and cheap, but maintaining them over time is difﬁcult and expensive.

 *Highlight [page 1]:* The goal is not to add new functionality, but to enable future improvements, reduce errors, and improve maintainability.

 *Note [page 1]:* The goal of servicing technical debt.

 *Highlight [page 1]:* Traditional abstractions and boundaries may be subtly corrupted or invalidated by the fact that data inﬂuences ML system behavior. Typical methods for paying down code level technical debt are not sufﬁcient to address ML-speciﬁc technical debt at the system level.

 *Highlight [page 2]:* If we change the input distribution of values in x 1, the importance, weights, or use of the remaining n − 1 features may all change. This is true whether the model is retrained fully in a batch style or allowed to adapt in an online fashion. Adding a new feature xn+1 can cause similar changes, as can removing any feature x j. No inputs are ever really independent. We refer to this here as the CACE principle: Changing Anything Changes Everything.

 *Highlight [page 2]:* One possible mitigation strategy is to isolate models and serve ensembles.

 *Highlight [page 2]:* Relying on the combination creates a strong entanglement: improving an individual component model may actually make the system accuracy worse if the remaining errors are more strongly correlated with the other components.

 *Highlight [page 2]:* Metrics that operate on a slice-by-slice basis may also be extremely useful.

 *Highlight [page 2]:* However, this correction model has created a new system dependency on m a, making it signiﬁcantly more expensive to analyze improvements to that model in the future.

 *Highlight [page 2]:* Mitigation strategies are to augment m ato learn the corrections directly within the same model by adding features to distinguish among the cases, or to accept the cost of creating a separate model for A ′.

 *Highlight [page 3]:* engineers will naturally use the most convenient signal at hand, especially when working against deadline pressures.

 *Highlight [page 3]:* This is dangerous because even “improvements” to input signals may have arbitrary detrimental effects in the consuming system that are costly to diagnose and address. For example, consider the case in which an input signal was previously mis-calibrated. The model consuming it likely ﬁt to these mis-calibrations, and a silent update that corrects the signal will have sudden ramiﬁcations for the model.

 *Highlight [page 3]:* One common mitigation strategy for unstable data dependencies is to create a versioned copy of a given signal.

 *Highlight [page 3]:* • Legacy Features. The most common case is that a feature F is included in a model early in its development. Over time, F is made redundant by new features but this goes undetected. • Bundled Features. Sometimes, a group of features is evaluated and found to be beneﬁcial. Because of deadline pressures or similar effects, all the features in the bundle are added to the model together, possibly including features that add little or no value. • ǫ-Features. As machine learning researchers, it is tempting to improve model accuracy even when the accuracy gain is very small or when the complexity overhead might be high. • Correlated Features. Often two features are strongly correlated, but one is more directly causal. Many ML methods have difﬁculty detecting this and credit the two features equally, or may even pick the non-causal one. This results in brittleness if world behavior later changes the correlations.

 *Highlight [page 5]:* Pipeline jungles can only be avoided by thinking holistically about data collection and feature extraction. The clean-slate approach of scrapping a pipeline jungle and redesigning from the ground up is indeed a major investment of engineering effort, but one that can dramatically reduce ongoing costs and speed further innovation.

 *Highlight [page 5]:* However, over time, these accumulated codepaths can create a growing debt due to the increasing difﬁculties of maintaining backward compatibility and an exponential increase in cyclomatic complexity.

 *Highlight [page 5]:* it is often beneﬁcial to periodically reexamine each experimental branch to see what can be ripped out.

 *Highlight [page 5]:* It could be argued that the widespread use of Map-Reduce in machine learning was driven by the void of strong distributed learning abstractions.

 *Highlight [page 5]:* Indeed, one of the few areas of broad agreement in recent years appears to be that Map-Reduce is a poor abstraction for iterative ML algorithms.

 *Highlight [page 6]:* However, using multiple languages often increases the cost of effective testing and can increase the difﬁculty of transferring ownership to other individuals.

 *Highlight [page 6]:* Additionally, results found at small scale rarely reﬂect the reality at full scale.

 *Highlight [page 6]:* It should be easy to specify a conﬁguration as a small change from a previous conﬁguration. • It should be hard to make manual errors, omissions, or oversights. • It should be easy to see, visually, the difference in conﬁguration between two models. • It should be easy to automatically assert and verify basic facts about the conﬁguration: number of features used, transitive closure of data dependencies, etc. • It should be possible to detect unused or redundant settings. • Conﬁgurations should undergo a full code review and be checked into a repository.

 *Highlight [page 7]:* Thus if a model updates on new data, the old manually set threshold may be invalid. Manually updating many thresholds across many models is time-consuming and brittle. One mitigation strategy for this kind of problem appears in [14], in which thresholds are learned via simple evaluation on heldout validation data.

 *Highlight [page 7]:* Comprehensive live monitoring of system behavior in real time combined with automated response is critical for long-term system reliability.

 *Highlight [page 7]:* For example, this method can help to detect cases in which the world behavior suddenly changes, making training distributions drawn from historical data no longer reﬂective of current reality.

 *Highlight [page 7]:* Further any up-stream alerts must be propagated to the control plane of an ML system to ensure its accuracy.

 *Highlight [page 7]:* Basic sanity checks are useful, as more sophisticated tests that monitor changes in input distributions.

 *Highlight [page 8]:* It is important to create team cultures that reward deletion of features, reduction of complexity, improvements in reproducibility, stability, and monitoring to the same degree that improvements in accuracy are valued.

 *Highlight [page 8]:* • How easily can an entirely new algorithmic approach be tested at full scale? • What is the transitive closure of all data dependencies? • How precisely can the impact of a new change to the system be measured? • Does improving one model or signal degrade others? • How quickly can new members of the team be brought up to speed?