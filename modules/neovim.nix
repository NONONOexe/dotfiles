{ pkgs, ... }:

{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    
    plugins = with pkgs.vimPlugins; [
      nvim-lspconfig
      which-key-nvim
    ];

    extraPackages = with pkgs; [
      nixd
    ];

    extraConfig = builtins.readFile ./neovim/init.vim;
    initLua = builtins.readFile ./neovim/init.lua;
  };
}

