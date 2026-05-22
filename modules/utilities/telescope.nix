{ pkgs, ... }:
{
  plugins.telescope = {
    enable = true;

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
    {
      mode = "n";
      key = "<leader>fg";
      action = "<Cmd>Telescope live_grep<CR>";
      options.desc = "Live Grep";
    }
    {
      mode = "n";
      key = "<leader>fb";
      action = "<Cmd>Telescope buffers<CR>";
      options.desc = "Buffers";
    }
    {
      mode = "n";
      key = "<leader>ft";
      action = "<Cmd>Telescope treesitter<CR>";
      options.desc = "Treesitter";
    }
    {
      mode = "n";
      key = "<leader>fo";
      action = "<Cmd>Telescope oldfiles<CR>";
      options.desc = "Old Files";
    }
  ];

  extraPackages = with pkgs; [
    ripgrep
    fd
  ];
}
