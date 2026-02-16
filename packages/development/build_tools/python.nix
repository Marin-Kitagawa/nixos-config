{ pkgs, inputs, ... }:
{
  environment.systemPackages = with pkgs; [
    pixi
    poetry
  ];
}
