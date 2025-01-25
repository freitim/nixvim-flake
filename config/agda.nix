{ pkgs, ... }:

{
	plugins.cornelis = {
		enable = true;
		settings = {
			use_global_binary = 1;
			no_agda_input = 1;
		};
	};

	keymaps = [
		{
			mode = "n";
			key = "<leader>l";
			action = "<cmd>CornelisLoad<CR>";
			options = {
				noremap = true;
			};
		}
		{
			mode = "n";
			key = "<leader>r";
			action = "<cmd>CornelisRefine<CR>";
			options = {
				noremap = true;
			};
		}
		{
			mode = "n";
			key = "<leader>d";
			action = "<cmd>CornelisMakeCase<CR>";
			options = {
				noremap = true;
			};
		}
		{
			mode = "n";
			key = "<leader>,";
			action = "<cmd>CornelisTypeContext<CR>";
			options = {
				noremap = true;
			};
		}
		{
			mode = "n";
			key = "<leader>.";
			action = "<cmd>CornelisTypeContextInfer<CR>";
			options = {
				noremap = true;
			};
		}
		{
			mode = "n";
			key = "<leader>n";
			action = "<cmd>CornelisSolve<CR>";
			options = {
				noremap = true;
			};
		}
		{
			mode = "n";
			key = "<leader>a";
			action = "<cmd>CornelisAuto<CR>";
			options = {
				noremap = true;
			};
		}
		{
			mode = "n";
			key = "gd";
			action = "<cmd>CornelisGoToDefinition<CR>";
			options = {
				noremap = true;
			};
		}
		{
			mode = "n";
			key = "[/";
			action = "<cmd>CornelisPrevGoal<CR>";
			options = {
				noremap = true;
			};
		}
		{
			mode = "n";
			key = "]/";
			action = "<cmd>CornelisNextGoal<CR>";
			options = {
				noremap = true;
			};
		}
		{
			mode = "n";
			key = "<C-A>";
			action = "<cmd>CornelisInc<CR>";
			options = {
				noremap = true;
			};
		}
		{
			mode = "n";
			key = "<C-X>";
			action = "<cmd>CornelisDec<CR>";
			options = {
				noremap = true;
			};
		}
	];
}
