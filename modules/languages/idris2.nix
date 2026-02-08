{lib, ...}: {
  plugins = {
    idris2 = {
      enable = true;
      settings = {
        client.hover = {
          split_position = "right";
        };
        code_action_post_hook = lib.nixvim.mkRaw ''
          function()
          	vim.cmd('silent write')
          end
        '';
      };
    };
  };
  keymaps = [
    # core
    {
      action = "<Cmd>lua require('idris2').show_implicits()<CR>";
      key = "<Leader>si";
    }
    {
      action = "<Cmd>lua require('idris2').hide_implicits()<CR>";
      key = "<Leader>hi";
    }
    {
      action = "<Cmd>lua require('idris2').show_machine_names()<CR>";
      key = "<Leader>sm";
    }
    {
      action = "<Cmd>lua require('idris2').hide_machine_names()<CR>";
      key = "<Leader>hm";
    }
    {
      action = "<Cmd>lua require('idris2').full_namespace()<CR>";
      key = "<Leader>fn";
    }
    {
      action = "<Cmd>lua require('idris2').hide_namespace()<CR>";
      key = "<Leader>hn";
    }
    # semantic
    {
      action = "<Cmd>lua require('idris2.semantic').request()<CR>";
      key = "<Leader>sr";
    }
    {
      action = "<Cmd>lua require('idris2.semantic').clear()<CR>";
      key = "<Leader>sc";
    }
    {
      action = "<Cmd>lua require('idris2.semantic').start()<CR>";
      key = "<Leader>ss";
    }
    {
      action = "<Cmd>lua require('idris2.semantic').stop()<CR>";
      key = "<Leader>sx";
    }
    # code_action
    {
      action = "<Cmd>lua require('idris2.code_action').case_split()<CR>";
      key = "<Leader>cs";
    }
    {
      action = "<Cmd>lua require('idris2.code_action').make_case()<CR>";
      key = "<Leader>mc";
    }
    {
      action = "<Cmd>lua require('idris2.code_action').make_with()<CR>";
      key = "<Leader>mw";
    }
    {
      action = "<Cmd>lua require('idris2.code_action').make_lemma()<CR>";
      key = "<Leader>ml";
    }
    {
      action = "<Cmd>lua require('idris2.code_action').add_clause()<CR>";
      key = "<Leader>ac";
    }
    {
      action = "<Cmd>lua require('idris2.code_action').expr_search()<CR>";
      key = "<Leader>es";
    }
    {
      action = "<Cmd>lua require('idris2.code_action').generate_def()<CR>";
      key = "<Leader>gd";
    }
    {
      action = "<Cmd>lua require('idris2.code_action').refine_hole()<CR>";
      key = "<Leader>rh";
    }
    {
      action = "<Cmd>lua require('idris2.code_action').expr_search_hints()<CR>";
      key = "<Leader>eh";
    }
    {
      action = "<Cmd>lua require('idris2.code_action').intro()<CR>";
      key = "<Leader>in";
    }
    # repl
    {
      action = "<Cmd>lua require('idris2.repl').evaluate()<CR>";
      key = "<Leader>e";
      mode = ["n" "i"];
    }
    {
      action = "<Cmd>lua require('idris2.repl').evaluate({visual=true})<CR>";
      key = "<Leader>e";
      mode = "v";
    }
    {
      action = "<Cmd>lua require('idris2.repl').evaluate({visual=true,sub=true})<CR>";
      key = "<Leader>es";
      mode = "v";
    }
    {
      action = "<Cmd>lua require('idris2.repl').evaluate({virtual=true})<CR>";
      key = "<Leader>ev";
    }
    # metavars
    {
      action = "<Cmd>lua require('idris2.metavars').request_all()<CR>";
      key = "<Leader>mm";
    }
    {
      action = "<Cmd>lua require('idris2.metavars').goto_next()<CR>";
      key = "<Leader>]m";
    }
    {
      action = "<Cmd>lua require('idris2.metavars').goto_prev()<CR>";
      key = "<Leader>[m";
    }
    # browse
    {
      action = "<Cmd>lua require('idris2.browse').browse()<CR>";
      key = "<Leader>br";
    }
    # hover
    {
      action = "<Cmd>lua require('idris2.hover').open_split()<CR>";
      key = "<Leader>ho";
    }
    {
      action = "<Cmd>lua require('idris2.hover').close_split()<CR>";
      key = "<Leader>hc";
    }
    {
      action = "<Cmd>lua require('idris2.hover').hover()<CR>";
      key = "K";
    }
  ];
}
