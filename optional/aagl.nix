# AAGL on nix from https://github.com/ezKEa/aagl-gtk-on-nix
{ ... }:
let
  aagl = import (builtins.fetchTarball "https://github.com/ezKEa/aagl-gtk-on-nix/archive/main.tar.gz");
in
{
  imports = [
    aagl.module
  ];

  nix.settings = aagl.nixConfig; # Set up Cachix
  # programs.anime-game-launcher.enable = true;
  # programs.anime-games-launcher.enable = true;
  # programs.anime-borb-launcher.enable = true;
  programs.honkers-railway-launcher.enable = true;
  # programs.honkers-launcher.enable = true;
  # programs.wavey-launcher.enable = true;
  # programs.sleepy-launcher.enable = true;
}
