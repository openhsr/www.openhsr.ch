
---
title: Latex minted Problem lösen (Linux)
tags: Latex, Linux
---

Fehlermeldung beim "Erstellen & Anzeigen" im TeXstudio:

```Package minted Error: You must invoke LaTeX with the -shell-escape flag```
```Package minted Error: You must have `pygmentize' installed to use this package. \begin{document}```

Problemlösung:
1. Phyton und Pygments-Zusatz installieren `sudo apt-get install phyton phyton-pygments`
2. Optionen > TeXstudio konfigurieren... > Befehle <br>
Unter PdfLaTeX "--shell-escape" am Ende der Zeile **vor** "%.tex" einfügen
