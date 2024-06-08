{ pkgs, ... }:
{
  imports = [
    # display manager
    ./display-manager/sddm.nix
    # ./display-manager/gdm.nix

    # desktop / window manager
    # ./desktop/gnome.nix # doesn't work
    # uncommenting this fails on build, saying "conflicting pipewire and pusleaudio both turned on" or something

    ./desktop/plasma6.nix
    # keymap is not applied on plasma6.
    # you need to manually edit it in the gui settings app.

    ./desktop/hyprland.nix
  ];

  services.displayManager.defaultSession = "hyprland";

  services.xserver.displayManager.setupCommands = ''
    # Hyprland
  '';
}
