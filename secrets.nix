{ config, pkgs, ... }:
{
  sops = {
    defaultSopsFile = ./secrets/secrets.yaml;
    defaultSopsFormat = "yaml";
    age.keyFile = "~/.config/sops/age/keys.txt";
  };
}
