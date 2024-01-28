{ ... }:

{
  # extraConfigLua = ''
  #   vim.opt.termguicolors = true
  # '';

  imports = [
    ./config.nix
    ./telescope.nix
    ./appearance.nix
    ./ui.nix
    ./lsp.nix
    ./quarto.nix
    ./keymaps.nix
  ];
  
  plugins = {
    treesitter = {
      enable = true;
    };
    
    nvim-cmp = {
      enable = true;
    };

    obsidian = {
      enable = true;
    };
  };
}
