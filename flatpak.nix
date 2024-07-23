{ lib, ... }: {

  # nix-flatpak setup
  services.flatpak.remotes = lib.mkOptionDefault [{
    name = "flathub-beta";
    location = "https://flathub.org/beta-repo/flathub-beta.flatpakrepo";
  }];

  services.flatpak.update.auto.enable = true;
  services.flatpak.uninstallUnmanaged = true;
  services.flatpak.packages = [
    "com.vivaldi.Vivaldi"
    "it.fabiodistasio.AntaresSQL"
    "org.octave.Octave"
    "com.github.tchx84.Flatseal"
    "io.podman_desktop.PodmanDesktop"
    "com.jeffser.Alpaca"
  ];

}