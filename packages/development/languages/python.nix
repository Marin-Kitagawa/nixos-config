{ pkgs, inputs, ... }:
{
  environment.systemPackages = with pkgs; [
    python3
    python312Packages.pip
  ];
}
