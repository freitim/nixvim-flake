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
		./treesitter.nix
    ./utilities.nix
    ./quarto.nix
  ];
}
