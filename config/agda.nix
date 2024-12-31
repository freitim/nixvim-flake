{ pkgs, ... }:

{
	# pkgs.overlays = [cornelis.overlays.cornelis];
	extraPlugins = [pkgs.vimPlugins.cornelis];
	extraConfigLua = ''
		vim.g.cornelis_use_global_binary = 1
	'';
	keymaps = [
		{
			mode = "n";
			key = "<leader>l";
			action = "<cmd>CornelisLoad<CR>";
			options = {
				buffer = true;
				noremap = true;
			};
		}
		{
			mode = "n";
			key = "<leader>r";
			action = "<cmd>CornelisRefine<CR>";
			options = {
				buffer = true;
				noremap = true;
			};
		}
		{
			mode = "n";
			key = "<leader>d";
			action = "<cmd>CornelisMakeCase<CR>";
			options = {
				buffer = true;
				noremap = true;
			};
		}
		{
			mode = "n";
			key = "<leader>,";
			action = "<cmd>CornelisTypeContext<CR>";
			options = {
				buffer = true;
				noremap = true;
			};
		}
		{
			mode = "n";
			key = "<leader>.";
			action = "<cmd>CornelisTypeContextInfer<CR>";
			options = {
				buffer = true;
				noremap = true;
			};
		}
		{
			mode = "n";
			key = "<leader>n";
			action = "<cmd>CornelisSolve<CR>";
			options = {
				buffer = true;
				noremap = true;
			};
		}
		{
			mode = "n";
			key = "<leader>a";
			action = "<cmd>CornelisAuto<CR>";
			options = {
				buffer = true;
				noremap = true;
			};
		}
		{
			mode = "n";
			key = "gd";
			action = "<cmd>CornelisGoToDefinition<CR>";
			options = {
				buffer = true;
				noremap = true;
			};
		}
		{
			mode = "n";
			key = "[/";
			action = "<cmd>CornelisPrevGoal<CR>";
			options = {
				buffer = true;
				noremap = true;
			};
		}
		{
			mode = "n";
			key = "]/";
			action = "<cmd>CornelisNextGoal<CR>";
			options = {
				buffer = true;
				noremap = true;
			};
		}
		{
			mode = "n";
			key = "<C-A>";
			action = "<cmd>CornelisInc<CR>";
			options = {
				buffer = true;
				noremap = true;
			};
		}
		{
			mode = "n";
			key = "<C-X>";
			action = "<cmd>CornelisDec<CR>";
			options = {
				buffer = true;
				noremap = true;
			};
		}
	];
}
