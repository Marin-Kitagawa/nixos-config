{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    resilio-sync
    syncthing
  ];
}
