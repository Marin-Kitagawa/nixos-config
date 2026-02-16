{ ... }:
{
  imports = [
    ./build_tools/build_tools.nix
    ./languages/languages.nix
    ./containerization.nix
    ./databases.nix
    ./data_serialization.nix
    ./editors_ides.nix
    ./git_vcs.nix
    ./miscellaneous.nix
    ./nix_tools.nix
  ];
}
