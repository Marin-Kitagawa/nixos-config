{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    kdePackages.kget
    uget
    uget-integrator
  ];
}
