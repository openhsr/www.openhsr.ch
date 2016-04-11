---
title: GPG
category: security
---
## GPG

<!--main_settings-->
### Grundlegendes
Wir generieren zwei Keys:
  1. Einen Masterkey, um alle Subkeys zu unterschreiben
  2. Je Subkey für
    a) Signierung
    b) Verschlüsselung
    c) Authentifikation
Warum der ganze Aufwand? Ein Key reicht doch völlig! Grundsätzlich hast du recht, aber stellt dir vor dein Key wird gehackt. Dann musst du wieder von ganz vorne Anfangen. Mit einem spezifischen Key für jede Aufgabe, kannst du gena diesen Key revoken, der kompromentiert wurde.

### Vorbereitung
  - Enigmail installierne ```$ sudo apt-get install enigmail```


### Verschlüsselte Backup Sticks erstellen


### PGP Keys generieren
  1. Master Key generieren ```$ gpg2 --gen-key```
    a. (4) RSA (sign only)
    b. Der Masterkey sollte eine Keysize von 4096 haben
    b. Expire Date: 3y (3 Jahre werden von uns empfohlen, weil...)
    c. Name: Maria Mustermann
    d. E-Mail: maria.mustermann@hsr.
    e. Jetzt muss du warten. Du kannst ein wenig im Internet surfen, da dies hilft zufällige Zahlen zu generieren.

  2. Weitere E-Mail Adressen hinzufügen (optional)
    a. Masterkey editieren ```$ gpg2 --edit-key maria.mustermann@hsr.ch```
    b. UID hinzufügen: ```adduid```
      a.
      b.
      c.
    c. ```save```
  3. Subkeys erstellen
    a. Masterkey editieren ```$ gpg2 --edit-key maria.mustermann@hsr.ch```
    b. Subkey hinzufügen: ```adduid```
      a.
        a. 6 RSA (encrypt only)
        b. 4 RSA (sign only)
        c. 8 RSA (Set your own capabilities)
          a. Only authentication capability
      b. YUBIKEY NEO (2048)

  2. ```$ sudo apt-get install scdaemon```

### Yubikey vorbereiten
ykpersonalize -m82

### Private Key auf Yubikey laden


1. Yubikey einstecken und prüfen ob er erkannt wurde: gpg2 --card-status
2. Keys hinzufügen: gpg2 --expert --edit-key 0xYOURKEY
  a. key 1
  b. addtocard
  c. key 1
  d. key 2
  e. addtocard
  f. key 2
  g. key 3
    addtocard
    save



### Private Keys sichern
  gpg2 --delete-secret-keys maria.mustermann@hsr.ch

## Eigenem Key vertrauen.
1. gpg2 --expert --edit-key maria.mustermann@hsr.ch
  a. trust
  b. 5 (Wir trauen uns selber ultimativ)
  c. Personen die wir kennen trauen wir maximal 4

### Public Keys veröffentlichen
Wenn wir uns sicher sind, dass wir den Key wie er nun ist veröffentlichen wollen, können wir diesen auf den Keyserver veröffentlichen. Wir müssen uns aber wirklich sicher sein, da man ihn von dem Server kaum noch wegbekommt.

```gpg2 --send-key 0xMASTERKEYID```


<!--main_settings-->

## Links
- [PGP Anleitung Detusch](https://www.gnupg.org/howtos/de/index.html)
