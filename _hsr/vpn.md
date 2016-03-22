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
   ![Netzwerkeinstellungen über den Netzwerkindikatoren öffnen](/assets/hsr/vpn/vpn_networkmanager_1.png)
3. Klick auf den Button **Add**<br>
  ![Klick auf den Button Add](/assets/hsr/vpn/vpn_networkmanager_2.png)
4. Wähle in der Liste den Eintrag **Cisco-kompatibler VPN-Client (vpnc)** aus<br>
  ![Cisco-kompatibler VPN-Client auswählen](/assets/hsr/vpn/vpn_networkmanager_3.png)
5. Weiter geht's mit einem Klick auf **Create...**
6. **VPN Einstellungen eintragen** - natürlich mit eigenem Benutzernamen & Passwort<br>
  ![VPN Einstellungen](/assets/hsr/vpn/vpn_networkmanager_4.png)<br>
  Es sind keine erweiterten Einstellungen und Konfigurationen in anderen Tabs erforderlich.
7. Speichern mit Klick auf **Save**. Der neue Eintrag erscheint nun in der Liste<br>
  ![HSR-VPN in der Liste der VPNs](/assets/hsr/vpn/vpn_networkmanager_5.png)
8. **Verbindung über den Netzwerkindikatoren** am oberen linken Bildschirmrand via ```VPN Connections``` + ```HSR VPN``` herstellen<br>
  ![Verbindung über den Netzwerkindikatoren herstellen](/assets/hsr/vpn/vpn_networkmanager_6.png)<br>
  ![Verbindung wurde erfolgreich hergestellt!](/assets/hsr/vpn/vpn_networkmanager_7.png)
