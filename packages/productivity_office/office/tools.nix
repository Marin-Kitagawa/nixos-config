{ pkgs, inputs, ... }:
{
  environment.systemPackages = with pkgs; [
    qalculate-qt
  ];
}
