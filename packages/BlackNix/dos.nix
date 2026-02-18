{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    ddosify
    katana
    netsniff-ng
    #siege
    slowhttptest
    slowlorust
    thc-ipv6
  ];
}
