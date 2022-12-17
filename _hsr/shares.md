---
title: Netzwerkfreigaben
---

## Technische Angaben

Einstellung | Wert
----------- | ----
Benutzername | ```max.muster@ost.ch```
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

Bevor du loslegst: Du kannst nur im internen Netz der HSR auf die Netzwerkfreigaben zugreifen.
Wenn du also nicht mit dem HSR-Secure-WLAN verbunden bist, musst du dich via [VPN](/hsr/vpn/)
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
6. Die Netzwerkfreigabe erscheint in der Seitenleiste. Klicke rechts auf das Symbol und wähle ```Lesezeichen hinzufügen```. Damit kannst du das nächste Mal direkt auf die Netzwerkfreigabe zugreifen!
{% lightbox /assets/hsr/networkshares/ubuntu_networkshares_7.png --data="netzwerkfreigabe-ubuntu" --title="Lesezeichen hinzufügen" --alt="Lesezeichen hinzufügen" %}

{% endtoggle %}

{% toggle %}
## Netzwerkfreigaben unter Ubuntu per mount-Befehl

Diese Anleitung hilft dir, falls es dir nicht gelingt, mit der obigen Variante die HSR-Ablagen einzubinden. Sie ist für diejenigen gedacht, die bereits etwas mit Ubuntu vertraut sind. Wir verwenden dazu die Unix-Eigenschaft, dass sich Verzeichnisse per ```mount```-Befehl einbinden lassen. Du kannst danach auf die HSR-Netzwerkfreigaben zugreifen, als wären sie ein gewöhnlicher Ordner in deinem Dateimanager.

1. Öffne den Dateimanager und wechsle ins Verzeichnis ```/mnt```. Erstelle dort einen Ordner mit dem Namen ```hsr```.

2. Wechsle ins Verzeichnis ```hsr``` und erstelle dort vier weitere Ordner. Du kannst ihnen irgendeinen Namen geben oder sie folgendermassen benennen:
 * ```ebooks``` - Ältere und neuere Ebooks
 * ```myshare``` - Deine private Dateiablage. Falls du an einem Kopierer der HSR etwas einscannst, landet es hier. Beachte: Der Speicherplatz ist beschränkt.
 * ```scratch``` - Die temporäre Ablage für alle Studiengänge
 * ```skripte``` - Skripte aller Studiengänge

3. **Optional:** Du kannst jeweils von Hand die Verzeichnisse mounten, müsstest aber alle Einzelheiten von Hand eintragen. Deswegen vereinfachen wir den Vorgang. Öffne einen Texteditor. Trage folgende Zeilen ein:

	```
	username=mmuster
	password=GeHeim007
	``` 

	Speichere die Datei in deinem Home-Verzeichnis unter dem Namen ```.fstab.credentials.hsr```. Vergiss den Punkt zu Beginn der Datei nicht!
	
	**Wichtig:** Wenn du deine Festplatte oder dein Home-Verzeichnis nicht verschlüsselt hast, kann unter Umständen dein Passwort und dein Username leicht ausgelesen werden.

4. Setze die Zugriffsrechte für die Datei, damit niemand ausser dir darauf zugreifen kann. Öffne ein Terminalfenster und tippe:

	```bash
	chmod 600 .fstab.credentials.hsr
	sudo chown maria.root .fstab.credentials.hsr
	```

	Setze anstelle ```maria``` deinen Namen, mit dem du dich in Ubuntu einloggst.

5. Nun musst du noch dem Betriebssystem sagen, wo es diese Information findet und wie es die Ordner einbinden soll, die wir oben erstellt haben. Tippe im Terminal:

	```bash
	sudo gedit /etc/fstab
	```

6. Schreibe zuunterst folgende Zeilen in die fstab-Datei oder kopiere sie gleich:

	```
	//c206.hsr.ch/skripte	/mnt/hsr/skripte	cifs	credentials=/home/maria/.fstab.credentials.hsr,noauto,users,iocharset=utf8,soft,ro  0  0
	//c206.hsr.ch/scratch 	/mnt/hsr/scratch	cifs	credentials=/home/maria/.fstab.credentials.hsr,noauto,users,iocharset=utf8,soft  0  0
	//c101.hsr.ch/mmuster 	/mnt/hsr/myshare	cifs 	credentials=/home/maria/.fstab.credentials.hsr,noauto,users,iocharset=utf8,soft  0  0
	//c206.hsr.ch/ebooks 	/mnt/hsr/ebooks		cifs	credentials=/home/maria/.fstab.credentials.hsr,noauto,users,iocharset=utf8,soft,ro  0  0
	```

	Schreibe anstelle ```maria``` deinen Login-Namen, mit dem du dich in Ubuntu einloggst. Ersetze ```mmuster``` mit dem Login-Namen, den du für die HSR verwendest.

7. Nun kannst du mit folgenden Befehlen die Netzwerkfreigaben einbinden:

	```bash
	mount /mnt/hsr/skripte/
	mount /mnt/hsr/scratch/
	mount /mnt/hsr/myshare/
	mount /mnt/hsr/ebooks/
	```

	Nun kannst du im Dateimanager beispielsweise im Ordner ```/mnt/hsr/skripte``` alle Skripte von der Netzwerkablage sehen, als wären sie auf deinem Computer.

8. Mit folgenden Befehlen trennst du die Verbindung wieder:

	```bash
	umount /mnt/hsr/skripte/
	umount /mnt/hsr/scratch/
	umount /mnt/hsr/myshare/
	umount /mnt/hsr/ebooks/
	```

{% endtoggle %}

