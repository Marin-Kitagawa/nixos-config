{ pkgs, inputs, ... }:
{
  environment.systemPackages = with pkgs; [
    lua
    luarocks
  ];
}
