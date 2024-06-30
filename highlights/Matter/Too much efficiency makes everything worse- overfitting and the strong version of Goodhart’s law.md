---
url: "http://sohl-dickstein.github.io/2022/11/06/strong-Goodhart.html"
author: "Jascha Sohl-Dickstein"
publisher: "sohl-dickstein.github.io"
published: 2022-11-06
aliases:
  -  "Too much efficiency makes everything worse: overfitting and the strong version of Goodhart’s law"
title: "Too much efficiency makes everything worse: overfitting and the strong version of Goodhart’s law"
---

## Highlights
> As we continue optimizing the proxy though, we eventually exhaust the useable similarity between proxy and goal. The proxy keeps on getting better, but the goal stops improving. In machine learning we call this overfitting, but it is also an example of Goodhart's law.

> Goodhart's law states that, when a measure becomes a target, it ceases to be a good measure2. Goodhart proposed this in the context of monetary policy, but it applies far more broadly. In the context of overfitting in machine learning, it describes how the proxy objective we optimize ceases to be a good measure of the objective we care about.

> Let's call it the strong version of Goodhart's law5. We can state it as: When a measure becomes a target, if it is effectively optimized, then the thing it is designed to measure will grow worse.

> The strong version of Goodhart's law differs in that it says that as you over-optimize, the goal you care about won't just stop improving, but will instead grow much worse than if you had done nothing at all.

> One of the best understood causes of extreme overfitting is that the expressivity of the model being trained too closely matches the complexity of the proxy task.

