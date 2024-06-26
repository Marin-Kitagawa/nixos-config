{ config, pkgs, ... }:
let
	unstable = import <nixos-unstable> { config = {allowUnfree = true; }; };
in {
	nixpkgs.overlays =
	let
	  # Change this to a rev sha to pin
	  moz-rev = "master";
	  moz-url = builtins.fetchTarball { url = "https://github.com/mozilla/nixpkgs-mozilla/archive/${moz-rev}.tar.gz";};
	  nightlyOverlay = (import "${moz-url}/firefox-overlay.nix");
	in [
	  nightlyOverlay
	];
	programs.firefox.package = pkgs.latest.firefox-nightly-bin;
	environment.systemPackages = with pkgs; [
		unstable.appimage-run
		unstable.autojump
		unstable.bat
		unstable.brave
		unstable.chezmoi
		unstable.cmake
		unstable.delta
		unstable.dust
		unstable.dutree
		unstable.eza
		unstable.fastfetch
		unstable.fzf
		(lib.hiPrio unstable.gcc)
		(lib.lowPrio unstable.clang)
		unstable.gh
		unstable.git
		unstable.git-extras
		unstable.gitFull
		unstable.gnupg
		unstable.gnumake
		unstable.jq
		unstable.kdePackages.kdeconnect-kde
		unstable.keepassxc
		unstable.lua
		unstable.neovim
		unstable.nix-prefetch-github
		unstable.nushell
		unstable.onefetch
		unstable.p7zip
		unstable.pinentry-gtk2
		unstable.qbittorrent
		unstable.ripgrep
		unstable.ripgrep-all
		unstable.stacer
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
		unstable.zellij
		unstable.zig
		unstable.zsh
	];
}
