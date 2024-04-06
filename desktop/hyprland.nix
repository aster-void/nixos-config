# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports = [
    ./sddm.nix
  ];
  services.xserver.enable = true;
  # launch Hyprland on startup
  services.xserver.displayManager.setupCommands = ''
    Hyprland
  '';

  services.xserver.displayManager.defaultSession = "hyprland";

  programs.hyprland = {
    # Install the packages from nixpkgs
    enable = true;
    # Whether to enable XWayland
    xwayland = {
      enable = true;
    };
  };

  environment.systemPackages = with pkgs; [
    waybar
    wofi
    hyprland
    hyprland-protocols
    hyprpaper
    hypridle
    hyprlock
  ];
}

