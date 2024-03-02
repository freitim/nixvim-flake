{ ... }:

{
  plugins = {
		luasnip.enable = true;
		cmp-buffer.enable = true;
		cmp-nvim-lsp.enable = true;
		cmp-path.enable = true;
		cmp_luasnip.enable = true;

    nvim-cmp = {
      enable = true;
			autoEnableSources = true;
			snippet = {
				expand = "luasnip";
			};
    };
  };
}
