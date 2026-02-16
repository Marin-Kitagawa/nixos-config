{ inputs, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # atuin
    autojump
    inputs.ghostty.packages.x86_64-linux.default
    nushell
    powershell
    warp-terminal
    zellij
    zsh
  ];
}
