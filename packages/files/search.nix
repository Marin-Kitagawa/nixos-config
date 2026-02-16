{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    fd
    fsearch
    fzf
    ripgrep
    ripgrep-all
  ];
}
