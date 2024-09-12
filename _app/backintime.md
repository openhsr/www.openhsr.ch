---
title: Back In Time
teaser_title: Backup
teaser:
    Back In Time ist ein einfaches Backup Tool für GNU/Linux mit dem sich Backups von Verzeichnisen und Dateien anfertigen und einfach Wiederherstellen lassen.
category: backup
---

[Back In Time](https://github.com/bit-team/backintime) ist eine Backup Software für GNU/Linux, basierend auf [rsync]((https://de.wikipedia.org/wiki/Rsync).
Ihr grösster Vorteil gegenüber dem vorinstallierten [Déjà Dup](https://wiki.ubuntuusers.de/D%C3%A9j%C3%A0_Dup/) ist, dass Snapshots erstellt werden können. Ein Snapshot erlaubt es dir, den Stand eines Ordners zu einem bestimmten Datum wiederherzustellen. Für die Snapshots wird kein Archiv- oder Containerformat verwendet, sondern die gesicherten Dateien und Ordner können mit jedem Dateimanager problemlos genutzt und durchsucht werden, ohne dafür Back In Time installieren und nutzen zu müssen.

Da Back In Time einige Vorteile bietet, empfehlen wir Back In Time.

{% toggle %}

## Installation
1. **Benötigte Abhängigkeiten installieren**<br>
   Bevor du loslegen kannst, musst du das Paket ``backintime-qt`` installieren.
{% toggle %}


{% endtoggle %}
## Konfiguration
1. Beim ersten Starten von Back In Time erscheint ein Konfigurations-Dialog, bei welchem du eine bereits existierende Konfiguration wiederherstellen kanst. Da dies wahrscheinlich nicht der Fall ist, kannst du den Dialog mit "Nein/No" schliessen. Es erscheint ein weiterer Dialog in dem du alle wichtigen Parameter einstellen kannst.
{% lightbox /assets/app/backintime/step1.png --data="backintime configuration" --title="Initialer Konfigurations Dialog" --alt="Initialer Konfigurations Dialog %}
2. Im Reiter "Allgemein/General" spezifizierst du den Speicherort, wo du dein Backup erstellen möchtest. Hier wählst du am besten einen Ordner auf einer externen Festplatte aus. Zusätzlich kann hier festgelegt werden, wann das Backup normalerweise durchgeführt werden soll. Grundsätzlich ist es zu empfehlen ein Backup zu verschlüsseln. Mit Back In Time ist es derzeit (Stand 2024, ab Version 1.5.2) jedoch nicht empfehlen die Funktion "Lokal verschlüsselt" zu nutzen, da die dahinter stehende Technologie (EncFS) auf absehbare Zeit nicht mehr unterstützt wird. Ob ein Ersatz implementiert wird, hängt von den verfügbaren Ressourcen im Projekt ab. Siehe dazu auch das [Whitepaper](https://github.com/bit-team/backintime/blob/dev/doc/ENCRYPT_TRANSITION.md).
{% lightbox /assets/app/backintime/step2.png --data="backintime configuration" --title="Initialer Konfigurations Dialog" --alt="Initialer Konfigurations Dialog %}

3. Im Reiter "Hinzufügen/Include" kannst du alle Ordner auswählen die du gerne sichern möchtest. Gleiches gilt für einzelne Ordner, die du gerne aus dem Backup exkludieren möchtest.
{% lightbox /assets/app/backintime/step3.png --data="backintime configuration" --title="Initialer Konfigurations Dialog" --alt="Initialer Konfigurations Dialog %}

4. Mit "OK" kann der Dialog quittiert werden. Dein Backup ist eingerichtet und funktionsbereit.



{% endtoggle %}

{% toggle %}
## Sichern
Es gibt zwei Varianten, wie eine Sicherung durchgeführt werden kann:

1. Manuell über die Schaltfläche "Snapshot erstellen"
2. Automatisch zu einer bestimmten Zeit mittels konfiguriertem Cron Job. Die automatische Variante hast du bei der Konfiguration festgelegt.

{% lightbox /assets/app/backintime/step4.png --data="backintime save" --title="Initialer Konfigurations Dialog" --alt="Initialer Konfigurations Dialog %}


{% endtoggle %}

{% toggle %}
## Wiederherstellen
Spätestens jetzt bist du froh ein Backup eingerichtet zu haben :smiley:  
Das Wiederherstellen verlorener oder veränderter Datein geht zum Glück einfach von der Hand.

1. Snapshot in der Zeitleiste auswählen
2. Über die Schaltfläche "Wiederherstellen" wird die Datei in das ursprüngliche Verzeichnis kopiert.
3. Vorhandene Dateien erhalten einen neuen Dateinamen "Originaldateiname.backup.datum", um zu vermeiden, dass eine bestehende Datei überschrieben wird.

{% lightbox /assets/app/backintime/step5.png --data="backintime rescue" --title="Initialer Konfigurations Dialog" --alt="Initialer Konfigurations Dialog %}


{% endtoggle %}


{% toggle %}
## Links
- [Offizielle Webseite]([http://backintime.le-web.org/](https://github.com/bit-team/backintime))
- [Back In Time im ubuntuusers-Wiki](https://wiki.ubuntuusers.de/Back_In_Time/)
{% endtoggle %}
