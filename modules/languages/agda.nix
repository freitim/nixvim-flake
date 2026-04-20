{ lib, ... }:
{
  plugins.cornelis = {
    enable = true;
    lazyLoad.settings.ft = [
      "agda"
    ];
    settings = {
      use_global_binary = 1;
      no_agda_input = 1;
    };
  };

  files."after/ftplugin/agda.lua".keymaps =
    lib.nixvim.keymaps.mkKeymaps
      {
        mode = "n";
        options = {
          buffer = true;
          noremap = true;
        };
      }
      [
        {
          action = "<cmd>CornelisLoad<CR>";
          key = "<leader>l";
        }
        {
          action = "<cmd>CornelisRefine<CR>";
          key = "<leader>r";
        }
        {
          action = "<cmd>CornelisMakeCase<CR>";
          key = "<leader>d";
        }
        {
          action = "<cmd>CornelisTypeContext Normalised<CR>";
          key = "<leader>,";
        }
        {
          action = "<cmd>CornelisTypeContextInfer Normalised<CR>";
          key = "<leader>.";
        }
        {
          action = "<cmd>CornelisSolve<CR>";
          key = "<leader>n";
        }
        {
          action = "<cmd>CornelisAuto<CR>";
          key = "<leader>a";
        }
        {
          action = "<cmd>CornelisGoToDefinition<CR>";
          key = "gd";
        }
        {
          action = "<cmd>CornelisPrevGoal<CR>";
          key = "<leader>b";
        }
        {
          action = "<cmd>CornelisNextGoal<CR>";
          key = "<leader>f";
        }
        {
          action = "<cmd>CornelisInc<CR>";
          key = "<C-A>";
        }
        {
          action = "<cmd>CornelisDec<CR>";
          key = "<C-X>";
        }
      ];
}
