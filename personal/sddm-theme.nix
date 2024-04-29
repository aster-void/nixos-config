{ pkgs, ... }:
{
  services.displayManager.sddm.theme = "where_is_my_sddm_theme";
  environment.systemPackages = with pkgs; [
    where-is-my-sddm-theme
  ];
}
    
