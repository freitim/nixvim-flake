{ pkgs, ... }:

{
  extraPlugins = with pkgs.vimPlugins; [
    {
      plugin = otter-nvim;
    }
    {
      plugin = quarto-nvim;
    }
  ];

  extraConfigLua = ''
    require("otter")
    require("quarto").setup({
			ft = { "quarto" },
			dev = false,
			opts = {
				lspFeatures = {
					languages = { "r", "python", "julia", "bash", "lua", "html", "dot", "javascript", "typescript", "ojs" },
				},
			},
		})
  '';
}
