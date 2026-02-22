{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    kdePackages.kget
  ];
}
