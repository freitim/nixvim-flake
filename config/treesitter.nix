{ ... }:

{
  plugins = {
		cmp-treesitter.enable = true;
    treesitter = {
      enable = true;
			indent = true;
			folding = true;
			nixvimInjections = true;
			ensureInstalled = [
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
			];
    };
  };
}
