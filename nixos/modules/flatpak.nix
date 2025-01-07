{ config, ... }:
{
  assertions = [
    {
      assertion = config.xdg.portal.enable;
      message = "To use Flatpak you must enable XDG Desktop Portals with xdg.portal.enable.";
    }
  ];
  services.flatpak.enable = true;
  systemd.services.flatpak-repo = {
    wantedBy = [ "multi-user.target" ];
    path = [ config.services.flatpak.package ];
    script = ''
      flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
    '';
  };
}
