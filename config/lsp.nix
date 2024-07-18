{
  plugins.lsp = {
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

      nil-ls = {
        enable = true;
			};

      pylsp = {
        enable = true;
				settings.plugins.black = {
            enabled = true;
				};
      };

			ocamllsp = {
				enable = true;
			};

			hls = {
				enable = true;
			};
    };
  };
}
