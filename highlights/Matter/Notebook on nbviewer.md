---
aliases:
  - Notebook on nbviewer
url: https://nbviewer.org/github/norvig/pytudes/blob/main/ipynb/AlphaCode.ipynb
publisher: nbviewer.org
order: -20160427012217
date: 2016-04-27
tags:
---

## Highlights
<mark>* The enoder-decoder transformer model was designed for dealing with natural language, for which we don't know the true grammar; exceptions are more common than rules; and the acceptability of sentences is subjective and varies from person to person, place to place, and time to time. But none of those things apply to formal languages such as Python. We know exactly what the rules for a valid program are, yet we don't have a good way of incorporating that knowledge into the transformer model. Certainly we still need something like the transformer model, because we need to know that the variable name i usually references an integer, while the pair \\(x, y\\) often references a point in 2D space, and so on. These things are not mentioned in the formal grammar of Python. An approach that could combine the formal grammar rules and the learned transformer model would be welcome.</mark>

<mark>But the machine learning model is just a small part of the overall software development process. If all the other parts could be incorporated into an end-to-end differntiable model, the process of evolving the system would be easier. Consider the scenario where the user experience researchers do an experiment comparring ten different user interfaces, and determine which one is best. The engineers then go implement that UI. Sometime later, the world changes: maybe the blend of users is different, maybe users migrate to devices with a different screen size. What would trigger an update to the UI? today, we rely on institutional memory: someone says, "Hey, I remember that UX study a few years back; maybe we should look at it again and see if a different UI would be better." But if the experiment documents and everything else were all in an end-to-end model, then the model itself could detect when a change is warranted. Building languages that allow for the incorporation of all these different kinds of documents is a challenge for the future.</mark>

<mark>This suggests that the contest problems have a bias towards retrieving an existing solution (and adapting it) rather than synthesizing a new solution.</mark>

