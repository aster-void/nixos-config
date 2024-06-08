{ pkgs, ... }:
{
  imports = [
    # display manager
    ./display-manager/sddm.nix
    # ./display-manager/gdm.nix

    # desktop / window manager
    # ./desktop/gnome.nix # unchecked
    ./desktop/plasma6.nix
    ./desktop/hyprland.nix
  ];

  services.displayManager.defaultSession = "hyprland";

  services.xserver.displayManager.setupCommands = ''
    # Hyprland
  '';
}
