{ pkgs, ... }:
{
  services.xserver.enable = true;

  environment.variables = {
    QT_QPA_PLATFORM = "wayland;xcb"; # allow fallback to x11 (xwayland) when wayland is not found
    # ELECTRON_OZONE_PLATFORM_HINT = "wayland";
  };
}
