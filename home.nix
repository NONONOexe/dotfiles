{ config, pkgs, ... }:

{
  home.username = "nononoexe";
  home.homeDirectory = "/home/nononoexe";
  home.stateVersion = "26.05";

  home.packages = with pkgs; [
    home-manager
    gh
    jdk
    texlive.combined.scheme-full
    uv
  ];

  home.sessionPath = [
    "$HOME/.local/bin"
  ];

  programs.bash = {
    enable = true;
  };

  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };

  programs.git = {
    enable = true;
    settings = {
      user.name = "Keisuke ANDO";
      user.email = "ando_k@iwate-pu.ac.jp";
    };
  };

  programs.neovim = {
    enable = true;
    defaultEditor = true;
  };
}

