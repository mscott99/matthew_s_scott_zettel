---
{% if itemType %}type: {{itemType}}
{% endif %}{% if date %}year: {{date | format ("YYYY")}}
{% endif %}{% if authors %}authors: [{{authors}}]
{% endif %}{% if conferenceName %}conference: "{{conferenceName}}"
{% endif %}{% if publisher %}publisher: "{{publisher}}"
{% endif %}{% if title %}title: "{{title}}"{% endif %}
{% if bibliography %}bibliography: "{{bibliography}}"{% endif %}
---
#literature
# {{title}}
{% if url %}url::{{url}}
{% endif %}{% if pdfZoteroLink %}See the PDF: {{pdfZoteroLink}}{% endif %}
## Literature Note
{% persist "notes" %}{% endpersist %}
## Zotero Annotations
{{formattedAnnotations}}
## Abstract
{{abstractNote}}