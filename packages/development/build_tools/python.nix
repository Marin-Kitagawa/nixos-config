{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    pixi
    poetry
  ];
}
