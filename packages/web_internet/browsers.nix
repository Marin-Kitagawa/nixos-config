{
  pkgs,
  inputs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    brave
    inputs.zen-browser.packages."${pkgs.system}".default
  ];
}
