{
  imports = [
    ./optional/hardware/ # comment this out if you are installing this on WSL
    # ./drivers/logitech.nix
    # ./drivers/nvidia.nix
    ./optional/wsl/configuration.nix
  ];

  boot.loader.grub.device = "nodev"; # or to use an actual device, use /dev/disk/by-uuid/YOUR_DEVICE_UUID_USE_ls_-lha_TO_CHECK
}