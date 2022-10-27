---
title: VPN
---
## Technische Angaben

Einstellung | Wert
----------- | ----
Gateway | ```vpn.ost.ch```
Benutzername | ```maria.muster@@ost.ch```
Benutzerpasswort | ```GeHeim007```

Zusätzlich brauchst du die Microsoft Authenticator App. Einen Link solltest du vom OST Helpdesk erhalten haben.

{% toggle %}
## VPN unter Ubuntu einrichten

Hinweis: Richte das VPN nicht im eduroam der OST ein - aus dem eduroam können keine VPN-Verbindungen hergestellt werden.

1. **Benötigte Abhängigkeiten installieren**<br>
   Bevor du loslegen kannst, musst du noch das Paket ``network-manager-openconnect-gnome`` installieren.
   [Jetzt installieren](http://apt.ubuntu.com/p/network-manager-openconnect-gnome)
2. **Öffne die Netzwerkeinstellungen** über den Netzwerkindikatoren am oberen rechten Bildschirmrand via dem ```Werkzeug-Symbol``` + ```Netzwerkeinstellungen```<br>
   {% lightbox /assets/hsr/vpn/vpn01.png --data="vpn ubuntu" --title="Netzwerkeinstellungen über den Netzwerkindikatoren" --alt="Netzwerkeinstellungen über den Netzwerkindikatoren" %}
3. Klick auf den Button **+** um eine neue VPN Konfiguration hinzuzufügen<br>
  {% lightbox /assets/hsr/vpn/vpn02.png --data="vpn ubuntu" --title="Klick auf den Button +" --alt="Klick auf den Button +" %}
4. Wähle in der Liste den Eintrag **Cisco AnyConnect Compatible VPN (openconnect)** aus<br>
  {% lightbox /assets/hsr/vpn/vpn03.png --data="vpn ubuntu" --title="Cisco AnyConnect Compatible VPN-Client auswählen" --alt="Cisco AnyConnect Compatible VPN-Client auswählen" %}
5. **VPN Einstellungen eintragen** - natürlich mit eigenem Benutzernamen & Passwort<br>
  {% lightbox /assets/hsr/vpn/vpn04.png --data="vpn ubuntu" --title="VPN Einstellungen" --alt="VPN Einstellungen" %}
  <br>
  Es sind keine erweiterten Einstellungen und Konfigurationen in anderen Tabs erforderlich.
6. Speichern mit Klick auf **Speichern**. Der neue Eintrag erscheint nun in der Liste<br>
  {% lightbox /assets/hsr/vpn/vpn05.png --data="vpn ubuntu" --title="OST-VPN in der Liste der VPNs" --alt="OST-VPN in der Liste der VPNs" %}
7. **Verbindung über den Netzwerkindikatoren** am oberen rechten Bildschirmrand via ```VPN``` + ```OST``` herstellen<br>
  {% lightbox /assets/hsr/vpn/vpn06.png --data="vpn ubuntu" --title="Verbindung über den Netzwerkindikatoren herstellen" --alt="Verbindung über den Netzwerkindikatoren herstellen" %}
8. Einloggen mit Usernamen, Passwort und achtstelligem Swivel Token und **Verbinden**. :warning: Setze die Checkbox Save passwords **nicht**, da dadurch dein Account temporär gesperrt werden könnte<br>
  {% lightbox /assets/hsr/vpn/vpn07.png --data="vpn ubuntu" --title="OST-VPN Login" --alt="OST-VPN Login" %}
  <br>
  {% lightbox /assets/hsr/vpn/vpn08.png --data="vpn ubuntu" --title="Verbindung wurde erfolgreich hergestellt" --alt="Verbindung wurde erfolgreich hergestellt" %}

## VPN unter macOS einrichten

### 1. OpenConnect mittels [Homebrew](https://brew.sh) installieren

```bash
brew update
brew install openconnect
```

Ältere Versionen von OS X ([10.6 und älter](http://www.infradead.org/openconnect/building.html)) benötigen zusätzlich einen TUN/TAP-Treiber wie [TunTap](http://tuntaposx.sourceforge.net).

Weiterführende Informationen: [OpenConnect VPN on Mac OS X](https://gist.github.com/moklett/3170636) (siehe Kommentare)

### 2. Verbindung öffnen

```bash
sudo openconnect vpn.ost.ch
```

Beim ersten Promt den **Benutzernamen**, beim zweiten das **Passwort** und beim dritten den **Code aus der Swivel-App** eingeben.

## VPN einrichten unter anderen Linux Distributionen

### Arch Linux

Die Einrichtung via Netzwerk-Manager erfolgt analog zu Ubuntu. Als Abhängigkeit wird das Paket `networkmanager-openconnect` benötigt, welches sich im `extra` Repository befindet.

```bash
pacman -S networkmanager-openconnect
```

{% endtoggle %}
