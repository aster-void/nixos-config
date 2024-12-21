{ pkgs, ... }:
let
  fcitx5-addons = with pkgs; [
    fcitx5-mozc
    fcitx5-gtk
    libsForQt5.fcitx5-qt
  ];
in
{
  i18n.inputMethod = {
    enable = true;
    type = "fcitx5";
    fcitx5.addons = fcitx5-addons;
  };

  environment.variables = {
    XMODIFIERS = "@im=fcitx";
  };
  services.xserver.desktopManager.runXdgAutostartIfNone = true;
}
