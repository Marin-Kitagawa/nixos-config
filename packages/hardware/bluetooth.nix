{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    blueman
    bluetooth_battery
    bluez
    bluez-experimental
    bluez-tools
    libbtbb
  ];
}
