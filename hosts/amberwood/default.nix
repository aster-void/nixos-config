{user, ...}: {
  imports = [
    ./hardware-configuration.nix
    ../../modules/desktop
    ../../modules/hardware
    ../../modules/flatpak.nix
    ../../modules/drivers/logitech.nix
    ../../modules/drivers/nvidia.nix
  ];

  my.apps.games.enable = true;

  services.displayManager.autoLogin.user = user;
  services.displayManager.autoLogin.enable = false; # LY doesn't support
  boot.loader.grub.device = "nodev"; # or to use an actual device, use /dev/disk/by-uuid/YOUR_DEVICE_UUID_USE_ls_-lha_TO_CHECK
}
