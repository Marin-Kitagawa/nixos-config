{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    rustc
    rustup
  ];
}
