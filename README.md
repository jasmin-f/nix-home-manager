# Home Manager Konfiguration

## TODO

- [ ] VS Code Extensions mit nix  
- [ ] Git mit nix auf wsl einrichten

## Infos

### Links
https://github.com/nix-community/home-manager  
https://nixos.wiki/wiki/Home_Manager

Neue Installation

    nix run home-manager/master -- init --switch

Konfiguration anpassen

    code /home/jf/.config/home-manager/home.nix
    man home-configuration.nix

Starten (bei Änderungen)

    home-manager switch


Hinweise 
- die Dateien .bashrc und .profile musste ich entfernen, damit Home manager darauf vollen Zugriff hat (deshalb im Ordner archiv ein Backup).