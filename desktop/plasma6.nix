{ pkgs, ... }:
{
  imports = [
    ./wayland.nix
  ];
  services.desktopManager.plasma6.enable = true;
}
