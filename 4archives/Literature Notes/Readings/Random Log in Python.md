---
order: -1
reference: ''
tags: [python, programming]
title: Random Log in Python
updated: '2021-09-10 08:00:39'
---

In python, we should use `math.log10` instead of `math.log` for better float number processing:

```python
math.log(243, 3) #4.9999999999
math.log10(243) / math.log10(3) # 5.0
```