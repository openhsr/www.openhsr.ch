---
title: E-Mail
---
## Technische Angaben

### Hinweis
Es empfiehlt sich die email-Adresse mit dem normalen Format ```maria.muster@hsr.ch``` und nicht mit dem kurzen Format ```mmuster@hs.ch``` einzurichten.

Nur mit der längeren email Adresse ist es möglich via [mobileprint](/hsr/printing) zu drucken.

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

## Empfehlung
Wir empfehlen die Nutzung der Open Source Software Thunderbird. Eine Anleitung zu Thunderbird findest du hier: [Thunderbird](/app/thunderbird)


## Alle Programme

{% for app_page in site.app %}{% if app_page.category == "email" %}
- [{{app_page.title}}]({{app_page.url}}){%
 endif %}{% endfor %}
