{
  inputs,
  pkgs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    # atuin
    # autojump
    # inputs.ghostty.packages.${pkgs.system}.default
    nushell
    powershell
    zellij
    zoxide
    zsh
  ];
}
