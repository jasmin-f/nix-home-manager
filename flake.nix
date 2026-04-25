{
  description = "Home Manager configuration of jasmin";

  inputs = {
    # Specify the source of Home Manager and Nixpkgs.
#    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
 
	nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
 home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    { nixpkgs, home-manager, ... }:
    let
    	lib = nixpkgs.lib;
     	 system = "x86_64-linux";
     	 #pkgs = nixpkgs.legacyPackages.${system};
    	pkgs = import nixpkgs { inherit system; };
    in
    {
     	 #homeConfigurations."jf" = home-manager.lib.homeManagerConfiguration {
	    #  homeConfigurations."jasmin" = home-manager.lib.homeManagerConfiguration {

    	 #   inherit pkgs;
        # Specify your home configuration modules here, for example,
        # the path to your home.nix.
     	 #  modules = [ ./home.nix ];

        # Optionally use extraSpecialArgs
        # to pass through arguments to home.nix
     	# };


    homeConfigurations = {
     	jasmin = home-manager.lib.homeManagerConfiguration {
		inherit pkgs;
		modules = [ ./home.nix ];
	};
     };
    };
}
