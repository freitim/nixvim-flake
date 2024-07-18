{ pkgs, ... }:

{
	extraPlugins = with pkgs.vimPlugins; [
		{ plugin = nabla-nvim; }
	];	
}
