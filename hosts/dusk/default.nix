
{
  imports = [
    ./hardware-configuration.nix
    ../../modules/desktop
    ../../modules/hardware
    ../../modules/hardware/bootloader/grub.nix
    ../../modules/flatpak.nix
  ];

  services.displayManager.autoLogin.enable = false; # LY doesn't support auto login
  boot.loader.grub.device = "nodev"; # or to use an actual device, use /dev/disk/by-uuid/YOUR_DEVICE_UUID_USE_ls_-lha_TO_CHECK

  hardware.graphics.enable = true;

  my.apps.games.enable = true;
}
