{
  pkgs,
  inputs,
  ...
}: {
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
    # (callPackage ./pkgs/productivity/spacedrive.nix {})
    age
    appimage-run
    #atuin
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
    dbeaver-bin
    delta
    dive
    docker
    docker-compose
    dust
    dutree
    exercism
    eza
    fastfetch
    fd
    fsearch
    fzf
    gh
    git
    git-credential-oauth
    git-extras
    gitFull
    #gitkraken
    gitoxide
    gnumake
    gnupg
    go
    # inputs.ghostty.packages.x86_64-linux.default
    jq
    # kde-rounded-corners
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
    luarocks
    mesa
    neovim
    niv
    nix-prefetch-github
    nodePackages_latest.nodejs
    nurl
    nushell
    obsidian
    onefetch
    onlyoffice-desktopeditors
    pavucontrol
    peazip
    pinentry-gtk2
    pixi
    podman
    powershell
    poetry
    protobuf
    python3
    python312Packages.pip
    qalculate-qt
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
    steam-run
    stilo-themes
    sweet-nova
    syncthing
    themix-gui
    tldr
    tlp
    tokyonight-gtk-theme
    unzip
    vk-bootstrap
    vkbasalt
    vkmark
    vulkan-headers
    vulkan-helper
    vulkan-tools
    vulkan-utility-libraries
    vlc
    wakatime-cli
    warp-terminal
    whitesur-cursors
    whitesur-gtk-theme
    whitesur-icon-theme
    wl-clipboard
    xcp
    yazi
    yq
    zed-editor
    zellij
    zig
    zsh
  ];
}
