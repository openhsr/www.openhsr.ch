---
title: E-Mail
---
## Technische Angaben

### IMAP-Einstellungen

Einstellung | Wert
----------- | ----
E-Mail Format | ```maria.muster@hsr.ch```
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

## Empfehlung
Wir empfehlen die Nutzung der Open Source Software Thunderbird. Eine Anleitung zu Thunderbird findest du hier: [Thunderbird](/app/thunderbird)


## Alle Programme

{% for app_page in site.app %}{% if app_page.category == "email" %}
- [{{app_page.title}}]({{app_page.url}}){%
 endif %}{% endfor %}
