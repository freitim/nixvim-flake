{ pkgs, config, ... }:
let
  treesitter-idris2-grammer = pkgs.vimPlugins.nvim-treesitter-parsers.idris;
in
{
  plugins = {
    treesitter = {
      enable = true;
      highlight.enable = true;
      indent.enable = true;
      folding.enable = false;
      nixvimInjections = true;

      grammarPackages =
        (with config.plugins.treesitter.package.builtGrammars; [
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
        ])
        ++ [ treesitter-idris2-grammer ];
      languageRegister = {
        idris = "idris";
        idris2 = "idris";
      };
    };
  };
  extraPlugins = [
    treesitter-idris2-grammer
  ];

  extraConfigLua = ''
    local orig_ts_start = vim.treesitter.start
    vim.treesitter.start = function(buf, lang)
      if lang == "idris" or lang == "idris2" then
        local buf_name = vim.api.nvim_buf_get_name(buf or 0)
        local ext = vim.fn.fnamemodify(buf_name, ":e")
        
        if ext == "md" then
          return orig_ts_start(buf, "markdown")
        else
          return false
        end
      end
      return orig_ts_start(buf, lang)
    end
  '';
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
