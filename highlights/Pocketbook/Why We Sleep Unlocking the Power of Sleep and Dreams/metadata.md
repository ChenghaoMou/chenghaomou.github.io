---
title: Why We Sleep Unlocking the Power of Sleep and Dreams
authors: Matthew Walker
isbn:
year: 2017
id: "55956464"
fast_hash: e46eda183226e9207e07b00d9f3fc3c2
collections:
  - ""
uploaded_at: 2023-08-20T10:40:47Z
read_status: read
type: book
plugin: pocketbook-cloud-highlights-importer
---

```dataviewjs
dv.header(2, dv.current().title)
const queryResult = await dv.query(`
  TABLE WITHOUT ID text, note
  FROM "highlights/Pocketbook/Why We Sleep Unlocking the Power of Sleep and Dreams/highlights"
  WHERE book_id="55956464" AND type = "highlight" and plugin = "pocketbook-cloud-highlights-importer"
  SORT sort_order
`);

const result = queryResult.value.values.map(line => "> [!quote]\n> " + line[0].replace(/\n/g, "\n> ") + (line[1] ? "\n\n> [!note]\n> " + line[1].replace(/\n/g, "\n> ") : ""))

dv.list(result)
```
