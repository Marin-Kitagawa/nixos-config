{ pkgs, inputs, ... }:
{
  environment.systemPackages = with pkgs; [
    # (callPackage ./pkgs/productivity/spacedrive.nix {})
    bat
    delta
    dust
    dutree
    eza
    fd
    fsearch
    fzf
    ripgrep
    ripgrep-all
    xcp
    yazi
  ];
}
