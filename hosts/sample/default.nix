{
  imports = [
    ../../desktop
    # ../../plugins/aagl.nix
    ../../plugins/hardware # comment this out if you are installing this on WSL
    # ../../plugins/drivers/logitech.nix
    # ../../plugins/drivers/nvidia.nix
    # ../../plugins/wsl/configuration.nix
  ];

  boot.loader.grub.device = "nodev"; # or to use an actual device, use /dev/disk/by-uuid/YOUR_DEVICE_UUID_USE_ls_-lha_TO_CHECK
}