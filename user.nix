{ config, pkgs, inputs, ... }:
{
	imports = [
	];
#	nixpkgs.overlays =
#  	let
#    	# Change this to a rev sha to pin
#    	moz-rev = "master";
#    	moz-url = builtins.fetchTarball { url = "https://github.com/mozilla/nixpkgs-mozilla/archive/${moz-rev}.tar.gz";};
#    	nightlyOverlay = (import "${moz-url}/firefox-overlay.nix");
#  	in [
#    	nightlyOverlay
#  	];
#	programs.firefox.package = pkgs.latest.firefox-nightly-bin;
	environment.systemPackages = with pkgs; [
		(lib.hiPrio gcc)
		(lib.lowPrio clang)
#		(callPackage ./pkgs/sddm-themes.nix {}).sddm-sugar-dark
		(callPackage ./pkgs/productivity/spacedrive.nix {})
		age
		appimage-run
		appflowy
		asdf-vm
		autojump
		bat
		blueman
		bluetooth_battery
		bluez
		bluez-experimental
		bluez-tools
		brave
		btop
		bun
		catppuccin-kde
		chezmoi
		cmake
		code-cursor
		colloid-kde
		dbeaver-bin
		delta
		dive
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
		gitoxide
		gnumake
		gnupg
		go
		inputs.ghostty.packages.x86_64-linux.default
		jq
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
		keepassxc
		libbtbb
		libsForQt5.qt5ct
		libsForQt5.qtstyleplugin-kvantum
		lua
		mesa
		neovim
		niv
		nix-prefetch-github
		nodePackages_latest.nodejs
		nurl
		nushell
		obsidian
		onefetch
		onlyoffice-bin_latest
		pavucontrol
		peazip
		pinentry-gtk2
		pixi
		podman
		powershell
		poetry
		protobuf_28
		python3
		python312Packages.pip
		qbittorrent
		reversal-icon-theme
		ripgrep
		ripgrep-all
		ruby_3_4
		rustc
		rustup
		sherlock
		solaar
		sops
		sqlite
		stacer
		steam-run
		stilo-themes
		sweet-nova
		syncthing
		themix-gui
		tldr
		tlp
		tokyonight-gtk-theme
		vk-bootstrap
		vkbasalt
		vkmark
		vulkan-headers
		vulkan-helper
		vulkan-tools
		vulkan-utility-libraries
		vlc
		wakatime
		warp-terminal
		whitesur-cursors
		whitesur-gtk-theme
		whitesur-icon-theme
		wl-clipboard
		xcp
		yarn-berry
		yazi
		yq
		zed-editor
		zellij
		zig
		zsh
	];
}
