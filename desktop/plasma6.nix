{ pkgs, ... }:
{
  services.xserver.displayManager.defaultSession = "plasma";
  services.xserver.desktopManager.plasma6.enable = true;
}
