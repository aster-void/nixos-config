{ pkgs, ... }:
{
  services.xserver.desktopManager.gnome.enable = true;
  environment.systemPackages = [
    pkgs.gnome3.gnome-tweaks
  ];
}
