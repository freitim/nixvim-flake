{ pkgs, ... }:
{
  plugins = {
    treesitter = {
      enable = true;
      highlight.enable = true;
      indent.enable = true;
      folding.enable = false;
      nixvimInjections = true;
      grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
        agda
        bash
        comment
        gleam
        haskell
        html
        json
        julia
        latex
        lua
        make
        markdown
        markdown_inline
        nix
        python
        regex
        scala
        toml
        typst
        vim
        vimdoc
        xml
        yaml
      ];
      # languageRegister = {
      #   markdown = ["idris2"];
      #   markdown_inline = ["idris2"];
      # };
    };
  };
}
