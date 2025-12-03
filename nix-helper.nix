{ config, pkgs, ... }:
{
  programs.nh = {
    enable = true;
    clean.enable = false;
    flake = "/home/irelia/github/nixos-config";
  };
}
