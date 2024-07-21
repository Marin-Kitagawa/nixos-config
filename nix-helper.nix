{ config, pkgs, ... }:
{
  programs.nh = {
    enable = true;
    clean.enable = true;
    flake = /home/irelia/github/nixos-config;
  };
}
