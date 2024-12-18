{ lib, pkgs, ... }:
{
  imports = [
    ./wayland.nix
  ];
  services.desktopManager.plasma6 = {
    enable = true;
  };
  environment.systemPackages = with pkgs; [ fcitx5 ];
  i18n.inputMethod.enable = lib.mkForce false;
}
