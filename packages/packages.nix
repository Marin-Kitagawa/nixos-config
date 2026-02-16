{ ... }:
{
  imports = [
    #./BlackNix/BlackNix.nix
    ./archives.nix
    ./development/development.nix
    ./files/files.nix
    ./hardware/hardware.nix
    ./kde.nix
    ./media/media.nix
    ./productivity_office/productivity_office.nix
    ./security/security.nix
    ./system/system.nix
    ./desktop/desktop.nix
    ./web_internet/web_internet.nix
  ];
}
