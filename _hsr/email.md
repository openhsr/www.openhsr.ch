---
title: E-Mail
---
## Technische Angaben

### IMAP-Einstellungen

Einstellung | Wert
----------- | ----
E-Mail Format | ```maria.muster@ost.ch```
Server | ```outlook.office365.com```
Port | ```993```
Verschlüsselung | SSL/TLS
Authentifizierungsmethode | OAuth2
Benutzername | ```maria.muster@ost.ch```
Passwort | ```GeHeim007```
Passwort-Verschlüsselung | Keine (Normales Passwort)

### SMTP-Einstellungen

Einstellung | Wert
----------- | ----
Server | ```smtp.office365.com```
Port | ```587```
Verschlüsselung | STARTTLS
Authentifizierungsmethode | OAuth2
Benutzername | ```maria.muster@ost.ch```
Passwort | ```GeHeim007```
Passwort-Verschlüsselung | Keine (Normales Passwort)

## OAuth2
Nach dem Ausfüllen der Daten wird eine Webpage geöffnet, bei welcher man sich bei Microsoft einloggen muss, danach ist der Account bereit.

## Empfehlung
Wir empfehlen die Nutzung der Open Source Software Thunderbird. Eine Anleitung zu Thunderbird findest du hier: [Thunderbird](/app/thunderbird)


## Alle Programme

{% for app_page in site.app %}{% if app_page.category == "email" %}
- [{{app_page.title}}]({{app_page.url}}){%
 endif %}{% endfor %}
