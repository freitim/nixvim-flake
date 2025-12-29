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

      metals.enable = true;

      nil_ls = {
        enable = true;
      };

      pylsp = {
        enable = true;
      };

      # ocamllsp = {
      # 	enable = true;
      # };

      hls = {
        enable = true;
        installGhc = false;
      };

      idris2_lsp = {
        enable = true;
      };
    };
  };
}
