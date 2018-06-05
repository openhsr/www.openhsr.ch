---
title: Back In Time
teaser_title: Backup
teaser:
    Back In Time ist ein einfaches Backup Tool für Linux das Snapshots für jedes Verzeichnis erstellt.
category: backup
---

Back In Time ist eine Backup Software für Linux, basierend auf [rsync](https://wiki.ubuntuusers.de/rsync/).
Ihr grösster Vorteil gegenüber dem vorinstallierten [Déjà Dup](https://wiki.ubuntuusers.de/D%C3%A9j%C3%A0_Dup/) ist, dass Snapshots erstellt werden können.
Ein Snapshot erlaubt es dir, den Stand eines Ordners zu einem bestimmten Datum wiederherzustellen.

Da Back In Time einige Vorteile bietet, empfehlen wir Back In Time.

{% toggle %}

## Installation
1. **Benötigte Abhängigkeiten installieren**<br>
   Bevor du loslegen kannst, musst du das Paket ``backintime-gnome`` installieren.
   [Jetzt installieren](http://apt.ubuntu.com/p/backintime-gnome)
{% toggle %}


{% endtoggle %}
## Konfiguration
1. Beim ersten Starten von Back In Time erscheint ein Konfigurations-Dialog, bei welchem du eine bereits existierende Konfiguration wiederherstellen kanst. Da dies wahrscheinlich nicht der Fall ist, kannst du den Dialog mit "Nein/No" schliessen. Es erscheint ein weiterer Dialog in dem du alle wichtigen Parameter einstellen kannst.
{% lightbox /assets/app/backintime/step1.png --data="backintime configuration" --title="Initialer Konfigurations Dialog" --alt="Initialer Konfigurations Dialog %}
2. Im Reiter "Allgemein/General" spezifizierst du den Speicherort, wo du dein Backup erstellen möchtest. Hier wählst du am besten einen Ordner auf einer externen Festplatte aus. Zusätzlich kann hier festgelegt werden, wann das Backup normalerweise durchgeführt werden soll. Es wird empfohlen das Backup zu verschlüsseln und mit einem starken Passwort zu schützen. Dazu wählst du den Modus "Lokal verschlüsselt".
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
- [Offizielle Webseite](http://backintime.le-web.org/)
- [Back In Time im ubuntuusers-Wiki](https://wiki.ubuntuusers.de/Back_In_Time/)
{% endtoggle %}
