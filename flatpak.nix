{ lib, ... }: {

  # nix-flatpak setup
  services.flatpak.remotes = lib.mkOptionDefault [{
    name = "flathub-beta";
    location = "https://flathub.org/beta-repo/flathub-beta.flatpakrepo";
  }];

  services.flatpak.update.auto.enable = true;
  services.flatpak.uninstallUnmanaged = true;
  services.flatpak.packages = [
    "com.github.tchx84.Flatseal"
    "com.jeffser.Alpaca"
    "com.notesnook.Notesnook"
    "com.vivaldi.Vivaldi"
    "io.github.alainm23.planify"
    "io.podman_desktop.PodmanDesktop"
    "it.fabiodistasio.AntaresSQL"
    "org.octave.Octave"
  ];

}
