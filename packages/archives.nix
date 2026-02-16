{ pkgs, inputs, ... }:
{
  environment.systemPackages = with pkgs; [
    peazip
    unzip
  ];
}
