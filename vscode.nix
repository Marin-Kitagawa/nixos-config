{ config, pkgs, ... }:
let 
	unstable = import <nixos> { config = {allowUnfree = true; }; };
in {
  environment.systemPackages = with pkgs; [
    (vscode-with-extensions.override {
      vscodeExtensions = with vscode-extensions; [
        vscodevim.vim
        ms-python.python
        batisteo.vscode-django
        pkief.material-icon-theme
        ms-toolsai.jupyter
        ms-azuretools.vscode-docker
        dbaeumer.vscode-eslint
        ms-python.debugpy
        ms-python.vscode-pylance
        esbenp.prettier-vscode
        svelte.svelte-vscode
      ] ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
        {
          name = "vscode-theme-onedark";
          publisher = "akamud";
          version = "2.3.0";
          sha256 = "f061afe0be29a136237640f067180d61a8ee126201e571759a124cc4ed87a3ce";
        }
      ];
    })
  ];
}
