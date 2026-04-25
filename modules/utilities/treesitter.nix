{ config, ... }:
{
  plugins = {
    treesitter = {
      enable = true;
      highlight.enable = true;
      indent.enable = true;
      folding.enable = false;
      nixvimInjections = true;
      grammarPackages = with config.plugins.treesitter.package.builtGrammars; [
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
    };
  };
  autoCmd = [
    {
      event = [ "FileType" ];
      pattern = [ "idris2" ];
      callback = {
        __raw = ''
          function()
          	if vim.fn.expand("%:e") == "md" then
          		vim.treesitter.language.register('markdown', 'idris2')
          	end
          end
        '';
      };
    }
  ];
}
