{ pkgs, ... }:

{
  plugins.telescope = {
    enable = true;

    #TODO: move to keymaps
    keymaps = {
      "<leader>fg" = "live_grep";
      "<leader>fb" = "buffers";
      "<leader>ft" = "treesitter";
      "<leader>fh" = "oldfiles";
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
      key = "<leader>fr";
      action = "<Cmd>Telescope frecency<CR>";
      options.desc = "Find Frecent Files (Frecency)";
    }
  ];

  extraPackages = with pkgs; [
    ripgrep
    fd
  ];
}
