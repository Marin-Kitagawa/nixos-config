{ pkgs, inputs, ... }:
{
  environment.systemPackages = with pkgs; [
    eza
  ];
}
