---
order: -1
tags: [research, deduplication]
title: SimHash deduplication
---

## SimHash Deduplication

### Progress

```dataview
TABLE
	Identifier AS "Identifier",
	row["Physical Size"] AS "Physical Size",
	row["Number of Rows"] AS "Size",
	row["Unique URLs"] AS "Unique URLs",
	row["SimHash Tokenization"] AS "SimHash Tokenization",
	row["SimHash Parameters"] AS "SimHash Parameters",
	row["SimHash Match Distribution"] AS "SimHash Distribution",
	row["SimHash Results"] AS "SimHash Results"
FROM #deduplication AND #projectnotes 
SORT Identifier
```

^d69b19

### Goals

![[Goals#^c61205]]