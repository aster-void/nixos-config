# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).
# NixOS-WSL specific options are documented on the NixOS-WSL repository:
# https://github.com/nix-community/NixOS-WSL
{
  shared,
  lib,
  ...
}: let
  inherit (shared.system) user;
in {
  imports = [
    # include NixOS-WSL modules
    <nixos-wsl/modules>
  ];

  wsl.enable = true;
  wsl.defaultUser = user;

  # below is some workaround; delete them when they are not necessary anymore
  environment.variables.PATH = lib.mkForce "$HOME/.bin:$PATH";
  virtualisation.docker.rootless.enable = lib.mkForce false;
}
