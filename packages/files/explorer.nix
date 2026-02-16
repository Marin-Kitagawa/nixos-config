{ pkgs, inputs, ... }:
{
  environment.systemPackages = with pkgs; [
    yazi
  ];
}
