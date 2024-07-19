{ config, pkgs, ... }:
{
  services = {
    xserver = {
      # Enable the X11 windowing system.
      # You can disable this if you're only using the Wayland session.
      enable = true;
      # Configure keymap in X11
      xkb = {
        layout = "us";
        variant = "";
      };
    };
    # Enable CUPS to print documents.
    printing = {
      enable = true;
    };
    displayManager = {
      sddm = {
        enable = true;
        wayland = {
          enable = true;
        };
      };
    };
    desktopManager = {
      plasma6 = {
        enable = true;
      };
    };
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
      # If you want to use JACK applications, uncomment this
      #jack.enable = true;

      # use the example session manager (no others are packaged yet so this is enabled by default,
      # no need to redefine it in your config for now)
      #media-session.enable = true;
    };
    pcscd = {
      enable = true;
    };
    openssh = {
      enable = true;
    };
    dbus = {
      packages = [ pkgs.gcr_4 ];
    };
    flatpak = {
      enable = true;
    };

    # NVIDIA Video Driver is enabled in nvidia.nix
  };
}
