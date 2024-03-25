{ pkgs, ... }:

{
	extraPlugins = with pkgs.vimPlugins; [
		{ plugin = julia-vim; }
	];	

	extraConfigLua = ''
		vim.g.latex_to_unicode_file_types = {"julia", "markdown", "quarto"}
	'';
}
