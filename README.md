---
layout: page
permalink: /contribute/
---

# Webseite altcomp.vshsr.ch

Die neue Seite des Altcomp ist im Gegensatz zu bisher kein dynamisches [Wiki](https://de.wikipedia.org/wiki/Wiki) sondern eine mit [Jekyll](http://jekyllrb.com) generierte statische Webseite.

## Wie kann ich mitarbeiten?
Noch sind wir in einem ganz frühen Stadium und freuen uns über jede Mithilfe!
Alle Aufgaben werden als [Github Issues](https://github.com/altcomphsr/altcomphsr.vshsr.ch/issues)
erfasst und beschrieben. Diene Ideen sind willkommen - eröffne einfach ein [neues Issue](https://github.com/altcomphsr/altcomphsr.vshsr.ch/issues/new).

Für reine Textbeiträge musst du Jekyll nicht im Detail verstehen. Relevant ist lediglich, dass
Jekyll aus Markdown-Dateien statisches HTML in das Verzeichnis `_site` generiert. In diesem
Verzeichnis sollte also nichts von Hand angepasst werden! Mehr Details zu Jekyll findest du
auf der [offiziellen Jekyll Webseite](http://jekyllrb.com).

Alle Texte der Unterseiten werden in Markdown geschrieben. Die [einfache Einführung von Designbits](http://www.designbits.de/artikel/markdown-eine-kleine-einfuehrung/) ist ein guter
Einstiegspunkt - eine ausführlichere Syntaxbeschreibung ist [Adam Pritchards Markdown Cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet).

## Projekt lokal einrichten

Um das Projekt lokal einzurichten benötigst du [Git](https://git-scm.com/), Make und [Docker](https://docs.docker.com/engine/installation/).

Nun kannst du das Projekt [forken, klonen](http://gitbu.ch/ch11.html) und mit folgenden Kommandos generieren:

```bash
# Projekt klonen
git clone https://github.com/altcomphsr/altcomphsr.vshsr.ch.git
cd altcomphsr.vshsr.ch

# Docker image und seite bauen und auf http://0.0.0.0:4000 verfügbar machen
# abbruch mit Ctrl+C
sudo make
```

(Unter OSX muss make ohne sudo aufgerufen werden)

Die generierte Seite ist nun auf <http://localhost:4000> erreichbar.
