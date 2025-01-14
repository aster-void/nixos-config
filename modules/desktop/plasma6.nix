{pkgs, ...}: {
  imports = [
    ./wayland.nix
  ];
  services.desktopManager.plasma6 = {
    enable = true;
  };
  environment.systemPackages = with pkgs; [
    plasma5Packages.kdeconnect-kde
  ];
}
