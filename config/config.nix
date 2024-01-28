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
}
