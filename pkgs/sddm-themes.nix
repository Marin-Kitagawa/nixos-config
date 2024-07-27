{ stdenv, fetchFromGithub }:
let
  sources = import ./nix/sources.nix;
in {
  sddm-sugar-dark = stdenv.mkDerivation rec {
    pname = "sddm-sugar-dark-theme";
    version = "1.2";
    dontBuild = true;
    installPhase = ''
      mkdir -p $out/share/sddm/themes
      cp -aR $src $out/share/sddm/themes/sugar-dark
    '';
    src = sources.SDDMSugarDark.outPath;
  };
}
