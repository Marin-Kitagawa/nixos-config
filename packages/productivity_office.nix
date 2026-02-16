{ pkgs, inputs, ... }:
{
  environment.systemPackages = with pkgs; [
    neovim
    obsidian
    onlyoffice-desktopeditors
    qalculate-qt
  ];
}
