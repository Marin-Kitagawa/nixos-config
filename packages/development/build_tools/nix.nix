{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    niv
  ];
}
