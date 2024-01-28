{ pkgs, ... }:

{
  extraPlugins = with pkgs.vimPlugins; [
    {
      plugin = otter-nvim;
    }
    {
      plugin = quarto-nvim;
    }
  ];

  extraConfigLua = ''
    require("otter")
    require("quarto").setup({})
  '';
}
