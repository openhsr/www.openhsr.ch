---
title: Github Contribution
tags: Entwicklung
---

Bei einer Contribution in ein öffentliches Github Projekt, gibt es einige Punkte zu beachten. Diese möchten wir die hier zeigen:

## Projektwahl
1. Wähle ein Projekt, dass dein Interesse geweckt hat. Bist du noch auf der Suche, würden sich viele interessante [Open Source Projekte](https://github.com/explore) über deine Mithilfe freuen.
  - Durchsuche zuerst den Issue Tracker, ob dein Problem/Anforderung/Erweiterung bereits existiert oder sogar bereits daran gearbeitet wird.
  - Suche nach Labels wie `help wanted`, `easy fix` oder `up for grabs`
  - Erstelle ein neues Issue, damit die Maintainer des Repository von deinem Vorhaben Bescheid wissen.

2. Kläre vor jeder Contribution folgende Dinge ab:
  - Prüfe die Software Lizenz
  - Lebt das Projekt noch, oder arbeitest du für die Tonne?


3. Lese die Anleitungen und Richtlinien für eine Contribution in dem Projekt
  - Typischerweise gibt es Dokumente (`CONTRIBUTING.md`, `CONTRIBUTE.md`, `CONVENTIONS.md` oder ein Abschnitt in der `README.md`), wo die Maintainer beschreiben wie man Vorgehen möchte.
  - Die Richtlinien sollten in jedem Fall beachtet werden!


## Forken und Entwickeln
1. Erstelle einen Fork des Projekts

    {% lightbox /assets/tipps/github_contribution/step1_fork.png --data="github contribution" --title="Github Fork erstellen" --alt="Github Fork erstellen %}


2. Klone das geforkte Projekt auf dein Notebook

    ```bash
    $ git clone <fork_repo_url> .
    $ cd <fork_repo_dir>
    ```

3. Erstelle ein `upstream` Repository welches auf das orginal Repository der Maintainer zeigt:

    ```bash
    $ git remote add upstream <original_repo_url> .
    ```

4. Erstelle einen neuen Branch um deine Änderungen zu entwickeln:

    ```bash
    $ git checkout -b <branch_name>
    ```

5. Achte beim Umsetzen deiner Anpassung auf folgende Punkte:
  - Lege deinen Fokus auf genau eine Funktion
  - Mache sinnvolle Commits mit guten Beschreibungen
  - Entwickle weitere Features in separaten Branches
  - Hole die Änderungen vom `upstream` regelmässig in deinen Fork. Wie dies funktioniert, kannst du [in folgendem Beitrag](/tipps/sync-fork/) nachlesen. Ein Sync sollte mindestens vor jedem `push` durchgeführt werden.

6. Bevor der finale Pull Request erstellt wird, sollten folgende Punkte geprüft werden:
  - Laufen alle Tests durch?
  - Müssen eigene Tests geschrieben werden?
  - Funktioniert noch alles wie erwartet und sind alle Rechtschreibfehler beseitigt?

7. Pushe deine Änderungen in deinen Fork

    ```bash
    $ git push origin <branch-name>
    ```

## Pull Request
1. Öffne das geforkte Repository in deinem Browser. Über den grossen, grünen Button kannst du nun einen Pull Request erstellen.
    {% lightbox /assets/tipps/github_contribution/step2_pull_request.png --data="github contribution" --title="Github Pull Request erstellen" --alt="Github Pull Request erstellen %}

2. Füge dem Pull Request eine ausführliche Beschreibung mit Referenzen und Beweggründen hinzu.

3. Warte auf Feedback, ob dein Pull Request noch einigen Anpassungen bedarf. Allfällige Änderungen werden wieder in deinem Fork entwickelt.
  - Hole dazu wieder den aktuellen Stand vom `upstream` Repository des Maintainer. Wie dies funktioniert wird wie bereits erwähnt, [in folgendem Beitrag](/tipps/sync-fork/) beschrieben.
  - Nachdem die Anpassungen gemacht sind, können die Änderungen wieder in den Fork gepusht werden. Der Pull Request wird automatisch mit den neuen Commits aktualisiert.
  ```
  $ git push orign <branch_name>
  ```

4. Gratuliere, du konntest deine erste Contribution erfolgreich anbringen. Es empfiehlt sich nun, seine Fork noch aufzuräumen:

    ```bash
    $ git branch -D <branch_name>
    $ git push origin --delete <branch_name>
    ```
