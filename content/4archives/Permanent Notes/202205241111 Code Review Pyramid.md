---
author: "Gunnar Morling"
order: -1
tags: ["engineering", "practice", "software engineering", "career", "code review"]
title: 202205241111 Code Review Pyramid
url: "https://www.morling.dev/blog/the-code-review-pyramid/"
---

![Image](https://www.morling.dev/images/code_review_pyramid.png)

Style and most tests should be automated (in the commit hooks, CI tools or in a bash script) so you don't have to write a PR comment about this.

One should have a trace of written records regarding design decisions and implementation choices, ranging from technical specifications to your API documentations. Personally, I think questions around directions should not be discussed in a PR, at which time efforts have been invested and it would be too late to make a turn.

