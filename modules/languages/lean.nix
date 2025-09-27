{pkgs, ...}: {
  plugins.lean = {
    enable = true;
    settings = {
      lsp = {
        enable = true;
      };
      mappings = true;
    };
  };
  dependencies.lean.enable = true;
  # extraPackagesAfter = with pkgs; [lean4];
}
