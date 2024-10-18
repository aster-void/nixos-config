{ pkgs, ... }: {
  imports = [
    #    ../personal/sddm-theme.nix
  ];
  services.xserver.enable = true;
  services.displayManager.sddm.enable = true;
  services.displayManager.sddm.wayland.enable = true;
}
