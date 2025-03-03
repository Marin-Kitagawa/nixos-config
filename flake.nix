{
  description = "IreliaOS";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
#    stylix.url = "github:danth/stylix";
    nix-flatpak.url = "github:gmodena/nix-flatpak";
    sops-nix = {
      url = "github:Marin-Kitagawa/sops-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    ghostty = {
      url = "github:ghostty-org/ghostty";
    };
  };

  outputs = { nixpkgs, nix-flatpak, sops-nix, ... }@inputs:
  let
    system = "x86_64-linux";
    host = "Irelia";
    username = "irelia";
  in
  {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      specialArgs = {
        inherit inputs;
        inherit system;
        inherit host;
        inherit username;
      };
      modules = [
        # inputs.stylix.nixosModules.stylix
        nix-flatpak.nixosModules.nix-flatpak  # No need to import this (or any other module installed this way) in any of the other files except in this flake file which the one on which this comment is.
        ./configuration.nix
        sops-nix.nixosModules.sops
      ];
    };
  };
}
