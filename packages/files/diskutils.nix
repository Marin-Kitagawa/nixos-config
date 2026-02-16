{ pkgs, inputs, ... }:
{
  environment.systemPackages = with pkgs; [
    dust
    dutree
  ];
}
