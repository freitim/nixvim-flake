{...}: {
  plugins = {
    virt-column = {
      enable = true;
      settings = {
        char = "│";
        virtcolumn = "+1,80";
      };
    };
  };
}
