
### eduroam aktivieren in NixOS
Übersichtsseite für [Wlan VPN Infos](https://wiki.ost.ch/pages/releaseview.action?pageId=13795452).

Auf der Seite [Infos Linux Wlan](https://wiki.ost.ch/pages/releaseview.action?pageId=13795510) findet sich unten bei "Download Einrichtungsscript (von Eduroam - Unibas.ch)" der Python Skript um die Konfigurationsdatei zu erstellen, für den Zugang ins Wlan. (Logindaten bereithalten, benötigt bereits Internet). Es findet sich auch einen Link zur Anleitung.

```shell
nix-shell -p python314 python313Packages.dbus-python
python3 scriptname.py
```



### VPN Konfiguration in configuration.nix
TODO: hier einfügen