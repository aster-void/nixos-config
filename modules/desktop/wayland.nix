{pkgs, ...}: {
  services.xserver.enable = true;

  environment.variables = {
    QT_QPA_PLATFORM = "wayland;xcb"; # allow fallback to x11 (xwayland) when wayland is not found
    ELECTRON_OZONE_PLATFORM_HINT = "auto"; # hyprland wiki says it should be "auto"
  };
  environment.systemPackages = with pkgs; [wl-clipboard];
}
