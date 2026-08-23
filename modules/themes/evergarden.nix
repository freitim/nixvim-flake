{
  pkgs,
  ...
}:
{
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "evergarden";
      src = pkgs.fetchFromCodeberg {
        owner = "evergarden";
        repo = "nvim";
        rev = "main";
        hash = "sha256-trWmevJTnd2JBO8dykmUOb/POIcC2CF5YQ1Hh70Zb70=";
      };
      nvimSkipModule = [
        "evergarden.extras"
        "minidoc"
      ];
    })
  ];

  extraConfigLuaPre = ''
    require('evergarden').setup ({
    	theme = {
    		variant = 'fall',
    		accent = 'green',
    	}
    })
  '';

  colorscheme = "evergarden";
}
