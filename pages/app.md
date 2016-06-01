---
title: Programme
---

Leider sind nicht alle Programme, die an der HSR eingesetzt werden auf Linux & co verfügbar.
Darum haben wir dir hier Alternative aufgelistet.

{% for app_page in site.app %}

  <h2>{{ app_page.teaser_title }}: {{ app_page.title }}</h2>
  <p>{{ app_page.teaser }}</p>
  <p>&#8618; <a href="{{ app_page.url }}">Mehr zu {{ app_page.title }}</a></p>
  {% if app_page.teaser_image %}
  <img src="{{ app_page.teaser_image }}" />
  {% endif %}

{% endfor %}


Fehlt dir etwas? [Dann gib uns Bescheid!](/hilfe/)
