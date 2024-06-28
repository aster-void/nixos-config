{pkgs, ...} : {
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
      efiSupport = true;
      # device = "nodev"; # ... define in hardware-dep.nix
      useOSProber = true;
      default = "saved";
    };
    timeout = 10;
  };
}
