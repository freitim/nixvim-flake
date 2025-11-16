{...}: {
  plugins = {
    alpha = {
      enable = true;
      settings.layout = let
        banner = [
          "             ███                           ███"
          "            ░░░                           ░░░"
          " ████████   ████  █████ █████ █████ █████ ████  █████████████"
          "░░███░░███ ░░███ ░░███ ░░███ ░░███ ░░███ ░░███ ░░███░░███░░███"
          " ░███ ░███  ░███  ░░░█████░   ░███  ░███  ░███  ░███ ░███ ░███"
          " ░███ ░███  ░███   ███░░░███  ░░███ ███   ░███  ░███ ░███ ░███"
          " ████ █████ █████ █████ █████  ░░█████    █████ █████░███ █████"
          "░░░░ ░░░░░ ░░░░░ ░░░░░ ░░░░░    ░░░░░    ░░░░░ ░░░░░ ░░░ ░░░░░"
        ];
        centeredText = {
          position = "center";
          hl = "Type";
        };

        mkPadding = size: {
          type = "padding";
          val = size;
        };
        mkText = text: {
          type = "text";
          val = text;
          opts = centeredText;
        };
        # mkGroup = val: { inherit val; type = "group"; };
        mkButton = val: shortcut: cmd: hl: {
          inherit val;
          type = "button";
          on_press.__raw = builtins.concatStringsSep "" ["function() vim.cmd[[" cmd "]] end"];
          opts = {
            inherit shortcut hl;
            keymap = [
              "n"
              shortcut
              (builtins.concatStringsSep "" ["<Cmd>" cmd "<CR>"])
              {
                noremap = true;
                silent = true;
                nowait = true;
              }
            ];
            position = "center";
            cursor = 3;
            width = 50;
            align_shortcut = "right";
            hl_shortcut = "Keyword";
          };
        };
      in [
        (mkPadding 3)
        (mkText banner)

        (mkPadding 5)
        (
          mkButton
          "  New"
          "e"
          "ene"
          "Operator"
        )
        (mkPadding 1)
        (
          mkButton
          "󰈞  Explore"
          "SPC t f"
          "Telescope file_browser"
          "Operator"
        )
        (mkPadding 1)
        (
          mkButton
          "  Recents"
          "SPC t h"
          "Telescope frecency"
          "Operator"
        )
        (mkPadding 1)
        (
          mkButton
          "  Buffers"
          "SPC t b"
          "Telescope buffers"
          "Operator"
        )
        (mkPadding 1)
        (
          mkButton
          "󰈬  Grep"
          "SPC t b"
          "Telescope buffers"
          "Operator"
        )
        (mkPadding 1)
        (
          mkButton
          "  Quit"
          "q"
          "qa"
          "Operator"
        )
      ];
    };
  };
}
