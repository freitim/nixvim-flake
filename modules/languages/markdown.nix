{pkgs, ...}: {
  extraPackages = with pkgs; [
    python3Packages.pylatexenc
  ];
  plugins = {
    render-markdown = {
      enable = true;
      settings = {
        preset = "obsidian";
        file_types = ["markdown" "quarto"];
        completions.blink.enabled = true;
        latex.enabled = false;
      };
    };
    nabla = {
      enable = true;
    };
  };
  keymaps = [
    {
      key = "<leader>p";
      action.__raw = "require('nabla').popup";
    }
  ];
}
