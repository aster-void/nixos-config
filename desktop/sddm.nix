{pkgs, ...} : {
   imports = [
     ../personal/sddm-theme.nix
   ];
   services.xserver.enable = true;
   services.xserver.displayManager.sddm.enable = true;
   services.xserver.displayManager.sddm.wayland.enable = true;
   services.xserver.displayManager.sddm.theme = "where_is_my_sddm_theme";
}
