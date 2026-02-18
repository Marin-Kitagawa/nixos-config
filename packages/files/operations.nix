{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    xcp
  ];
}
