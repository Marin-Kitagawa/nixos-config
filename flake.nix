{
  description = "IreliaOS";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    stylix.url = "github:danth/stylix";
    nix-flatpak.url = "github:gmodena/nix-flatpak";
  };

  outputs = { nixpkgs, ... }@inputs:
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
        inputs.stylix.nixosModules.stylix
        inputs.nix-flatpak.nixosModules.nix-flatpak
        ./configuration.nix
      ];
    };
  };
}
