{pkgs, ...}: {
  # extraPackages = [(pkgs.python3.withPackages (p: [p.jupytext p.pynvim p.jupyter_client]))];
  extraPackages = [(pkgs.python3.withPackages (p: [p.jupytext]))];
  plugins = {
    image = {
      enable = true;
    };
    molten = {
      enable = true;
      settings = {
        auto_open_output = false;
        image_provider = "image.nvim";
        wrap_output = true;
        virt_text_output = true;
        virt_lines_off_by_1 = true;
      };
    };
    quarto = {
      enable = true;
      settings = {
        codeRunner = {
          enabled = true;
          default_method = "molten";
        };
      };
    };
    jupytext = {
      enable = true;
      settings = {
        custom_language_formatting = {
          python = {
            extension = "qmd";
            style = "quarto";
            forte_ft = "quarto";
          };
        };
      };
    };
  };
}
