{ config, pkgs, ... }:


{
  boot = {
    kernelPackages = pkgs.linuxKernel.packages.linux_xanmod_latest;
    kernelParams = [
      "quiet"
      "splash"
    ];
    loader = {
      grub = {
        enable = true;
        device = "nodev";
        efiSupport = true;
      };
      systemd-boot.enable = false;
      efi.canTouchEfiVariables = true;
    };
    binfmt.registrations.appimage = {
      wrapInterpreterInShell = false;
      interpreter = "${pkgs.appimage-run}/bin/appimage-run";
      recognitionType = "magic";
      offset = 0;
      mask = ''\xff\xff\xff\xff\x00\x00\x00\x00\xff\xff\xff'';
      magicOrExtension = ''\x7fELF....AI\x02'';
    };
  };
}
