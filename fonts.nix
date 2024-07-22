{ config, pkgs, ... }:
{
# Font management
  fonts.packages = with pkgs; [
    ibm-plex
	  (nerdfonts.override { fonts = [ "FiraCode" ];})
    material-icons
    material-symbols
    material-design-icons
    open-sans
    work-sans
    fira-sans
    alegreya-sans
    source-sans
    inriafonts
    lato
    penna
    public-sans
  ];
}
