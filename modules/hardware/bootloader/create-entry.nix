{lanzaboote}: {
  pkgs,
  inputs,
  ...
}: let
  lanzabootOptions = {
    imports = [
      inputs.lanzaboote.nixosModules.lanzaboote
    ];
    environment.systemPackages = [pkgs.sbctl];
    # enable secure boot with lanzaboote
    boot.lanzaboote = {
      enable = true;
      pkiBundle = "/var/lib/sbctl";
    };
    boot.loader = {
      # systemd-boot.enable = true;
    };
  };
  grubOptions = {
    # grub.
    boot.loader = {
      efi = {
        canTouchEfiVariables = true;
        efiSysMountPoint = "/boot";
      };
      grub = {
        enable = true;

        efiSupport = true;
        useOSProber = true;
        # device = "nodev"; # ... example. define in hosts/{host}/default.nix

        default = "saved";
      };
      timeout = 10;
    };
  };
  commonOptions = {};
in
  commonOptions
  // (
    if lanzaboote
    then lanzabootOptions
    else grubOptions
  )
