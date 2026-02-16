{ pkgs, inputs, ... }:
{
  environment.systemPackages = with pkgs; [
    bun
    nodePackages_latest.nodejs
  ];
}
