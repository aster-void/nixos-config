{ pkgs, ... }:
{
  imports = [
    ./obs.nix
  ];
  users.users.aster.packages = with pkgs; [
    # CLI Tools
    screenfetch
    neofetch
    cmus # music player
    cava
    # Connect to other people
    slack
    zoom-us
    discord
    # firefox    
    # yet another browser because more == better
    brave
    # other GUI tools
    libreoffice
  ];
  environment.systemPackages = with pkgs; [
    btop
  ];
}
