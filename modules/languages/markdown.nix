{ ... }:
{
  plugins = {
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
        };
      };
    };
  };
}
