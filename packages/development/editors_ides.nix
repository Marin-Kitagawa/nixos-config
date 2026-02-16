{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    code-cursor
    zed-editor
  ];
}
