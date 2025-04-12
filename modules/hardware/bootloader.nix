{
  pkgs,
  inputs,
  lib,
  ...
}: let
  lanzaboote = true; # TODO: make it configurable
in {
  imports = [
    inputs.lanzaboote.nixosModules.lanzaboote
  ];
  # enable secure boot with lanzaboote
  environment.systemPackages = [pkgs.sbctl];
  boot.lanzaboote = lib.mkIf lanzaboote {
    enable = true;
    pkiBundle = "/var/lib/sbctl";
  };
  # grub.
  boot.loader = {
    systemd-boot.enable = ! lanzaboote;
    efi = {
      canTouchEfiVariables = true;
      efiSysMountPoint = "/boot";
    };
    grub = {
      enable = ! lanzaboote;

      efiSupport = true;
      useOSProber = true;
      # device = "nodev"; # ... example. define in hosts/{host}/default.nix

      default = "saved";
    };
    timeout = 10;
  };
}
