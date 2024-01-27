{ pkgs, ... }:

{
  # extraConfigLua = ''
  #   vim.opt.termguicolors = true
  # '';

  imports = [
    ./config.nix
    ./appearance.nix
    ./lsp.nix
  ];
  
  plugins = {
    dashboard = {
      enable = true;
    };
    
    treesitter = {
      enable = true;
    };

    telescope = {
      enable = true;
      extensions = {
        file_browser.enable = true;
        fzf-native.enable = true;
      };
    };
    
    nvim-cmp = {
      enable = true;
    };

    obsidian = {
      enable = true;
    };

  };

  extraPlugins = with pkgs.vimPlugins; [
    otter-nvim
    quarto-nvim
  ];
}
