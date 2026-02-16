{ pkgs, inputs, ... }:
{
  environment.systemPackages = with pkgs; [
    solaar
  ];
}
