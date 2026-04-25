{ lib, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.

  home = {
	username = "jasmin";
  	homeDirectory = "/home/jasmin";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.

	stateVersion = "25.05"; # never change! changed from 23.11 to 25.05 so same as wsl setup 

	
	# my own text file!
#	file."hello.txt".text = "Hello world from home.nix!";



  # The home.packages option allows you to install Nix packages into your
  # environment.
  packages = with pkgs; [
    
	#    hello

    # man-pages man-pages-posix # manpages, info: https://wiki.nixos.org/wiki/Man_pages, test with "man 3p putenv"

    podman
    # pkgs.hello

    # # It is sometimes useful to fine-tune packages, for example, by applying
    # # overrides. You can do that directly here, just don't forget the
    # # parentheses. Maybe you want to install Nerd Fonts with a limited number of
    # # fonts?
    # (pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })

    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')
   ];


 }; # home











programs = {

    firefox = {

      enable = true;
      # bookmarks = {};
      #   extensions.packages = with pkgs.inputs.firefox-addons; [
      #     ublock-origin
      #   ];
    };

    # Let Home Manager install and manage itself.
    home-manager.enable = true;


    direnv = {
        enable = true;
        enableBashIntegration = true; # see note on other shells below
        nix-direnv.enable = true;
    };


  
    bash = {
      enable = true;

      # bashrcExtra = '''';

      #profileExtra = '' # todo: autostart von zsh mit nix konfigurieren      '';

    };
    

    zsh = {
      # https://mynixos.com/home-manager/options/programs.zsh

      };


  	git = {
   		enable = true;
   		userEmail = "jasminfaessler.ch@gmail.com";
  		userName = "jasmin-f";
  	};


  };






  # Home Manager is pretty good at managing dotfiles. The primary way to manage
#   programs.home-manager.enable = true;

#  xdg.mimeApps.defaultApplications = {
 #   "text/html" = ["firefox.desktop"];
  #  "text/xml" = ["firefox.desktop"];
#    "x-scheme-handler/http" = ["firefox.desktop"];
 #   "x-scheme-handler/https" = ["firefox.desktop"];
 # };




}
