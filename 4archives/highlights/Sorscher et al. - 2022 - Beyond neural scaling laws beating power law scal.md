---
order: -1
tags: 
title: Sorscher et al. - 2022 - Beyond neural scaling laws beating power law scal
---

#### [Page 1](highlights://Sorscher%20et%20al.%20-%202022%20-%20Beyond%20neural%20scaling%20laws%20beating%20power%20law%20scal#page=1)

> Here we focus on the scaling of error with dataset size and show
> how both in theory and practice we can break beyond power law
> scaling and reduce it to exponential scaling instead if we have
> access to a high-quality data pruning metric that ranks the
> order in which training examples should be discarded to achieve
> any pruned dataset size.

***

> Overall, our work suggests that the discovery of good
> data-pruning metrics may provide a viable path forward to
> substantially improved neural scaling laws, thereby reducing the
> resource costs of modern deep learning.

***

#### [Page 2](highlights://Sorscher%20et%20al.%20-%202022%20-%20Beyond%20neural%20scaling%20laws%20beating%20power%20law%20scal#page=2)

> The key idea is that power law scaling of error with respect to
> data suggests that many training examples are highly redundant.

***

#### [Page 4](highlights://Sorscher%20et%20al.%20-%202022%20-%20Beyond%20neural%20scaling%20laws%20beating%20power%20law%20scal#page=4)

> While all of these results constitute significant improvements
> in performance, they do come at a substantial resource cost
> whose fundamental origin arises from power law scaling with
> small exponents.

***

> It turns out keeping the easiest rather than hardest examples is
> a better pruning strategy when ↵tot is small (Fig. 1C).
> Intuitively, if one does not have much data to start with, it is
> better to keep the easiest examples with largest margins (i.e.
> the blue regions of Fig. 1B) to avoid overfitting.

***

> Otherwise, if one starts with lots of data, so overfitting is
> less of an issue, it is best to keep the hardest examples with
> smallest margin that provide more information about the
> teacher’s decision boundary

***

#### [Page 5](highlights://Sorscher%20et%20al.%20-%202022%20-%20Beyond%20neural%20scaling%20laws%20beating%20power%20law%20scal#page=5)

> However, by pruning more aggressively (smaller f ) when given
> more initial data (larger ↵tot), one can achieve a Pareto
> optimal test error as a function of pruned dataset size ↵prune
> that remarkably traces out at least an exponential scaling law
> (Fig. 1C, red curve).

***

>  However, data pruning can increase the information gained per
> example by pruning away the uninformative examples.

***

#### [Page 6](highlights://Sorscher%20et%20al.%20-%202022%20-%20Beyond%20neural%20scaling%20laws%20beating%20power%20law%20scal#page=6)

> This result highlights the importance of finding high quality
> pruning metrics with ✓ ⇡ 0. Such metrics can delay the cross
> over from exponential to power law scaling as pruned dataset
> size ↵prune increases, by making aggressive pruning with very
> small f highly effective.

***

#### [Page 8](highlights://Sorscher%20et%20al.%20-%202022%20-%20Beyond%20neural%20scaling%20laws%20beating%20power%20law%20scal#page=8)

> To compute a self-supervised pruning metric for ImageNet, we
> perform k-means clustering in the embedding space of an ImageNet
> pre-trained self-supervised model (here: SWaV [31]), and define
> the difficulty of each data point by the distance to its nearest
> cluster centroid, or prototype.

***

> If class information is available, we can enforce alignment
> between clusters and classes by simply computing a single
> prototype for each

***

#### [Page 9](highlights://Sorscher%20et%20al.%20-%202022%20-%20Beyond%20neural%20scaling%20laws%20beating%20power%20law%20scal#page=9)

> class (by averaging the embeddings of all examples of this
> class). While originally intended to be an additional baseline
> metric (called supervised prototypes, light blue in Fig 5BC),
> this metric remarkably outperforms all other supervised metrics
> and largely matches the performance of memorization, which is
> prohibitively expensive to compute.

***

> We found, reassuringly, our results were robust to this choice:
> k can deviate one order of magnitude more or less than the true
> number of classes (i.e. 1000 for ImageNet) without affecting
> performance (App. E).

***

