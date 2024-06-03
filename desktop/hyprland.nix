{ config, pkgs, ... }:

{
  imports = [
    ./wayland.nix
  ];

  programs.hyprland = {
    # Install the packages from nixpkgs
    enable = true;
    # Whether to enable XWayland
    xwayland = {
      enable = true;
    };
  };

  xdg.portal.extraPortals = with pkgs; [
    xdg-desktop-portal-hyprland
  ];

  environment.systemPackages = with pkgs; [
    wofi
    hyprland
    hyprland-protocols
    hyprcursor
    hyprpaper
    hypridle
    hyprlock
  ];
}

