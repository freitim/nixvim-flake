{
  config = {
    globals = {
      mapleader = " ";
      maplocalleader = " ";
    
    };

    clipboard = {
      register = "unnamedplus";
      providers.xclip.enable = true;
    };
  
    options = {
      updatetime = 100;

      number = true;
      relativenumber = true;
  
      shiftwidth = 4;

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
