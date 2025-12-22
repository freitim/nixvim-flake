{pkgs, ...}: {
  plugins = {
    # cmp-treesitter.enable = true;
    treesitter = {
      enable = true;
      folding.enable = true;
      nixvimInjections = true;
      # grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
      #   c
      #   lua
      #   vim
      #   vimdoc
      #   query
      #   # julia
      #   # latex
      #   markdown
      #   markdown_inline
      #   nix
      #   python
      #   r
      #   haskell
      #   agda
      # ];
      settings = {
        highlight = {
          enable = true;
        };
        indent.enable = true;
      };
    };
  };
}
