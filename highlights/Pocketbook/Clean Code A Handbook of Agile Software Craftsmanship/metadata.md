---
title: Clean Code A Handbook of Agile Software Craftsmanship
authors: Robert C. Martin
isbn: "9780136083238"
year: 2008
id: "54073561"
fast_hash: c3de79623c91473352622eaa6ecabfe3
collections:
  - ""
uploaded_at: 2023-07-02T14:21:13Z
read_status: reading
type: book
plugin: pocketbook-cloud-highlights-importer
---

```dataviewjs
dv.header(2, dv.current().title)
const queryResult = await dv.query(`
  TABLE WITHOUT ID text, note
  FROM "highlights/Pocketbook/Clean Code A Handbook of Agile Software Craftsmanship/highlights"
  WHERE book_id="54073561" AND type = "highlight" and plugin = "pocketbook-cloud-highlights-importer"
  SORT sort_order
`);

const result = queryResult.value.values.map(line => "> [!quote]\n> " + line[0].replace(/\n/g, "\n> ") + (line[1] ? "\n\n> [!note]\n> " + line[1].replace(/\n/g, "\n> ") : ""))

dv.list(result)
```
