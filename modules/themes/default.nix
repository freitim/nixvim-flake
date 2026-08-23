{ theme, lib, ... }:
let
  themePath = ./. + "/${theme}.nix";
in
{
  imports = lib.optional (builtins.pathExists themePath) themePath;
}
