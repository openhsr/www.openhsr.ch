---
title: VPN
---
## Technische Angaben

Einstellung | Wert
----------- | ----
Gateway | ```vpn.hsr.ch```
Benutzername | ```mmuster```
Benutzerpasswort | ```GeHeim007```
Gruppenname | ```hsrremote```
Gruppenpasswort | ```hsrremote```


{% toggle %}
## VPN unter Ubuntu einrichten

Hinweis: Richte das VPN nicht im HSR-Secure-WLAN ein - aus dem HSR-Netz können keine VPN-Verbindungen hergestellt werden.

1. **Benötigte Abhängigkeiten installieren**<br>
   Bevor du loslegen kannst, musst du noch das Paket ``network-manager-vpnc-gnome`` installieren.
   [Jetzt installieren](apt://network-manager-vpnc-gnome)
2. **Öffne die Netzwerkeinstellungen** über den Netzwerkindikatoren am oberen linken Bildschirmrand via ```VPN-Verbindungen``` + ```VPN konfigurieren...```<br>
   {% lightbox /assets/hsr/vpn/vpn_networkmanager_1.png --data="vpn ubuntu" --title="Netzwerkeinstellungen über den Netzwerkindikatoren" --alt="Netzwerkeinstellungen über den Netzwerkindikatoren" %}
3. Klick auf den Button **Hinzufügen**<br>
  {% lightbox /assets/hsr/vpn/vpn_networkmanager_2.png --data="vpn ubuntu" --title="Klick auf den Button Add" --alt="Klick auf den Button Add" %}
4. Wähle in der Liste den Eintrag **Cisco-kompatibler VPN-Client (vpnc)** aus<br>
  {% lightbox /assets/hsr/vpn/vpn_networkmanager_3.png --data="vpn ubuntu" --title="Cisco-kompatibler VPN-Client auswählen" --alt="Cisco-kompatibler VPN-Client auswählen" %}
5. Weiter geht's mit einem Klick auf **Erzeugen...**
6. **VPN Einstellungen eintragen** - natürlich mit eigenem Benutzernamen & Passwort<br>
  {% lightbox /assets/hsr/vpn/vpn_networkmanager_4.png --data="vpn ubuntu" --title="VPN Einstellungen" --alt="VPN Einstellungen" %}
  <br>
  Es sind keine erweiterten Einstellungen und Konfigurationen in anderen Tabs erforderlich.
7. Speichern mit Klick auf **Speichern**. Der neue Eintrag erscheint nun in der Liste<br>
  {% lightbox /assets/hsr/vpn/vpn_networkmanager_5.png --data="vpn ubuntu" --title="HSR-VPN in der Liste der VPNs" --alt="HSR-VPN in der Liste der VPNs" %}
8. **Verbindung über den Netzwerkindikatoren** am oberen linken Bildschirmrand via ```VPN-Verbindungen``` + ```HSR VPN``` herstellen<br>

  {% lightbox /assets/hsr/vpn/vpn_networkmanager_6.png --data="vpn ubuntu" --title="Verbindung über den Netzwerkindikatoren herstellen" --alt="Verbindung über den Netzwerkindikatoren herstellen" %}
  <br>
  {% lightbox /assets/hsr/vpn/vpn_networkmanager_7.png --data="vpn ubuntu" --title="Verbindung wurde erfolgreich hergestellt" --alt="Verbindung wurde erfolgreich hergestellt" %}

## VPN unter macOS einrichten

1. **Öffne die Netzwerkeinstellungen** und klicke unten links auf das **Plus**<br>
  {% lightbox /assets/hsr/vpn/mac_vpn1.png --data="vpn mac" --title="Netzwerkeinstellungen" --alt="Netzwerkeinstellungen" %}
2. Wähle ```VPN```, ```Cisco IPSec``` und wähle einen Verbindungsnamen. Klicke anschliessend auf **Erstellen**.<br>
  {% lightbox /assets/hsr/vpn/mac_vpn2.png --data="vpn mac" --title="VPN Einstellungen" --alt="VPN Einstellungen" %}
3. Gib rechts die **Serverdaten** ein - natürlich mit eigenem Benutzernamen. Das Passwort kann leer gelassen werden.<br>
   Klicke auf **Authentifizierungseinstellungen**.
  {% lightbox /assets/hsr/vpn/mac_vpn3.png --data="vpn mac" --title="VPN Serverdaten" --alt="VPN Serverdaten" %}
4. Gib ```hsrremote``` als Schlüssel und Gruppenname ein<br>
  {% lightbox /assets/hsr/vpn/mac_vpn4.png --data="vpn mac" --title="VPN Authentifizierungseinstellungen" --alt="VPN Authentifizierungseinstellungen" %}
5. Optional kannst du das Häckchen setzen bei ```VPN in der Menüleiste anzeigen```. Damit erscheint ein praktisches **Icon in der Statusbar**, zum schnellen An- und Abmelden.<br>
  {% lightbox /assets/hsr/vpn/mac_vpn5.png --data="vpn mac" --title="VPN: Hacken für Icon in der Statusbar" --alt="VPN: Hacken für Icon in der Statusbar" %}<br>
  {% lightbox /assets/hsr/vpn/mac_vpn6.png --data="vpn mac" --title="VPN Statusbar" --alt="VPN Statusbar" %}
6. Nun kannst du dich mit deinem **HSR Login** anmelden.<br>
  {% lightbox /assets/hsr/vpn/mac_vpn7.png --data="vpn mac" --title="VPN Login" --alt="VPN Login" %}<br>

## VPN einrichten unter anderen Linux Distributionen

### Arch Linux

Die Einrichtung via Netzwerk-Manager erfolgt analog zu Ubuntu. Als Abhängigkeit wird das Paket `networkmanager-vpnc` benötigt, welches sich im `extra` Repository befindet.

```bash
pacman -S networkmanager-vpnc
```

### Fedora

Die Einrichtung via Netzwerk-Manager erfolgt analog zu Ubuntu.
Die Abhängigkeit (Paket `NetworkManager-vpnc`) sollte bereits vorinstalliert sein.

{% endtoggle %}
