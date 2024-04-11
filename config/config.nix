{
  config = {
    globals = {
      mapleader = " ";
      maplocalleader = " ";
			
			# disable useless providers
			loaded_ruby_provider = 0;
			loaded_perl_provider = 0;
			loaded_python_provider = 0;
    };

    clipboard = {
      register = "unnamedplus";
      # providers.xclip.enable = true;
      providers.wl-copy.enable = true;
    };
  
    opts = {
      updatetime = 100;

      number = true;
      relativenumber = true;
 
			splitbelow = true;
			splitright = true;
			
			swapfile = false;
			undofile = true;
			incsearch = true;
			fileencoding = "utf-8";

			tabstop = 4;
      shiftwidth = 4;

			autoindent = true;

      termguicolors = true;
    };

    keymaps = [
      {
        mode = "i";
        key = "jk";
        action = "<Esc>";
        options = {
          silent = true;
        };
      }
    ];

    autoCmd = [
      {
        event = "FileType";
        pattern = "nix";
        command = "setlocal tabstop=2 shiftwidth=2 softtabstop=2";
      }
    ];
  };
}
