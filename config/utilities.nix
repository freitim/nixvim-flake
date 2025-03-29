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
						"fallback"
					];
					"<C-j>" = [
						"select_next"
						"fallback"
					];
					"<Tab>" = [
						"select_and_accept"
						"fallback"
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
