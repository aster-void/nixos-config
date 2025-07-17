{pkgs, ...}: {
  # Swappiness
  boot.kernel.sysctl = {
    "vm.swappiness" = 60;
  };

  # Kernel
  # prev: pkgs.linuxPackages_latest, linuxPackages_zen;
  boot.kernelPackages = pkgs.linuxPackages_zen;

  programs.nix-ld.enable = true;

  # Dbus
  services.dbus.enable = true;
}
