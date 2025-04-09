{
  pkgs,
  inputs,
  ...
}: {
  imports = [
    inputs.lanzaboote.nixosModules.lanzaboote
  ];
  environment.systemPackages = [pkgs.sbctl];
  # enable secure boot with lanzaboote (todo)
  # boot.lanzaboote = {
  #   enable = true;
  #   pkiBundle = "/var/lib/sbctl";
  #   systemd-boot.enable = false;
  # };
  # grub.
  boot.loader = {
    systemd-boot = {
      enable = true;
    };
    efi = {
      canTouchEfiVariables = true;
      efiSysMountPoint = "/boot";
    };
    grub = {
      enable = false;

      efiSupport = true;
      useOSProber = true;
      # device = "nodev"; # ... example. define in hosts/{host}/default.nix

      default = "saved";
    };
    timeout = 10;
  };
}
