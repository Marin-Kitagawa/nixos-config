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
	theme = "${
	  (pkgs.fetchFromGitHub {
	    owner = "Marin-Kitagawa";
	    repo = "nixos-themes";
	    rev = "b1e3ddb67c7d5b06858d28b3e82da517ba66e3f2";
	    sha256 = "fy3YlOufmQT+mM8EnmzaVUTXVuG2MBdbIVmdKrmJHDI=";
	  })
	}/grub/RuanMei";
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
