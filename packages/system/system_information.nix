{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    btop
    fastfetch
    onefetch
  ];
}
