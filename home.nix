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
	neovim    
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

    # toc
    # - important stuff
    # - programs use every day
    # - helpful tools
    # - shells

    # Let Home Manager install and manage itself.
    home-manager.enable = true;


    direnv = {
        enable = true;
        enableBashIntegration = true; # see note on other shells below
        nix-direnv.enable = true;
    };




  	git = {
   		enable = true;
   		userEmail = "jasminfaessler.ch@gmail.com";
  		userName = "jasmin-f";
  	};





	ssh = {
	#	enable = true;
	#	startAgent = true;
	#	enableAskpassword = false;
	};

    # https://wiki.nixos.org/wiki/SSH_public_key_authentication
    #	ssh.startAgent = true;
    #programs.ssh = {
    # startAgent = true;
      #enableAskPassword = true;
    #};

    #environment.variables = {
    #  SSH_ASKPASS_REQUIRE = "prefer";
    #};






    bash = {
      enable = true;
      # bashrcExtra = '''';
      #profileExtra = '' # todo: autostart von zsh mit nix konfigurieren      '';
    };
    

    zsh = {
      # https://mynixos.com/home-manager/options/programs.zsh
	
	 enable = true;
       
      # Settings for better user experience
      autocd = true;
     # dotDir = "/home/jf/.config/zsh";  # Store Zsh files in XDG location
      
    #  sessionVariables.DEFAULT_BROWSER = "${pkgs.firefox}/bin/firefox";

        # Syntax highlighting
        syntaxHighlighting = {
          enable = true;
          highlighters = [
            "main"
            "brackets"
            "pattern"
            "cursor"
            "root"
          ];
          styles = {
            comment = "fg=black,bold";
            alias = "fg=magenta,bold";
          };
          patterns = {
            "rm -rf *" = "fg=white,bold,bg=red";
          };
        };

        autosuggestion = {
          enable = true;
          highlight = "fg=244";
          strategy = ["history" "completion"];
        };
        
        oh-my-zsh = {
          enable = true; 
          # theme = "robbyrussell";
          plugins =
            [
              "vi-mode"
              # "git"
              # "docker"
              # "tmux"
              # "history"
            ];
        };


        #shellAliases = {
         # # or use ctrl+r to find last commands
          #nd = "nix develop";
          #zonedel = "find . -name '*:Zone.Identifier' -type f -delete";
        #};


        initContent = ''
          # my most used directories :)
            # (use with ~nix, ~proj)
            hash -d nix=/mnt/c/Users/jf/code/wsl/nix
            hash -d hm=/home/jf/.config/home-manager/
            hash -d cfg=$HOME/.config # cd ~cfg

            # hash -d sep1=/mnt/c/Users/jf/code/studium/ost_3_semester/sep1
            hash -d o4=/home/jf/wsl-code/ost_4_semester/

          # shell alias with arguments:
            nfi() { nix flake new --refresh --template "github:jasmin-f/nix#$1-lock" "$2"; }
        '';
        





      }; # zsh



	

  }; # programs



 # }; # ??






  # Home Manager is pretty good at managing dotfiles. The primary way to manage
#   programs.home-manager.enable = true;

#  xdg.mimeApps.defaultApplications = {
 #   "text/html" = ["firefox.desktop"];
  #  "text/xml" = ["firefox.desktop"];
#    "x-scheme-handler/http" = ["firefox.desktop"];
 #   "x-scheme-handler/https" = ["firefox.desktop"];
 # };




}
