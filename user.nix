{ config, pkgs, ... }:
let
	unstable = import <nixos> { config = {allowUnfree = true; }; };
in {
	imports = [
	];
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
		(lib.hiPrio unstable.gcc)
		(lib.lowPrio unstable.clang)
		unstable.appimage-run
		unstable.autojump
		unstable.bat
		unstable.brave
		unstable.btop
		unstable.bun
		unstable.chezmoi
		unstable.cmake
		unstable.delta
		unstable.dust
		unstable.dutree
		unstable.eza
		unstable.fastfetch
		unstable.fluent-icon-theme
		unstable.fsearch
		unstable.fzf
		unstable.gh
		unstable.git
		unstable.git-credential-oauth
		unstable.git-extras
		unstable.gitFull
		unstable.gitkraken
		unstable.gnumake
		unstable.gnupg
		unstable.jq
		unstable.kde-rounded-corners
		unstable.kdePackages.dolphin-plugins
		unstable.kdePackages.kdeconnect-kde
		unstable.kdePackages.qt6ct
		unstable.kdePackages.qtstyleplugin-kvantum
		unstable.keepassxc
		unstable.libsForQt5.qt5ct
		unstable.libsForQt5.qtstyleplugin-kvantum
		unstable.lua
		unstable.neovim
		unstable.nix-prefetch-github
		unstable.nodePackages_latest.nodejs
		unstable.nurl
		unstable.nushell
		unstable.onefetch
		unstable.onlyoffice-bin_latest
		unstable.p7zip
		unstable.pinentry-gtk2
		unstable.poetry
		unstable.python3
		unstable.python312Packages.pip
		unstable.qbittorrent
		unstable.ripgrep
		unstable.ripgrep-all
		unstable.sqlite
		unstable.sqlitebrowser
		unstable.stacer
		unstable.steam-run
		unstable.syncthing
		unstable.thunderbird
		unstable.tldr
		unstable.vlc
		unstable.wezterm
		unstable.whitesur-cursors
		unstable.whitesur-gtk-theme
		unstable.whitesur-icon-theme
		unstable.wl-clipboard
		unstable.xcp
		unstable.yarn-berry
		unstable.yazi
		unstable.zellij
		unstable.zig
		unstable.zsh
	];
}
