---
aliases:
  - '{{title}}'
  - "{{title}}"
authors: "{{authors}}"
date: '{{importDate | format("YYYY-MM-DD HH:mm:ss")}}'
tags:
title: '{{title}}'
url: "{{url}}"
---

# {{title}}

{% set pdf_annotations = annotations | filterby("source", "startswith", "pdf") -%}{% set ztr_annotations = annotations | filterby("source", "startswith", "zotero") -%}{% set exp_notes = notes | filterby("note", "startswith", "# Annotation") -%}{% if pdf_annotations.length == 0 %}{% set annotations = ztr_annotations -%}{% endif %}{% if ztr_annotations.length == 0 %}{% set annotations = pdf_annotations -%}{% endif %}

{% if abstractNote %}
## Abstract
{{abstractNote}}
{% endif %}

{% for annotation in annotations %}
{% if annotation.annotatedText %}
> {{annotation.annotatedText|escape}} [(p. {{annotation.page}})](zotero://open-pdf/library/items/{{annotation.attachment.itemKey}}?page={{annotation.page}})
{% endif %}
{% if annotation.imageRelativePath %}![[{{annotation.imageRelativePath}}]]{% endif %}
{% if annotation.comment %}

> {{annotation.comment|escape}}
{% endif %}{% endfor %}

{% if notes.length > exp_notes.length %}

## Notes

{% for note in notes %}
{% if not note.note.startsWith("# Annotation") and note.note %}
---
{{note.note|escape}}
{% endif %}
{% endfor %}
{% endif %}

```
{{bibliography}}
```