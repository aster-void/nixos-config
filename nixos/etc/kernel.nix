{ pkgs, ... }: {
  # Swappiness
  boot.kernel.sysctl = { "vm.swappiness" = 10; };

  # Kernel
  # prev: pkgs.linuxPackages_latest;
  boot.kernelPackages = pkgs.linuxPackages_zen;

  programs.nix-ld.enable = true;

  # Dbus
  services.dbus.enable = true;
}


