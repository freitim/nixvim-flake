{ ... }:

{
  plugins = {
		# cmp-treesitter.enable = true;
    treesitter = {
      enable = true;
			folding = false;
			nixvimInjections = true;
			settings = {
				highlight.enable = true;
				indent.enable = true;
				ensure_installed = [
					"c"
					"lua"
					"vim"
					"vimdoc"
					"query"
					"julia"
					"latex"
					"markdown"
					"markdown_inline"
					"nix"
					"python"
					"r"
					"haskell"
					"agda"
				];
			};
    };
  };
}
