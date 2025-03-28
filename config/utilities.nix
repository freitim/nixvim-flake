{ ... }:

{
  plugins = {
		cmp-latex-symbols = {
			enable = true;
		};

		blink-compat = {
			enable = true;
		};

		blink-cmp = {
			enable = true;
			settings = {
				keymap = {
					preset = "default";
					"<C-k>" = [
						"select_prev"
						"fallback_to_mappings"
					];
					"<C-j>" = [
						"select_next"
						"fallback_to_mappings"
					];
					"<Tab>" = [
						"select_and_accept"
					];
				};
				sources = {
					default = [
						"lsp"
						"path"
						"snippets"
						"buffer"
						"symbols"
					];
					providers = {
						symbols = {
							name = "latex_symbols";
							module = "blink.compat.source";
						};
					};
				};
			};
		};
  };
}
