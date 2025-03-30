{ pkgs, ... }:

{
  plugins.telescope = {
    enable = true;

    #TODO: move to keymaps
    keymaps = {
      "<leader>tg" = "live_grep";
      "<leader>tb" = "buffers";
      "<leader>tt" = "treesitter";
      "<leader>th" = "oldfiles";
    };

    settings.defaults = {
      file_ignore_patterns = [
				"^.git/"
      ];
			set_env.COLORTERM = "truecolor";
    };

    extensions = {
      file-browser.enable = true;
      frecency.enable = true;
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>ff";
      action = "<Cmd>Telescope file_browser<CR>";
      options.desc = "Find Files (File Browser)";
    }
    {
      mode = "n";
      key = "<leader>tr";
      action = "<Cmd>Telescope frecency<CR>";
      options.desc = "Find Frecent Files (Frecency)";
    }
  ];

  extraPackages = with pkgs; [
    ripgrep
    fd
  ];
}
