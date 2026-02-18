{lib, ...}: {
  services = {
    flatpak = {
      remotes = lib.mkOptionDefault [
        {
          name = "flathub-beta";
          location = "https://flathub.org/beta-repo/flathub-beta.flatpakrepo";
        }
      ];

      update.auto.enable = true;
      uninstallUnmanaged = true;
      packages = [
        "com.github.KRTirtho.Spotube"
        "com.github.tchx84.Flatseal"
        "io.podman_desktop.PodmanDesktop"
      ];
    };
  };
}
