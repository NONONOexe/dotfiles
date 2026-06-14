{ pkgs, lib, ... }:

{
  programs.yazi = {
    enable = true;
    theme = {
      flavor = {
        dark = "gruvbox-dark";
      };
    };
  };

  xdg.configFile."yazi/flavors/gruvbox-dark.yazi" = {
    source = pkgs.fetchFromGitHub {
      owner = "bennyyip";
      repo = "gruvbox-dark.yazi";
      rev = "619fdc5";
      sha256 = "sha256-Y/i+eS04T2+Sg/Z7/CGbuQHo5jxewXIgORTQm25uQb4=";
    };
  };
}

