{
  pkgs,
  inputs,
  ...
}: {
  imports = [
    inputs.lanzaboote.nixosModules.lanzaboote
  ];
  boot.lanzaboote = {
    enable = true;
    pkiBundle = "/var/lib/sbctl";
  };
  environment.systemPackages = [pkgs.sbctl];
  # Bootloader.
  boot.loader = {
    systemd-boot = {
      enable = false;
    };
    efi = {
      canTouchEfiVariables = true;
      efiSysMountPoint = "/boot";
    };
    # grub = {
    #   enable = false;

    #   efiSupport = true;
    #   useOSProber = true;
    #   # device = "nodev"; # ... example. define in hosts/{host}/default.nix

    #   default = "saved";
    # };
    # timeout = 10;
  };
}
