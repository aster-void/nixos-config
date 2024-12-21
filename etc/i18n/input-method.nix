{ lib, pkgs, config, ... }:
assert
lib.asserts.assertMsg
  (!(builtins.elem pkgs.fcitx5 config.environment.systemPackages)) # packages.contains should not contain fcitx5
  "fcitx5 must not be installed via environment.systemPackages. use i18n.inputMethod and only it.";
let
  enable = true;
  fcitx5-addons = with pkgs; [
    fcitx5-mozc
    fcitx5-gtk
    libsForQt5.fcitx5-qt
  ];
in
{
  i18n.inputMethod = {
    inherit enable;
    type = "fcitx5";
    fcitx5.addons = fcitx5-addons;
  };
  environment.systemPackages = if enable then [ ] else fcitx5-addons; # s.t. it works when inputMethod is disabled (such as on Plasma)

  environment.variables = {
    XMODIFIERS = "@im=fcitx";
  };
  services.xserver.desktopManager.runXdgAutostartIfNone = true;

}
