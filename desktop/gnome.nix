{ pkgs, ... }:
{
  services.xserver.enable = true;
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.displayManager.defaultSession = "gnome";
  services.xserver.desktopManager.gnome.enable = true;
  environment.systemPackages = [
    pkgs.gnome3.gnome-tweaks
  ];
}
