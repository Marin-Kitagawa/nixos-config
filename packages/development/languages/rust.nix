{ pkgs, inputs, ... }:
{
  environment.systemPackages = with pkgs; [
    rustc
    rustup
  ];
}
