{ pkgs, ... }:

{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    
    plugins = with pkgs.vimPlugins; [
      nvim-lspconfig
    ];

    extraPackages = with pkgs; [
      nixd
    ];

    extraConfig = ''
      set clipboard=unnamedplus
      vnoremap <C-c> "+y
    '';

    initLua = ''
      vim.lsp.config('nixd', {})
      vim.lsp.enable('nixd')
    '';
  };
}
