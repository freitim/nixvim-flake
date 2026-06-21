{ lib, ... }:
{
  plugins.trouble = {
    enable = true;
    settings = {
      multiline = true;
      win = {
        type = "split";
        position = "right";
        size = 0.33;
        wo = {
          wrap = true;
          linebreak = true;
        };
      };
    };
  };
  keymaps =
    lib.nixvim.keymaps.mkKeymaps
      {
        options.buffer = true;
        mode = [ "n" ];
      }
      [
        {
          key = "<Leader>xx";
          action = "<cmd>Trouble diagnostics toggle<cr>";
          options.desc = "Diagnostics (Trouble)";
        }
        {
          key = "<Leader>xX";
          action = "<cmd>Trouble diagnostics toggle filter.buf=0<cr>";
          options.desc = "Buffer Diagnostics (Trouble)";
        }
        {
          key = "<Leader>cs";
          action = "<cmd>Trouble symbols toggle focus=false<cr>";
          options.desc = "Symbols (Trouble)";
        }
        {
          key = "<Leader>cl";
          action = "<cmd>Trouble lsp toggle focus=false win.position=right<cr>";
          options.desc = "LSP Definitions / references / ... (Trouble)";
        }
        {
          key = "<Leader>xL";
          action = "<cmd>Trouble loclist toggle<cr>";
          options.desc = "Location List (Trouble)";
        }
        {
          key = "<Leader>xQ";
          action = "<cmd>Trouble qflist toggle<cr>";
          options.desc = "Quickfix List (Trouble)";
        }
      ];
}
