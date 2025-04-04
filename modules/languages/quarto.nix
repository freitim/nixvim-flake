{pkgs, ...}: {
  plugins = {
    # image = {
    # 	enable = true;
    # };
    # molten = {
    # 	enable = true;
    # 	settings = {
    # 		image_provider = "image.nvim";
    # 	};
    # };
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
  extraPackages = [(pkgs.python3.withPackages (p: [p.jupytext]))];
}
