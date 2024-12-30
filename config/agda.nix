{ pkgs, ... }:

{
	# pkgs.overlays = [cornelis.overlays.cornelis];
	extraPlugins = [pkgs.vimPlugins.cornelis];
	extraConfigLua = ''
		vim.g.cornelis_use_global_binary = 1
	'';
}
