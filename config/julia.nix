{ pkgs, ... }:

{
	extraPlugins = with pkgs.vimPlugins; [
		{ plugin = julia-vim; }
	];	
}
