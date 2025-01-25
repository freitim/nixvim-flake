{ ... }:

{
	plugins = {
		render-markdown = {
			enable = true;
			settings = {
				preset = "obsidian";
				file_types = [ "markdown" "agda.markdown" ];
				#render_modes = [ "n" "c" "t" ];		
				#max_file_size = 100.0;
				#debounce = 100;
				#bullet = {
				#	icons = [
				#		"◆ "
				#		"• "
				#		"• "
				#	];
				#	right_pad = 1;
				#};
				#code = {
				#	above = " ";
				#	below = " ";
				#	border = "thick";
				#	language_pad = 2;
				#	left_pad = 2;
				#	position = "right";
				#	right_pad = 2;
				#	sign = false;
				#	width = "block";
				#};
				#heading = {
				#	border = true;
				#	icons = [
				#		"1 "
				#		"2 "
				#		"3 "
				#		"4 "
				#		"5 "
				#		"6 "
				#	];
				#	position = "inline";
				#	sign = false;
				#	width = "full";
				#};
				#signs = {
				#	enabled = false;
				#};
			};
		};
	};
}
