{
  lib,
  pkgs,
  ...
}: {
  plugins = {
    conform-nvim = {
      enable = true;
      settings = {
        formatters_by_ft = {
          nix = [
            "alejandra"
          ];
          python = [
            "black"
          ];
        };
        format_on_save = {
          timeout_ms = 500;
          lsp_format = "fallback";
        };
        formatters = {
          alejandra = {
            command = lib.getExe pkgs.alejandra;
          };
          black = {
            command = lib.getExe pkgs.black;
          };
        };
      };
    };
  };
}
