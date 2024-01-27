{ pkgs, ... }:

{
  extraPlugins = with pkgs.vimPlugins; [
    lazy-nvim
  ];

  extraConfigLua = ''
    require("lazy").setup({
      {
        "hylophile/flatwhite.nvim",
        config = function()
          vim.cmd([[colorscheme flatwhite]])
        end,
      },
      {
        "nvim-lualine/lualine.nvim",
        dependencies = { 'nvim-tree/nvim-web-devicons' },
      },
      {
        "akinsho/bufferline.nvim",
        version = "*",
        dependencies = { 'nvim-tree/nvim-web-devicons' },
      },
    })
    require("lualine").setup()
    require("bufferline").setup()
  '';
}
