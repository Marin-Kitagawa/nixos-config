{ pkgs, inputs, ... }:
{
  environment.systemPackages = with pkgs; [
    cmake
    gnumake
  ];
}
