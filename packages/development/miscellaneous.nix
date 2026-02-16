{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    exercism
    jq
    yq
    wakatime-cli
  ];
}
