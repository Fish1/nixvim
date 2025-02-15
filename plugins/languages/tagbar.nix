{
  lib,
  pkgs,
  ...
} @ args:
with lib;
with import ../helpers.nix {inherit lib;};
  mkPlugin args {
    name = "tagbar";
    package = pkgs.vimPlugins.tagbar;
    globalPrefix = "tagbar_";
    extraPackages = [pkgs.ctags];
  }
