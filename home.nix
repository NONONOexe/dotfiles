{ config, pkgs, ... }:

{
  home.username = "nononoexe";
  home.homeDirectory = "/home/nononoexe";
  home.stateVersion = "26.05";

  imports = [
    ./modules/git.nix
    ./modules/neovim.nix
    ./modules/shell.nix
    ./modules/btop.nix
  ];

  home.packages = with pkgs; [
    home-manager
    gh
    jdk
    texlive.combined.scheme-full
    unzip
    uv
    yazi
    zip
  ];
}
