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
    ./utilities.nix
    ./quarto.nix
  ];
  
  plugins = {
    treesitter = {
      enable = true;
    };
  };
}
