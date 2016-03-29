---
layout: page
permalink: /contribute/
---

# Webseite altcomp.vshsr.ch

## Wie kann ich Mithelfen?
Noch sind wir in einem ganz frühen Stadium und freuen uns über DEINE Mithilfe :thumbsup::tada:

Wenn du Ideen oder Fragen hast, über einenn Schreibfehler gestolpert bist, etwas nicht
verständlich findest oder uns loben / kritisieren möchstest, dann freuen wir uns riesig von dir zu hören!

Wir verwalten und disskutieren unsere Aufgaben mittels [Github Issues](https://github.com/altcomphsr/altcomphsr.vshsr.ch/issues).
Wenn du mit Github nicht vertraut bist, dann schreib uns einfach [eine E-Mail](mailto:altcomphsr@vshsr.ch)!

Am wichtigsten, dass du dich meldest - wir helfen dir geren weiter!

## Bevor du loslegst....
Um mitzuarbeiten solltest du ein Grundwissen über Git haben. Ein guter Einstig ist [das Interaktive Git Tutorial von Github](https://try.github.io/).

Für reine Textbeiträge musst nicht wirklich verstehen, wie die Website zusammengebaut wird.
Alle Inhalte werden in Textdateien in den Verzeichnissen ``_hsr``, ``_app`` und ``pages``
verwaltet (Siehe [Seitenhierarchie]('/styleguide/#seitenhierarchie')). Diese Textdateien sind in *Markdown* geschrieben. Die [einfache Einführung in Markdown von Designbits](http://www.designbits.de/artikel/markdown-eine-kleine-einfuehrung/) ist ein guter Einstiegspunkt - eine etwas ausführlichere Syntaxbeschreibung ist [Adam Pritchards Markdown Cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet).

Aufgepasst: Im Verzeichnis ``_site`` solltest du nichts von Hand anpassen, denn die Änderungen werden automatisch verworfen.

Für ein einheitliches Look & Feel haben wir einen einfachen **[Styleguide](http://altcomp.raphael.li/styleguide/)** erstellt. Dieser ist nicht in Stein gemeisselt - du darfst gerne Änderungen vorschlagen!


## Beispiel eines Beitrags
Folgende Schritt für Schritt Beschreibung eines Beitrags soll dir aufzeigen,
wie du auch beitragen kannst. Konkret wird ein Tippfehler korrigiert.

1. [Ich habe das Projekt lokal eingerichtet](#projekt-lokal-einrichten)
2. Der Fehler ist auf der Unterseite Verein (`/verein/`). Anhand der [Seitenhierarchie]('/styleguide/#seitenhierarchie') finde ich heraus wo die betroffene Datei liegt: `pages/verein.md`
3. Ich öffne die Datei in meinem Editor.
4. Der Fehler ist dank der Suchfunktion schnell gefunden. Also schnell korrigieren!
5. Nun bin ich bereit zum check-in. Als erstes *stage* ich die betroffene Datei

    ```bash
    git add pages/verein.md
    ```
6. Ich überlege mir eine kurze und aussagekräftige Commit-Message und mache den Commit:

    ```bash
    git commit -m "Fix typo in URL to statuten"
    ```
7. Ich pushe nun meine Änderungen auf github

    ```bash
    git push origin master
    ```
8. Nun bin ich bereit zum [Pull-Request](https://help.github.com/articles/using-pull-requests/).
   Auf der Seite meines Forks klicke ich auf `Pull request` <br>
   ![Screenshot zum start eines Pull requests](/assets/contribute/beispiel_beitrag_1.png)
9. Ich überprüfe, dass der *Base Fork* das originale Repository ist (1), dass der *Head Fork*
   mein Repository ist(2) und dass gemerged werden kann (3). Los gehts (4)! <br>
   ![Screenshot zur Überprüfung des Pull requests](/assets/contribute/beispiel_beitrag_2.png)
10. Ich schreibe eine Kurze Beschreibung zu meine Pull request <br>
    ![Screenshot zur Beschreibung](/assets/contribute/beispiel_beitrag_3.png)
11. Der Pull request ist nun eröffnet! Hier können nun Code-Reviews / Diskussionen enstehen bevor
    der Commit gemerged wird
12. Ist alles OK, so wird der Pull-Request gemerged - und damit ist mein Beitrag abgeschlossen
    ![Screenshot - gemerged](/assets/contribute/beispiel_beitrag_4.png)


## Projekt lokal einrichten

Um an der Website mitarbeiten zu können benötigst du einen [Github Account](http://github.com/join).

1. **Benötigte Abhängigkeiten installieren**<br>
   Bevor du loslegen kannst, musst [Git](https://git-scm.com/), Make und [Docker](https://docs.docker.com/engine/installation/) installieren: <br>
   [Git Jetzt installieren](apt://git)
   [Make Jetzt installieren](apt://make)
   [Docker Jetzt installieren](apt://docker)
2. **Forke das Projekt auf Github**<br>
   Gehe dazu mit dem Webbrowser auf das [Repository altcomp.vshsr.ch](https://github.com/altcomphsr/altcomphsr.vshsr.ch) und klicke auf `Fork`<br>
   ![Screenshot zum Forken eines Projekts](/assets/contribute/projekt_einrichten_1.png)
3. Wenn du in einer Organisation bist, dann Forke das Projekt zu deinem Benutzer<br>
   ![Screenshot wohin geforkt werden soll](/assets/contribute/projekt_einrichten_2.png)
4. Du bist nun auf deine Fork des Projekts. Kopiere die URL zum Repository
   ![Screenshot des neu erstellten Forks](/assets/contribute/projekt_einrichten_3.png)
5. Öffne ein [Terminal](https://wiki.ubuntuusers.de/Terminal/), klone deinen Fork und wechsle in das Arbeitsverzeichnis

    ```bash
    git clone <url-zum-fork>
    cd altcomphsr.vshsr.ch
    ```
6. Das war es schon. Nun kannst du mit den folgenden Kommando die Webseite bauen. Unter OSX muss make ohne sudo aufgerufen werden.

    ```bash
    sudo make
    ```
7. Du kannst nun mit dem Browser auf der Addresse <http://localhost:4000> deine lokale Kopie der Altcomp Website aufrufen.

Alle Änderungen die du vornimmst, werden automatisch geladen.

Wenn du genug hast, kannst du mit der Tastenkombination ``ctrl`` + ``c`` abbrechen.

## Technischer Hintergrund
Die neue Seite des Altcomp ist im Gegensatz zu bisher kein dynamisches [Wiki](https://de.wikipedia.org/wiki/Wiki) sondern eine mit [Jekyll](http://jekyllrb.com) generierte statische Webseite.

Mehr Details zu Jekyll findest du auf der [offiziellen Jekyll Webseite](http://jekyllrb.com).
