{ pkgs, inputs, ... }:
{
  environment.systemPackages = with pkgs; [
    age
    gnupg
    pinentry-qt
  ];
}
