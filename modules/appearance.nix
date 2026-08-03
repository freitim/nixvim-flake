{
  theme ? "base24-mountain",
  pkgs,
  ...
}:
{
  extraPlugins = with pkgs; [
    vimPlugins.tinted-nvim
  ];

  extraConfigLuaPre = ''
    require("tinted-nvim").setup()
  '';

  colorscheme = theme;

  plugins = {
    web-devicons = {
      enable = true;
    };

    lualine = {
      enable = true;
    };

    bufferline = {
      enable = true;
    };
  };
}
