{pkgs, ...}: {
  imports = [
    ./wayland.nix
  ];

  programs.hyprland = {
    # Install the packages from nixpkgs
    enable = true;
    xwayland.enable = true;
    # use Universal Wayland Session Manager
    withUWSM = false; # no.
  };

  environment.systemPackages = with pkgs; [
    # walker
    hyprland
    hyprland-protocols
    hyprcursor
    hyprpaper
    # hypridle
    hyprlock
  ];
}
