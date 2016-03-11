---
title: E-Mail
---
## Technische Angaben

Einstellung | Wert | Beschreibung
----------- | ---- | ------------
IMAP Server | imap.hsr.ch | Server, von dem die E-Mails abgerufen werden.
IMAP Port | 993
IMAP Verschlüsselung | SSL/TLS
IMAP Passwort-Verschlüsselung | Keine (Normales Passwort)

## Programme
{% for app_page in site.app %}
  {% if app_page.title == "Thunderbird" %}
    {% assign app_page_content = app_page.content | split:"<!--main_settings-->" %}
### {{app_page.title}}

    {{ app_page_content[1] }}
  {% endif %}
{% endfor %}

### Alle Programme

{% for app_page in site.app %}{% if app_page.category == "email" %}
- [{{app_page.title}}]({{app_page.url}}){%
 endif %}{% endfor %}
