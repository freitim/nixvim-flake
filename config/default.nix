{ ... }:

{
  # extraConfigLua = ''
  #   vim.opt.termguicolors = true
  # '';

  imports = [
    ./config.nix
    ./appearance.nix
    ./telescope.nix
    ./ui.nix
    ./lsp.nix
		./treesitter.nix
    ./utilities.nix
		./julia.nix
    ./quarto.nix
		./markdown.nix
		./agda.nix
  ];
}
