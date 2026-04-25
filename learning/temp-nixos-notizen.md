








"file" erstellen weiter lernen unter evertras/simple-homemanager bei 06-explain-home-nix



sudo nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
sudo nix-channel --update


in config..nix
imports = [ <home-manager/nixos> ];

sudo nixos-rebuild switch

später neuladen mit: home-manager switch



By default packages will be installed to $HOME/.nix-profile



### home-manager
https://nix-community.github.io/home-manager/#ch-usage
hier weitermachen


ist gut auf root? nur zugreifen als sudo? root/.config/nix-home-manager

https://github.com/Evertras/simple-homemanager/blob/main/02-basic-repository-setup.md




sudo nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
sudo nix-channel --update


in config..nix
imports = [ <home-manager/nixos> ];

# sudo nixos-rebuild switch



home-manager build
home-manager switch

https://nix-community.github.io/home-manager/#ch-usage
hier weitermachen

problem: https://discourse.nixos.org/t/home-manager-switch-warning/56030/9

