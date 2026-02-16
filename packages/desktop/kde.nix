{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    catppuccin-kde
    kde-rounded-corners
    kdePackages.dolphin-plugins
    kdePackages.kdeconnect-kde
    kdePackages.kiconthemes
    kdePackages.ksvg
    kdePackages.plasma-integration
    kdePackages.qt6ct
    kdePackages.qtstyleplugin-kvantum
    kdePackages.sddm-kcm
    kdePackages.yakuake
    libsForQt5.qt5ct
    libsForQt5.qtstyleplugin-kvantum
  ];
}
