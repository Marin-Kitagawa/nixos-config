{ pkgs, inputs, ... }:
{
  environment.systemPackages = with pkgs; [
    age
    gnupg
    keepassxc
    pinentry-qt
    sops
  ];
}
