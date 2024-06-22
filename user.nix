{ config, pkgs, ... }:
let
	unstable = import <unstable> { config = {allowUnfree = true; }; };
in {
	environment.systemPackages = with pkgs; [
		unstable.appimage-run
		unstable.autojump
		unstable.bat
		unstable.brave
		unstable.chezmoi
		unstable.cmake
		unstable.dust
		unstable.dutree
		unstable.eza
		unstable.fastfetch
		unstable.fzf
		unstable.gcc
		unstable.git
		unstable.git-extras
		unstable.gnome-extension-manager
		unstable.gnome-photos
		unstable.gnome.gnome-themes-extra
		unstable.gnome.gnome-tweaks
		unstable.gnomeExtensions.gsconnect
		unstable.gnupg
		unstable.jq
		unstable.lua
		unstable.neovim
		unstable.nushell
		unstable.onefetch
		unstable.p7zip
		unstable.qbittorrent
		unstable.ripgrep
		unstable.ripgrep-all
		unstable.syncthing
		unstable.tldr
		unstable.vivaldi
		unstable.vivaldi-ffmpeg-codecs
		unstable.vlc
		unstable.wezterm
		unstable.whitesur-cursors
		unstable.whitesur-gtk-theme
		unstable.whitesur-icon-theme
		unstable.wl-clipboard
		unstable.xcp
		unstable.zig
		unstable.zsh
	];
}
