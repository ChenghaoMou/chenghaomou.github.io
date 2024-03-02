---
order: -1
tags: [research, deduplication]
title: Suffix Array Substring deduplication
---

## Suffix Array Deduplication

### Progress

```dataview
TABLE
	Identifier AS "Identifier",
	Language AS "Language",
	row["Physical Size"] AS "Physical Size",
	row["Total Text Size"] AS "Total Text Size (bytes)",
	row["Substring Length Threshold"] AS "Substring Length Threshold",
	row["Substring Duplicate Size"] AS "Substring Duplicate Size (bytes)"
FROM #deduplication AND #projectnotes 
SORT Identifier
```

^447e08

### Goals

![[Goals#^3fb13c]]