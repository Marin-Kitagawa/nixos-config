{ lib, ... }: {

  imports = [
    ./flatpak_module.nix
  ]
  # nix-flatpak setup
  services.flatpak.enable = true;

  services.flatpak.remotes = lib.mkOptionDefault [{
    name = "flathub-beta";
    location = "https://flathub.org/beta-repo/flathub-beta.flatpakrepo";
  }];

  services.flatpak.update.auto.enable = false;
  services.flatpak.uninstallUnmanaged = false;
  services.flatpak.packages = [
    "com.vivaldi.Vivaldi"
  ];

}
