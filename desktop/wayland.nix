{ pkgs, ... }:
{
  services.xserver.enable = true;

  environment.variables = {
    QT_QPA_PLATFORM = "wayland";
    ELECTRON_OZONE_PLATFORM_HINT = "wayland";
  };
}
