{ pkgs, inputs, ... }:
{
  environment.systemPackages = with pkgs; [
    ruby_3_4
  ];
}
