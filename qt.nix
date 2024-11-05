{
  lib,
  config,
  pkgs,
  ...
}:

{
  qt = {
    enable = true;

    platformTheme = "kde";

    style = "kvantum";
  };
}
