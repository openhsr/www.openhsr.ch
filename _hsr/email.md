---
title: E-Mail
---
## Technische Angaben

### IMAP-Einstellungen

Einstellung | Wert
----------- | ----
Server | ```imap.hsr.ch```
Port | ```993```
Verschlüsselung | SSL/TLS
Benutzername | ```mmuster```
Passwort | ```GeHeim007```
Passwort-Verschlüsselung | Keine (Normales Passwort)

### SMTP-Einstellungen

Einstellung | Wert
----------- | ----
Server | ```smtp.hsr.ch```
Port | ```587```
Verschlüsselung | STARTTLS
Benutzername | ```mmuster```
Passwort | ```GeHeim007```
Passwort-Verschlüsselung | Keine (Normales Passwort)

## Thunderbird
{% for app_page in site.app %}
  {% if app_page.title == "Thunderbird" %}
    {% assign app_page_content = app_page.content | split:"<!--main_settings-->" %}

    {{ app_page_content[1] }}
  {% endif %}
{% endfor %}

## Alle Programme

{% for app_page in site.app %}{% if app_page.category == "email" %}
- [{{app_page.title}}]({{app_page.url}}){%
 endif %}{% endfor %}
