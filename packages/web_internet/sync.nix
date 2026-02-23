{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    freefilesync
    syncthing
  ];
}
