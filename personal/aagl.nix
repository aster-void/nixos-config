{ config, pkgs, ... }:
let
  aagl-gtk-on-nix = import (builtins.fetchTarball "https://github.com/ezKEa/aagl-gtk-on-nix/archive/main.tar.gz");
  # aaglPkgs = aagl-gtk-on-nix.withNixpkgs pkgs
in
{
  # cache
  nix.settings = {
    substituters = [ "https://ezkea.cachix.org" ];
    trusted-public-keys = [ "ezkea.cachix.org-1:ioBmUbJTZIKsHmWWXPe1FSFbeVe+afhfgqgTSNd34eI=" ];
  };

  imports = [
    aagl-gtk-on-nix.module
    # aaglPkgs.module
  ];
  programs.anime-game-launcher.enable = true;
  programs.anime-games-launcher.enable = false;
  programs.anime-borb-launcher.enable = false;
  programs.honkers-railway-launcher.enable = true;
  programs.honkers-launcher.enable = false;
}
