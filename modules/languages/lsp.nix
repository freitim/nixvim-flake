{
  plugins.lsp = {
    enable = true;
    servers = {
      digestif.enable = true;
      # html.enable = true;
      idris2_lsp.enable = true;
      lua_ls.enable = true;
      marksman.enable = true;
      # metals.enable = true;
      nil_ls.enable = true;

      # python
      ruff.enable = true;
      ty.enable = true;

      # hls = {
      #   enable = true;
      #   installGhc = false;
      # };
    };
  };
}
