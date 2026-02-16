{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    appimage-run
    chezmoi
    pavucontrol
    sherlock
    steam-run
    tldr
    tlp
    wl-clipboard
  ];
}
