# Home Manager Konfiguration

## TODO

- [ ] VS Code Extensions mit nix  

## Infos

### Links

- https://github.com/nix-community/home-manager  
- https://nixos.wiki/wiki/Home_Manager
- https://mynixos.com/home-manager/options/home
  
    
- <https://github.com/omega-800/nixos-config>
- <https://home-manager.dev/manual/24.11/>

Neue Installation

    nix run home-manager/master -- init --switch

Konfiguration anpassen

    code /home/jf/.config/home-manager/home.nix
    man home-configuration.nix

Starten (bei Änderungen)

    home-manager switch

Nix Umgebungsvariable temporär erstellen
```bash
. /home/jf/.nix-profile/etc/profile.d/nix.sh 
```

**Hinweise**   
- die Dateien .bashrc und .profile musste ich entfernen, damit Home manager darauf vollen Zugriff hat (deshalb im Ordner archiv ein Backup).  

Pfade: `/home/jf/.bashrc` und `/home/jf/.profile`  
Pfad dieser Datei auf Windows: `\\wsl.localhost\Ubuntu\home\jf\.config\home-manager`

## Nix Direnv Installation
https://github.com/nix-community/nix-direnv?tab=readme-ov-file#via-home-manager

## VS Code Extensions

TODO

## Zsh 

gute Codebeispiele: https://deepwiki.com/nix-community/home-manager/5.1-shell-configuration-examples

