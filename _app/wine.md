---
title: Wine
teaser_title: Windows Programme nativ auf Linux
teaser: Wine stellt eine Windows Laufzeitumgebung für Linux Systeme zur Verfügung. Damit können Applikationen, für die es keine Alternativen gibt, schnell und einfach auf deinem PC zum Laufen gebracht werden.
category: wine 
---

## Einleitung
[Wine](https://de.wikipedia.org/wiki/Wine) schafft eine Laufzeitumgebung für Windowsprogramme auf deinem Linux System. Installiere Wine mit dem Package-Manager deiner Wahl:


```bash
sudo apt install wine
```

Falls keine Installation für das Programm nötig ist, kannst du die nächsten 2 Punkte überspringen.

### Softwareinstallation
Um ein Programm zu installieren, benötigst du eine Installationsdatei. Nennen wir sie ab jetzt `setup.exe`, der Name kann aber variieren. Mit einem Rechtsklick auf diese Datei kannst du den Punkt `Mit anderem Programm öffnen` (oder ähnlich) und im darauf folgenden Dialog den Eintrag `Wine Windows Program Loader` auswählen. Das Setup sollte nun starten.

Alternativ kannst du das Setup auch über das Terminal starten:

```bash
sudo wine setup.exe
```

### Wo soll ich die Software installieren?
Gute Frage, unter Windows werden Programme ja fast immer unter  
`C:\Programme\Blabla` installiert. Falls du während er Installation gefragt wirst, wo die Applikation abgelegt werden soll, lasse am besten den vorgewählten Pfad unangepasst. Wine erstellt in deinem Home-Verzeichnis einen `.wine/drive_c` Ordner, welcher ein Pseudo C-Laufwerk abbildet. Programme merken nicht, dass ihnen diese Verzeichnisstruktur nur vorgegaukelt wird. Merke dir während der Installation, wo du das Programm installierst.

### Wie starte ich nun das installierte Programm?
Um ein Programm zu starten musst du gleich vorgehen, wie bei der Installation: Rechtsklick auf die Datei, `Mit anderem Programm öffnen` + `Wine Windows Program Loader`. Oder du kannst den oben genannten Kommandozeilenbefehl verwenden.

Falls du vorher eine Installation getätigt hast, öffne den vorher genannten `.wine/drive_c` Ordner und suche von dort aus dein Programm. Wir erinnern uns, dieser Ordner ist eigentlich das `C:\` Laufwerk unter Windows. Hast du die Software unter `C:\Programme\Blabla` installiert, findest du es auf deinem Linux unter `.wine/drive_c/Programme/Blabla`. Dort befindet sich nun auch die `.exe` Datei, welche du nun mit der Wine Runtime starten kannst.

### Funktioniert das immer?
Leider nicht. Welche Programme fehlerfrei, welche nur teilweise und welche gar nicht funktioneren ist schwierig festzuhalten. Die untenstehende Liste ist für Programme gedacht, welche keine Linux-freundliche Alternative haben und vor allem im Unterricht oder Praktikas verwendet werden. Wir möchten dich hiermit ermutigen, mitzuhelfen und die Liste aktuell zu halten :-)

## DASYLab
### Eckdaten
Getestet: HS2016

Der Dozent besteht auf die Verwendung von DASYLab, was nur für Windows angeboten wird und deshalb in einer VM auf Linux und macOS ausgeführt werden sollte. Jedoch funktioniert auch der Betrieb mit Wine sehr gut. Verwende am besten die Dateien vom Skripteserver.

### Spezielles
#### Fehlermeldung beim Programmstart
Beim Programmstart wird man bezüglich nicht vorhandener Ordner gewarnt.
![Fehlermeldung beim Programmstart](/assets/app/wine/dasylab-1.png)
Du kannst diese Meldungen ignorieren oder unter `Optionen` + `Standard-Ordner...` einen existierenden Standardordner festlegen, damit diese Meldung nicht mehr erscheint.

#### Kaputte Fenster
DASYLab hat verschiedene Fenster (Zeitbereich, Pegel, ...). Bei denen kann es zu Anzeigefehlern kommen. Mit einem Klick auf `Ansicht` + `Alle Fenster` + `Wieder anzeigen` sollten die Fehler verschwinden.
![Anzeigefehler der Fenster](/assets/app/wine/dasylab-2.png)

#### Desktopdateien
Die auf dem Desktop angelegten Dateien kannst du bei Bedarf löschen.
