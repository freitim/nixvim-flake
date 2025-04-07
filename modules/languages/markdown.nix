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
        latex.enabled = true;
      };
    };
  };
}
