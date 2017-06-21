---
title: Thunderbird
teaser_title: E-Mails & Kalender
teaser:
    Die freie Alternative zu Outlook auf allen Betriebssystemen.
    Nebst E-Mail kann Thunderbird auch Kalender und Kontakte verwalten.
teaser_image: /assets/app/thunderbird/teaser.png
category: email
---

## E-Mail-Konto einrichten

1. **Assistenten starten**
    * Wenn du Thunderbird bereits verwendet hast, ```Lokale Ordner``` + ```Neues Konto erstellen:``` + ```E-Mail```<br>
    {% lightbox /assets/app/thunderbird/neues_konto.png --data="thunderbird" --title="Neues Konto" --alt="Neues Konto" %}
2. **Bestehende E-Mail-Adresse** einrichten<br>
    {% lightbox /assets/app/thunderbird/willkommen_message_button.png --data="thunderbird" --title="Überspringen und meine exisiterende E-Mail-Adresse verwenden" --alt="Überspringen und meine exisiterende E-Mail-Adresse verwenden" %}
3. **Persönliche Angaben** eintragen<br>
    {% lightbox /assets/app/thunderbird/konto_einrichten_1_small.png --data="thunderbird" --title="Name, E-Mail-Adresse und Passwort" --alt="Name, E-Mail-Adresse und Passwort" %}
4. Klick auf den Button **Manuell Bearbeiten** <br>
    {% lightbox /assets/app/thunderbird/konto_einrichten_2_manuell_bearbeiten.png --data="thunderbird" --title="Manuell Bearbeiten" --alt="Manuell Bearbeiten" %}
5. **Konfigurieren** des HSR E-Mail Servers<br>
    {% lightbox /assets/app/thunderbird/konto_einrichten_3.png --data="thunderbird" --title="Konfiguration HSR E-Mail Server" --alt="Konfiguration HSR E-Mail Server" %}

{% toggle %}
## HSR Adressbuch

Manchmal kann es nützlich sein, E-Mail Adressen im HSR-Adressbuch zu suchen.

**Wichtiger Hinweis**: Das Adressbuch funktioniert nur, wenn du im [HSR-WLAN](/hsr/wlan/) bist oder via [VPN](/hsr/vpn/) verbunden bist.

1. Thunderbird starten und auf das `Adressbuch`-Symbol klicken
{% lightbox /assets/app/thunderbird/ldap_adressbuch_oeffnen.png --data="ldap_thunderbird" --title="Adressbuch öffnen" --alt="Adressbuch öffnen" %}
2. **Neues Adressbuch erstellen** über das Menu `Neu` `LDAP-Verzeichnis...`
{% lightbox /assets/app/thunderbird/ldap_neues_adressbuch.png --data="ldap_thunderbird" --title="Neues LDAP-Verzeichnis hinzufügen" --alt="LDAP-Verzeichnis hinzufügen" %}
3. **Verbindungsdaten eingeben**. Im **Bind-DN** musst du `mmuster` mit deinem Benutzernamen ersetzen.

    Einstellung   | Wert
    ------------- | ----------------
    Name          | `HSR Adressbuch`
    Serveradresse | `hsr.ch`
    Basis-DN      | `OU=HSR,OU=FH_Users,DC=hsr,DC=ch`
    Port-Nummer   | `389`
    Bind-DN       | `CN=mmuster,OU=Stud,OU=HSR,OU=FH_Users,DC=hsr,DC=ch`

    {% lightbox /assets/app/thunderbird/ldap_adressbuch_konfigurieren.png --data="ldap_thunderbird" --title="LDAP-Verzeichnis konfigurieren" --alt="LDAP-Verzeichnis konfigurieren" %}

4. Mit Klick auf `OK` bestätigen.
5. Du kannst nun im Suchfeld oben links nach einer Person suchen (Name, Kürzel usw.). <br>
Du wirst nach deinem HSR-Kennwort gefragt.
{% lightbox /assets/app/thunderbird/ldap_adressbuch_passwort.png --data="ldap_thunderbird" --title="Suche nach HSR-Kontakt" --alt="Suche nach HSR-Kontakt" %}
6. Die Suchresultate tauchen nun auf!
{% lightbox /assets/app/thunderbird/ldap_adressbuch_resultate.png --data="ldap_thunderbird" --title="Suchresultat für HSR-Kontakt" --alt="Suchresultat für HSR-Kontakt" %}

