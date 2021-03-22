---
title: Events
---

{% for event_page in site.events %}

  <h2>{{ event_page.teaser_title }}: {{ event_page.title }}</h2>
  <p>{{ event_page.teaser }}</p>
  <p>&#8618; <a href="{{ event_page.url }}">Mehr zu {{ event_page.title }}</a></p>
  {% if event_page.teaser_image %}
  <img src="{{ event_page.teaser_image }}" />
  {% endif %}

{% endfor %}
