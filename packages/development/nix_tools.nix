{ pkgs, inputs, ... }:
{
  environment.systemPackages = with pkgs; [
    nix-prefetch-github
    nurl
  ];
}
