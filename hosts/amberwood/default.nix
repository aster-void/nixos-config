{ user, ... }: {
  imports = [
    ./hardware-configuration.nix
    # ../../nixos/modules/aagl.nix
    ../../nixos/modules/desktop
    ../../nixos/modules/hardware
    ../../nixos/modules/drivers/logitech.nix
    ../../nixos/modules/drivers/nvidia.nix
  ];

  services.displayManager.autoLogin.user = user;
  services.displayManager.autoLogin.enable = true;
  boot.loader.grub.device = "nodev"; # or to use an actual device, use /dev/disk/by-uuid/YOUR_DEVICE_UUID_USE_ls_-lha_TO_CHECK
}
