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
		./julia.nix
    ./quarto.nix
		./markdown.nix
		./agda.nix
  ];
}
