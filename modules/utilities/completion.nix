{...}: {
  plugins = {
    cmp-latex-symbols = {
      enable = true;
    };

    blink-compat = {
      enable = true;
    };

    blink-cmp = {
      enable = true;
      settings = {
        keymap = {
          preset = "default";
          "<C-k>" = [
            "select_prev"
            "fallback"
          ];
          "<C-j>" = [
            "select_next"
            "fallback"
          ];
          "<Tab>" = [
            "select_and_accept"
            "fallback"
          ];
        };
        cmdline = {
          completion = {
            menu.auto_show = true;
            ghost_text.enabled = true;
          };
          keymap.preset = "inherit";
        };
        sources = {
          default = [
            "lsp"
            "path"
            "snippets"
            "buffer"
            "symbols"
          ];
          providers = {
            symbols = {
              name = "latex_symbols";
              module = "blink.compat.source";
            };
          };
        };
      };
    };
  };
}
