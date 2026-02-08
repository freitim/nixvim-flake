{pkgs, ...}: {
  # extraPackages = with pkgs; [
  #   python3Packages.pylatexenc
  # ];
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
    # nabla = {
    #   enable = true;
    # };
    markview = {
      enable = true;
      settings.preview.filetypes = ["markdown" "idris2"];
      # settings = {
      #   preview = {
      #     enable = true;
      #     filetypes = ["markdown" "lagda" "idris2"];
      #   };
      #   latex = {
      #     enable = true;
      #   };
      #   markdown = {
      #     enable = true;
      #   };
      #   markdown_inline = {
      #     enable = true;
      #   };
      # };
    };
  };
  # keymaps = [
  #   {
  #     key = "<leader>p";
  #     action.__raw = "require('nabla').popup";
  #   }
  # ];
  autoCmd = [
    {
      event = ["BufEnter" "BufRead"];
      pattern = ["*.md"];
      callback = {
        __raw = ''
           function(args)
           	if vim.bo.filetype == "idris2" then
          vim.bo.filetype = "markdown"
           				vim.schedule(function()
           					if vim.api.nvim_buf_is_valid(args.buf) then
           						vim.cmd("Markview enable")
           					end
           				end)
          vim.bo.filetype = "markdown"
                            end
                                end
        '';
      };
    }
  ];
}
