{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    gh
    git
    git-credential-oauth
    git-extras
    gitFull
    # gitkraken
    gitoxide
    lazygit
  ];
}
