{pkgs, ...} :
{
  imports = [
    ./desktop/gnome.nix
    # ./desktop/plasma5.nix # currently not working
    # ./desktop/plasma6.nix
    # ./desktop/hyprland.nix
  ];
}
