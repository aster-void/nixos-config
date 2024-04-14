{pkgs, ...} :
{
  imports = [
    # display manager
    display-manager/sddm.nix

    # desktop / window manager
    # ./desktop/gnome.nix
    # ./desktop/plasma5.nix # currently not working
    # ./desktop/plasma6.nix
    ./desktop/hyprland.nix
  ];
}
