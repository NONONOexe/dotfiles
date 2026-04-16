{ ... }:

{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    
    extraConfig = ''
      set clipboard=unnamedplus
      vnoremap <C-c> "+y
    '';
  };
}
