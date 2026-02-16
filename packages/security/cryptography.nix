{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    age
    gnupg
    pinentry-qt
  ];
}
