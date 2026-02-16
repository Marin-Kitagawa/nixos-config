{ pkgs, inputs, ... }:
{
  environment.systemPackages = with pkgs; [
    dbeaver-bin
    sqlite
  ];
}
