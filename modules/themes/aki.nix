{
  pkgs,
  ...
}:
{
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "aki";
      src = pkgs.fetchFromGitHub {
        owner = "comfysage";
        repo = "aki";
        rev = "mega";
        hash = "sha256-lzyf6EtM6hOEdYwTrEBjpepy2eXKZz5meCkHiviBzGs=";
      };
      nvimSkipModule = [ "aki_test" ];
    })
  ];

  extraConfigLuaPre = ''
        require 'aki'.setup {
    			contrast_dark = 'hard'
        }
  '';

  colorscheme = "aki";
}
