{
  theme,
  lib,
  pkgs,
  ...
}:
let
  cleanTheme = lib.foldl (acc: prefix: lib.removePrefix prefix acc) theme [ "base16-" "base24-" ];
  isSpecificTheme = builtins.pathExists (./themes + "/${cleanTheme}.nix");
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
