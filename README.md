# Home Manager Konfiguration

## Infos

### Links

- https://github.com/nix-community/home-manager  
- https://nixos.wiki/wiki/Home_Manager
- https://mynixos.com/home-manager/options/home
  
    
- <https://github.com/omega-800/nixos-config>
- <https://home-manager.dev/manual/24.11/>

Neue Installation
```shell
nix run home-manager/master -- init --switch
```
Konfiguration anpassen
```shell
code /home/jf/.config/home-manager/home.nix
man home-configuration.nix
```
Starten (bei Änderungen)
```shell
home-manager switch
```
Nix Umgebungsvariable temporär erstellen
```shell
. /home/jf/.nix-profile/etc/profile.d/nix.sh 
```

**Hinweise**   
- die Dateien .bashrc und .profile musste ich entfernen, damit Home manager darauf vollen Zugriff hat (deshalb im Ordner archiv ein Backup).  

Pfade: `/home/jf/.bashrc` und `/home/jf/.profile`  
Pfad dieser Datei auf Windows: `\\wsl.localhost\Ubuntu\home\jf\.config\home-manager`

## Nix Direnv Installation
https://github.com/nix-community/nix-direnv?tab=readme-ov-file#via-home-manager

## Zsh 
gute Codebeispiele: https://deepwiki.com/nix-community/home-manager/5.1-shell-configuration-examples

## WSL
wslpath um Windows Pfad zu WSL Pfad umzuwandeln :D
```shell
wslpath '\\wsl.localhost\Ubuntu\home'
cd $(wslpath 'C:\Users\jf\')

# zu windows umwandeln mit -w
wslpath -w '/home/jf/.profile'
```

## Podman Desktop mit Windows zu WSL

#### Neustarten von Podman default machine
Wenn es im Zustand "Starting" bleibt.

Auf Windows:
```shell
podman machine stop
podman machine rm -f
```

Dann den Setup in Podman Desktop neu ausführen (ich habe Autostart deaktiviert, und "machine with root privileges" aktiviert gelassen).

Podman machine wechselt zu "Running".
In WSL wird `ls -l /mnt/wsl/podman-sockets/` gefunden.

## Infos zu NixOS
Vorerst hier dokumentiert, eventuell verschiebe ich die Infos an einen anderen Ort: [Infos Nixos](nixos.md)

## Debugging / Troubleshooting
### Wenn home-manager und nix nicht mehr gefunden werden

```shell
# nix hinzufügen
. $HOME/.nix-profile/etc/profile.d/nix.sh

# home manager reparierte Datei ausführen
nix run home-manager/master -- switch
```
