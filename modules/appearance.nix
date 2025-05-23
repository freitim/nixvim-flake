{pkgs, ...}: {
  # colorschemes = {
  # 	everforest = {
  # 		enable = true;
  # 	};
  # 	# base16 = {
  # 	# 	enable = true;
  # 	# 	colorscheme = "everforest";
  # 	# };
  # };

  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "evergarden";
      src = pkgs.fetchFromGitHub {
        owner = "comfysage";
        repo = "evergarden";
        rev = "mega";
        hash = "sha256-CiRiZRmD7tuy/fNQwYJohiS1KSL+7ihTm29cMHunUWE=";
      };
      nvimSkipModule = "evergarden.extras";
    })
    (pkgs.vimUtils.buildVimPlugin {
      name = "aki";
      src = pkgs.fetchFromGitHub {
        owner = "comfysage";
        repo = "aki";
        rev = "mega";
        hash = "sha256-lzyf6EtM6hOEdYwTrEBjpepy2eXKZz5meCkHiviBzGs=";
      };
      nvimSkipModule = "aki_test";
    })
  ];

  extraConfigLuaPre = ''
    require('evergarden').setup({
    	theme = {
    		variant = 'fall',
    		accent = 'green',
    	};
    })

    require('aki').setup({
    	contrast_dark = 'soft',
    })
  '';

  colorscheme = "evergarden";

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
