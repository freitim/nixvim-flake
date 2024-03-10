{ ... }:

{
  plugins = {
		luasnip.enable = true;
		cmp-buffer.enable = true;
		cmp-nvim-lsp.enable = true;
		cmp-path.enable = true;
		cmp_luasnip.enable = true;

    cmp = {
      enable = true;
			autoEnableSources = true;
			settings = {
				snippet = {
					expand = ''
						function(args)
							require('luasnip').lsp_expand(args.body)
						end
					'';
				};
			};
		};
  };
}
