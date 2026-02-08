{ pkgs, ... }:
{
  plugins = {
    # render-markdown = {
    #   enable = true;
    #   settings = {
    #     preset = "obsidian";
    #     file_types = ["markdown" "quarto"];
    #     completions.blink.enabled = true;
    #     latex.enabled = false;
    #   };
    # };
    markview = {
      enable = true;
      settings = {
        preview = {
          filetypes = [
            "markdown"
            "quarto"
            "rmd"
            "typst"
            "idris2"
          ];
          condition = {
            __raw = ''
              	function(buffer)
              		local name = vim.api.nvim_buf_get_name(buffer)
              		return name:match("%.md$")
              	end
            '';
          };
        };
      };
    };
  };
}
