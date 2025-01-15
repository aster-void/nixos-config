{
  imports = [
    #    ../personal/sddm-theme.nix
  ];
  services = {
    xserver.enable = true;
    displayManager.sddm.enable = true;
    displayManager.sddm.wayland.enable = true;
  };
}
