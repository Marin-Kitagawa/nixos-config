{ pkgs, inputs, ... }:
{
  environment.systemPackages = with pkgs; [
    onlyoffice-desktopeditors
  ];
}
