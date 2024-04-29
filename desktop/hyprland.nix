# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  services.xserver.enable = true;
  # launch Hyprland on startup
  services.xserver.displayManager.setupCommands = ''
    # Hyprland
  '';

  services.displayManager.defaultSession = "hyprland";

  programs.hyprland = {
    # Install the packages from nixpkgs
    enable = true;
    # Whether to enable XWayland
    xwayland = {
      enable = true;
    };
  };
  environment.variables = {
    # QT_QPA_PLATFORM = "wayland";
    # ELECTRON_OZONE_PLATFORM_HINT = "wayland";
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

