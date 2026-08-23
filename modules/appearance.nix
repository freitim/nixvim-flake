{
  theme,
  lib,
  pkgs,
  ...
}:
let
  isSpecificTheme = builtins.pathExists (./themes + "/${theme}.nix");
in
{
  extraPlugins = lib.optional (!isSpecificTheme) pkgs.vimPlugins.tinted-nvim;

  extraConfigLuaPre = lib.mkIf (!isSpecificTheme) ''
    require("tinted-nvim").setup()
  '';

  colorscheme = lib.mkIf (!isSpecificTheme) theme;

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
