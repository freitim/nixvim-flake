{ ... }:

{
  plugins = {
    cmp = {
      enable = true;
			autoEnableSources = true;
			autoLoad = true;
			settings = {
				sources = [
					{ name = "nvim_lsp"; }
					{ name = "async_path"; }
					{ name = "buffer"; }
					{ name = "latex_symbols"; }
					{ name = "calc"; }
				];
				mapping = {
          "<C-j>" = "cmp.mapping.select_next_item()";
          "<C-k>" = "cmp.mapping.select_prev_item()";
          "<C-Space>" = "cmp.mapping.complete()";
          "<C-e>" = "cmp.mapping.close()";
          "<Tab>" = "cmp.mapping.confirm({ select = true })";
				};
			};
		};
  };
}
