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

  environment.systemPackages = with pkgs; [
    wofi
    hyprland
    hyprland-protocols
    hyprpaper
    hypridle
    hyprlock
  ];
}