Um nun eine E-Mail an einen HSR-Kontakt zu senden, kannst du wie folgt vorgehen:

1. Neue E-Mail verfassen
{% lightbox /assets/app/thunderbird/ldap_neue_email.png --data="ldap_thunderbird" --title="Neue E-Mail verfassen" --alt="Neue E-Mail verfassen" %}
2. Das Adressbuch über das Menu `Extras` `Adressbuch` oder mittels Tastenkürzel <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>B</kbd> öffnen.
3. Suche nach dem gewünschten Kontakt.
4. Ziehe den Kontakt in das Empfängerfeld (Drag & Drop).
{% lightbox /assets/app/thunderbird/ldap_drag_drop.png --data="ldap_thunderbird" --title="Kontakt als Empfänger hinzufügen (Drag & Drop)" --alt="Kontakt als Empfänger hinzufügen (Drag & Drop)" %}

## Kalender

Kalender-Funktionalität wird in Thunderbird durch die Erweiterung [Lightning](https://support.mozilla.org/de/kb/kalender-erweiterung-lightning-verwenden) bereitgestellt. Bei manchen Thunderbird-Versionen [ist diese bereits integriert](https://support.mozilla.org/de/kb/kalender-integration-thunderbird).

### Lightning installieren

Falls dein Thunderbird Lightning noch nicht dabei hat:

Ubuntu-Paket `xul-ext-lightning` [jetzt installieren](apt://xul-ext-lightning)
oder folge [der Anleitung von Thunderbird](https://support.mozilla.org/de/kb/lightning-thunderbird-installieren) um die Erweiterung manuell herunterzuladen und in deinem Thunderbird-Profil zu installieren.

### Persönlichem HSR-Kalender in Lightning

#### Exchange-Unterstützung für Lightning installieren:

1. im Browser [die Release-Liste der ExchangeCalendar-Erweiterung](https://github.com/ExchangeCalendar/exchangecalendar/releases) öffnen
2. in Thunderbird den Add-On-Manager öffnen
3. Browser-Fenster und Thunderbird-Fenster nebeneinander platzieren
4. `exchangecalendar-vX.Y.Z.xpi`-Link des neusten Releases in den dunkgelgrauen Navigationsbereich des Add-On-Managers ziehen und dort loslassen (Drag & Drop)
5. Den Anweisungen auf dem Bildschirm folgen

#### Mit Exchange-Kalender verbinden:

1. In Thunderbird auf Kalender-Tab gehen
2. Im Kontextmenu der Kalender-Übersicht links: <kbd>New Callendar...</kbd>
3. Option `On the Network` wählen und <kbd>Next</kbd> klicken
4. Format `Microsoft Exchange 2007/2010/2013` wählen und <kbd>Next</kbd> klicken
5. Name `HSR` eingeben und <kbd>Next</kbd> klicken
6. Folgende Einstellungen machen:

    Einstellung            | Wert
    ---------------------- | ---
    Exchange Type          | Hosted Exchange
    Server URL             | `https://webmail.hsr.ch/ews/exchange.asmx`
    Primary email address: | <var>lange HSR-Email-Adresse</var> (<code><var>vorname.nachname</var>@hsr.ch</code>) z.B.&nbsp;`maria.muster@hsr.ch`
    Username:              | <var>kurze HSR-Email-Adresse</var> (<code><var>username</var>@hsr.ch</code>) z.B.&nbsp;`mmuster@hsr.ch`
    Domain name:           | <var>(leer lassen)</var>
    Share Folder Id:       | <var>(leer lassen)</var>

    und <kbd>Check server and mailbox</kbd> klicken
7. Die zusätzlich erscheinenden Einstellungen belassen:

    Einstellung            | Wert
    ---------------------- | ---
    Folder base            | Calendar folder
    Path below folder base | `/`

    und <kbd>next</kbd> klicken
8. <kbd>Finish</kbd> klicken


## Links

- [Thunderbird im ubuntuusers-Wiki](https://wiki.ubuntuusers.de/Thunderbird/)

{% endtoggle %}
