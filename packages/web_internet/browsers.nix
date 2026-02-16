{ pkgs, inputs, ... }:
{
  environment.systemPackages = with pkgs; [
    brave
  ];
}
