---
title: WLAN
---
## Technische Angaben

Einstellung | Wert
----------- | ----
SSID | ```HSR-Secure```
Security | ```WPA & WPA2 Enterprise```
Authentication | ```Protected EAP (PEAP)```
PEAP version | ```Automatic```
Inner authentication | ```MSCHAPv2```
Username | ```mmuster```
Password | ```GeHeim007```


## WLAN unter Ubuntu einrichten

1. **Netzwerk auswählen**<br>
	Wähle unter den verfügbaren Wifi-Netzwerken ```HSR-Secure``` aus.
	{% lightbox /assets/hsr/wlan/wlan_select-ssid.png --data="wlan ubuntu" --title="Auswählen des WLAN-Netzwerkes" --alt="Wifi-Netzwerk HSR-Secure" %}

2. **Wi-Fi Netzwerk Authentifikation**<br>
	Wähle folgende Einstellungen für die Authentifikation des Netzwerkes:
	{% lightbox /assets/hsr/wlan/wlan_authentication.png --data="wlan ubuntu" --title="Einstellungen Authentication" --alt="Wifi-Netzwerk HSR-Secure Authentifikation" %}

3. Die Meldung des fehlenden Zertifikates kann ignoriert werden.
4. Du bist nun verbunden! :tada:
	{% lightbox /assets/hsr/wlan/wlan_connected.png --data="wlan ubuntu" --title="Erfolgreich verbunden" --alt="Wifi-Netzwerk HSR-Secure Connected" %}

