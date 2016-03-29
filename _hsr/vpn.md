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


## VPN unter Ubuntu einrichten

1. **Benötigte Abhängigkeiten installieren**<br>
   Bevor du loslegen kannst, musst du noch das Paket ``network-manager-vpnc`` installieren.
   [Jetzt installieren](apt://network-manager-vpnc)
2. **Öffne die Netzwerkeinstellungen** über den Netzwerkindikatoren am oberen linken Bildschirmrand via ```VPN Connections``` + ```Configure VPN...```<br>
   {% lightbox /assets/hsr/vpn/vpn_networkmanager_1.png --data="vpn" --title="Netzwerkeinstellungen über den Netzwerkindikatoren" --alt="Netzwerkeinstellungen über den Netzwerkindikatoren" %}
3. Klick auf den Button **Add**<br>
  {% lightbox /assets/hsr/vpn/vpn_networkmanager_2.png --data="vpn" --title="Klick auf den Button Add" --alt="Klick auf den Button Add" %}
4. Wähle in der Liste den Eintrag **Cisco-kompatibler VPN-Client (vpnc)** aus<br>
  {% lightbox /assets/hsr/vpn/vpn_networkmanager_3.png --data="vpn" --title="Cisco-kompatibler VPN-Client auswählen" --alt="Cisco-kompatibler VPN-Client auswählen" %}
5. Weiter geht's mit einem Klick auf **Create...**
6. **VPN Einstellungen eintragen** - natürlich mit eigenem Benutzernamen & Passwort<br>
  {% lightbox /assets/hsr/vpn/vpn_networkmanager_4.png --data="vpn" --title="VPN Einstellungen" --alt="VPN Einstellungen" %}
  <br>
  Es sind keine erweiterten Einstellungen und Konfigurationen in anderen Tabs erforderlich.
7. Speichern mit Klick auf **Save**. Der neue Eintrag erscheint nun in der Liste<br>
  {% lightbox /assets/hsr/vpn/vpn_networkmanager_5.png --data="vpn" --title="HSR-VPN in der Liste der VPNs" --alt="HSR-VPN in der Liste der VPNs" %}
8. **Verbindung über den Netzwerkindikatoren** am oberen linken Bildschirmrand via ```VPN Connections``` + ```HSR VPN``` herstellen<br>

  {% lightbox /assets/hsr/vpn/vpn_networkmanager_6.png --data="vpn" --title="Verbindung über den Netzwerkindikatoren herstellen" --alt="Verbindung über den Netzwerkindikatoren herstellen" %}
  <br>
  {% lightbox /assets/hsr/vpn/vpn_networkmanager_7.png --data="vpn" --title="Verbindung wurde erfolgreich hergestellt" --alt="Verbindung wurde erfolgreich hergestellt" %}
