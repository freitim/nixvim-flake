{
  plugins.lsp = {
    enable = true;

    servers = {
			# agda_ls = {
			# 	enable = true;
			# 	package = "";
			# };

			digestif = {
				enable = true;
			};

			gleam = {
				enable = true;
			};

      html = {
        enable = true;
			};
        
      julials = {
        enable = true;
				package = null;
			};

			# leanls = {
      #   enable = true;
			# };

      lua_ls = {
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
				# settings.plugins.black = {
        #     enabled = true;
				# };
      };

			# ocamllsp = {
			# 	enable = true;
			# };

			hls = {
				enable = true;
				installGhc = false;
			};
    };
  };
}
