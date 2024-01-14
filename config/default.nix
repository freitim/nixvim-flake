{
  # Import all your configuration modules here
  imports = [
    ./bufferline.nix
  ];

  # options = {
  #   number = true;
  # };

  colorschemes.rose-pine.enable = true;
  
  plugins = {
    lightline = {
      enable = true;
    };
  };
}
