{ pkgs, inputs, ... }:
{
  environment.systemPackages = with pkgs; [
    xcp
  ];
}
