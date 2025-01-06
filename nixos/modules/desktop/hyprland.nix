{ pkgs, system, inputs, ... }:
let
  hyprland = inputs.hyprland.packages.${system}.default;
in
{
  imports = [
    ./wayland.nix
  ];

  programs.hyprland = {
    # Install the packages from nixpkgs
    enable = true;
    package = hyprland;
    xwayland.enable = true;
    # use Universal Wayland Session Manager
    withUWSM = true;
  };

  xdg.portal.extraPortals = [
    # pkgs.xdg-desktop-portal-hyprland
  ];

  environment.systemPackages = with pkgs; [
    wofi
    hyprland
    hyprland-protocols
    hyprcursor
    hyprpaper
    # hypridle
    hyprlock
  ];
}

