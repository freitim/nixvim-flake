{ theme, lib, ... }:
let
  cleanTheme = lib.foldl (acc: prefix: lib.removePrefix prefix acc) theme [ "base16-" "base24-" ];
  themePath = ./. + "/${cleanTheme}.nix";
in
{
  imports = lib.optional (builtins.pathExists themePath) themePath;
}
