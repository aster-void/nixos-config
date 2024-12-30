{ user, ... }: {
  imports = [
    ./hardware-configuration.nix
    ../../nixos/desktop
    ../../plugins/hardware # comment this out if you are installing this on WSL
    # ../../plugins/drivers/logitech.nix
    # ../../plugins/drivers/nvidia.nix
  ];

  services.displayManager.autoLogin.user = user;
  services.displayManager.autoLogin.enable = true;
  boot.loader.grub.device = "nodev"; # or to use an actual device, use /dev/disk/by-uuid/YOUR_DEVICE_UUID_USE_ls_-lha_TO_CHECK
}
