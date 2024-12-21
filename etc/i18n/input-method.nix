{ lib, pkgs, config, ... }:
let assertMsg = lib.asserts.assertMsg; in
assert
assertMsg
  # reads as: not (system.packages |> list.contains fcitx5)
  (!(builtins.elem pkgs.fcitx5 config.environment.systemPackages))
  "fcitx5 must not be installed via environment.systemPackages, as it does not contain addons and may (will) make it impossible to find the addon. use i18n.inputMethod and only it.";
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
