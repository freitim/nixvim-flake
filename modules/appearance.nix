{pkgs, ...}: {
  colorschemes = {
    # everforest = {
    #   enable = true;
    #   settings = {
    #     background = "soft";
    #     enable_italic = 1;
    #     current_word = "grey background";
    #     better_performance = 1;
    #   };
    # };
    base16 = {
      enable = true;
      colorscheme = "ashes";
    };
  };

  # extraPlugins = [
  #   # (pkgs.vimUtils.buildVimPlugin {
  #   #   name = "evergarden";
  #   #   src = pkgs.fetchFromGitHub {
  #   #     owner = "comfysage";
  #   #     repo = "evergarden";
  #   #     rev = "mega";
  #   #     hash = "sha256-GtlJUgz+4n5fDIWUT7gDltj5kpK2W+zwchm3vwHVDcM=";
  #   #   };
  #   #   nvimSkipModule = ["evergarden.extras" "minidoc"];
  #   # })
  #   (pkgs.vimUtils.buildVimPlugin {
  #     name = "aki";
  #     src = pkgs.fetchFromGitHub {
  #       owner = "comfysage";
  #       repo = "aki";
  #       rev = "mega";
  #       hash = "sha256-lzyf6EtM6hOEdYwTrEBjpepy2eXKZz5meCkHiviBzGs=";
  #     };
  #     nvimSkipModule = "aki_test";
  #   })
  #   # (pkgs.vimUtils.buildVimPlugin {
  #   #   name = "everblush";
  #   #   src = pkgs.fetchFromGitHub {
  #   #     owner = "Everblush";
  #   #     repo = "nvim";
  #   #     rev = "678f808d81801b983b6fb8296fb17ba1b2785d7c";
  #   #     hash = "sha256-1bX/wykK3/BKc1uRhRZD6QR/OezZY6XgyXg3a9UT3ec=";
  #   #   };
  #   # })
  # ];

  # extraConfigLuaPre = ''
  #   require('everblush').setup({})
  # '';

  # extraConfigLuaPre = ''
  #   require('evergarden').setup({
  #   	theme = {
  #   		variant = 'fall',
  #   		accent = 'green',
  #   	};
  #   })
  # '';

  # extraConfigLuaPre = ''
  #    require('aki').setup({
  #    	contrast_dark = 'soft',
  #   override_terminal = true;
  #    })
  # '';

  # colorscheme = "aki";

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
