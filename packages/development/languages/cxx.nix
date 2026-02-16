{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    (lib.hiPrio gcc)
    (lib.lowPrio clang)
  ];
}
