{ config, ... }:
{
  plugins = {
    treesitter = {
      enable = true;
      highlight.enable = true;
      indent.enable = true;
      folding.enable = false;
      nixvimInjections = true;
      grammarPackages = (
        with config.plugins.treesitter.package.builtGrammars;
        [
          agda
          bash
          comment
          gleam
          haskell
          html
          # idris
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
        ]
      );
      # languageRegister = {
      #   idris2 = "idris";
      # };
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
          		pcall(function()
          				local mv_actions = require("markview.actions")
          				if mv_actions and mv_actions.attach then
          						mv_actions.attach(vim.api.nvim_get_current_buf())
          				end
          		end)
          	end
          end
        '';
      };
    }
  ];
}
