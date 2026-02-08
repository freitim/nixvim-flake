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
            "nixfmt"
          ];
          python = [
            "black"
          ];
          scala = [
            "scalafmt"
          ];
        };
        format_on_save = {
          timeout_ms = 500;
          lsp_format = "fallback";
        };
        formatters = {
          nixfmt = {
            command = lib.getExe pkgs.nixfmt;
          };
          black = {
            command = lib.getExe pkgs.black;
          };
        };
      };
    };
  };
}
