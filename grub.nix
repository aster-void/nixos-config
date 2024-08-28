{ ... }: {
  # Bootloader.
  # boot.loader.systemd-boot.enable = true;
  # enable grub
  boot.loader = {
    efi = {
      canTouchEfiVariables = true;
      efiSysMountPoint = "/boot";
    };
    grub = {
      enable = true;
      version = 2;

      efiSupport = true;
      useOSProber = true;
      # device = "nodev"; # ... example. define in hardware-dep.nix

      default = "saved";
    };
    timeout = 10;
  };
}
