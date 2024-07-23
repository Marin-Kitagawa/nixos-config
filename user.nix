{ config, pkgs, ... }:
{
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
		(lib.hiPrio gcc)
		(lib.lowPrio clang)
		appimage-run
		autojump
		bat
		brave
		btop
		bun
		catppuccin-kde
		chezmoi
		cmake
		colloid-kde
		delta
		docker
		docker-compose
		dust
		dutree
		eza
		fastfetch
		fsearch
		fzf
		gh
		git
		git-credential-oauth
		git-extras
		gitFull
		gitkraken
		gnumake
		gnupg
		jq
		kde-rounded-corners
		kdePackages.dolphin-plugins
		kdePackages.kdeconnect-kde
		kdePackages.kiconthemes
		kdePackages.plasma-integration
		kdePackages.qt6ct
		kdePackages.qtstyleplugin-kvantum
		keepassxc
		libsForQt5.qt5ct
		libsForQt5.qtstyleplugin-kvantum
		lua
		neovim
		nix-prefetch-github
		niv
		nodePackages_latest.nodejs
		nurl
		nushell
		onefetch
		onlyoffice-bin_latest
		p7zip
		pavucontrol
		pinentry-gtk2
		podman
		poetry
		python3
		python312Packages.pip
		qbittorrent
		reversal-icon-theme
		ripgrep
		ripgrep-all
		sqlite
		stacer
		steam-run
		stilo-themes
		sweet-nova
		syncthing
		themix-gui
		tldr
		tokyonight-gtk-theme
		vlc
		wezterm
		whitesur-cursors
		whitesur-gtk-theme
		whitesur-icon-theme
		wl-clipboard
		xcp
		yarn-berry
		yazi
		yq
		zellij
		zig
		zsh
	];
}
