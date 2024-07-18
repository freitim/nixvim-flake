{ pkgs, ... }:

{
	extraPlugins = with pkgs.vimPlugins; [
		{ plugin = nabla-nvim; }
	];	

	keymaps = [
		{
			mode = "n";
			key = "<leader>p";
			action = ":lua require('nabla').popup()<cr>";
			options = {
				silent = true;
			};
		}

		{
			mode = "n";
			key = "<leader>t";
			# action = ":lua require('nabla').toggle_virt( { autogen = true } )<cr>";
			action = ":lua require('nabla').toggle_virt()<cr>";
			options = {
				silent = true;
			};
		}
	];
}
