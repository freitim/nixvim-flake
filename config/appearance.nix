{ pkgs, ... }:

{
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
				rev = "cba67b1e543149eba507a0090ed72acbfe51b792";
				hash = "sha256-nupDWpBE7TaDTUG11egCPq1SyLhSbjho9vEdwTYcywM=";
			};
			nvimSkipModule = "evergarden.extras";
		})
		(pkgs.vimUtils.buildVimPlugin {
			name = "aki";
			src = pkgs.fetchFromGitHub {
				owner = "comfysage";
				repo = "aki";
				rev = "a39e802855c2715811cca9c855e43252ee7a96ee";
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
			contrast_dark = 'medium',
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
