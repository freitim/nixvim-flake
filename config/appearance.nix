{ pkgs, ... }:

{
  extraPlugins = [
		{
      plugin = (pkgs.vimUtils.buildVimPlugin {
        pname = "flatwhite.nvim";
        version = "2023-05-30";
        src = pkgs.fetchFromGitHub {
          owner = "hylophile";
          repo = "flatwhite.nvim";
          rev = "018a80e2325b32e94859afc2a8f1439af68bc110";
          sha256 = "/coekAnJ9thUODpW0NX9snY1Of/+jJNBocKUD9dw+SQ=";
        };
        meta.homepage = "https://github.com/hylophile/flatwhite.nvim/";
      });
      config = "colorscheme flatwhite";
    }
  ];

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
