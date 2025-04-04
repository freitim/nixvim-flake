{...}: {
  plugins = {
    indent-blankline = {
      enable = true;
      settings = {
        indent = {
          char = "│";
        };
        scope = {
          show_start = false;
          show_exact_scope = true;
          show_end = false;
        };
      };
    };
  };
}
