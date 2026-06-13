{ ... }:

{
  home.sessionPath = [
    "$HOME/.local/bin"
  ];

  home.file.".inputrc".text = ''
    set bell-style none
    set completion-ignore-case on
    "\e[A": history-search-backward
    "\e[B": history-search-forward
  '';

  programs.bash = {
    enable = true;
    shellAliases = {
      hms  = "home-manager switch --flake ~/dotfiles#nononoexe";
      cls  = "clear";
      open = "explorer.exe";
    };
  };

  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };

  programs.starship = {
    enable = true;
    enableBashIntegration = true;
    settings = {
      java = {
        style = "#fe8019";
      };
    };
  };
}
