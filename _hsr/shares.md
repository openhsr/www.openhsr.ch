---
title: Netzwerkfreigaben
---

## Technische Angaben

Einstellung | Wert
----------- | ----
Benutzername | ```mmuster```
Benutzerpasswort | ```GeHeim007```
Domäne | ```hsr.ch```

## Pfade zu den HSR Netzwerkfreigaben
Name | Pfad
---- | -----
Skripte	| ```smb://c206.hsr.ch/skripte```
Scratch	 | ```smb://c206.hsr.ch/scratch```
Persönliche Ablage| ```smb://c101.hsr.ch/mmuster```

{% toggle %}
## Netzwerkfreigaben unter Ubuntu einrichten

Bevor du loslegst: Du kannst nur im internen Netz der HSR auf die Netzwerkfreigaben zugreiffen.
Wenn du also nicht mit dem HSR-Secure WLAN verbunden bist musst du dich via [VPN](/hsr/vpn/)
verbinden.

1. Öffne den Dateimanager
2. Verbinde zum Server über das Menu ```Datei``` + ```Mit Server verbinden...```<br>
{% lightbox /assets/hsr/networkshares/ubuntu_networkshares_1.png --data="netzwerkfreigabe-ubuntu" --title="Mit Server Verbinden" --alt="Mit Server Verbinden" %}
3. Gib den Pfad zur Netzwerkfreigabe an. Hier als Beispiel zum Skripteserver<br>
{% lightbox /assets/hsr/networkshares/ubuntu_networkshares_2.png --data="netzwerkfreigabe-ubuntu" --title="Pfad zur Netzwerkfreigabe angeben" --alt="Pfad zur Netzwerkfreigabe angeben" %}<br>
Bestätige mit `Verbinden`
4. Im folgenden Dialog musst du deine Benutzerdaten angeben
{% lightbox /assets/hsr/networkshares/ubuntu_networkshares_3.png --data="netzwerkfreigabe-ubuntu" --title="Benutzerdaten angeben" --alt="Benutzerdaten angeben" %}
Bestätige mit `Verbinden`
5. Du bist nun Verbunden! :tada:
{% lightbox /assets/hsr/networkshares/ubuntu_networkshares_4.png --data="netzwerkfreigabe-ubuntu" --title="Netzwerkfreigabe in der Seitenleiste" --alt="Netzwerkfreigabe in der Seitenleiste" %}
6. Die Netzwerkfreigaben erscheint in der Seitenleiste. Klicke rechts auf das Symbol und wähle ```Lesezeichen hinzufügen```. Damit kannst du das nächste mal direkt auf die Netzwerkfreigabe zugreiffen!
{% lightbox /assets/hsr/networkshares/ubuntu_networkshares_7.png --data="netzwerkfreigabe-ubuntu" --title="Lesezeichen hinzufügen" --alt="Lesezeichen hinzufügen" %}

{% endtoggle %}
