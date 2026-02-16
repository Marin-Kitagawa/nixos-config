{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    #	(callPackage ./pkgs/sddm-themes.nix {}).sddm-sugar-dark
    reversal-icon-theme
    stilo-themes
    sweet-nova
    themix-gui
    tokyonight-gtk-theme
    whitesur-cursors
    whitesur-gtk-theme
    whitesur-icon-theme
    # (callPackage ../pkgs/sddm-themes.nix {}).sddm-sugar-dark
  ];
}
