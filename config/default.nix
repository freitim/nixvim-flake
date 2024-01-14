{
  # Import all your configuration modules here
  imports = [
    ./bufferline.nix
  ];
  
  config = {
    options = {
      number = true;
      shiftwidth = 4;
    };

    colorschemes.rose-pine = {
      enable = true;
      style = "dawn";
    };
    
    plugins = {
      lualine = {
        enable = true;
      };

      lsp = {
        enable = true;

        servers = {
	  digestif = {
            enable = true;
	  };

          html = {
            enable = true;
	  };
          
          julials = {
            enable = true;
	  };

	  # leanls = {
          #   enable = true;
	  # };

          lua-ls = {
            enable = true;
	  };

          marksman = {
            enable = true;
	  };

          nil_ls = {
            enable = true;
	  };

          pylsp = {
            enable = true;
	    settings.plugins.black = {
              enabled = true;
	    };
	  };
	};
      };
    };
  };
}
