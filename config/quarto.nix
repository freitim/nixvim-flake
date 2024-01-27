{ pkgs, ... }:

{
  extraPlugins = with pkgs.vimPlugins; [
    {
      plugin = otter-nvim;
      config = "";
    }
    {
      plugin = quatro-nvim;
      config = "";
    }
  ];
}
