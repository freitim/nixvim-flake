{...}: {
  plugins = {
    render-markdown = {
      enable = true;
      settings = {
        preset = "obsidian";
        file_types = ["markdown" "quarto"];
      };
    };
  };
}
