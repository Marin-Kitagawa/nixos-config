{ pkgs, inputs, ... }:
{
  environment.systemPackages = with pkgs; [
    btop
    fastfetch
    onefetch
  ];
}
