{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    dust
    dutree
  ];
}
