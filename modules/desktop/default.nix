{pkgs, ...}: {
  imports = [
    # display manager
    # ./display-manager/sddm.nix
    ./display-manager/ly.nix
    # ./display-manager/gdm.nix

    # ./desktop/gnome.nix # uncommenting this fails on build, saying "conflicting pipewire and pusleaudio both turned on" or something
    # ./plasma6.nix
    ./hyprland.nix
  ];

  services = {
    displayManager.defaultSession = "hyprland-uwsm";
    # Enable the X11 windowing system. (or maybe it was just named poorly and may also work for wayland idk)
    xserver.enable = true;
    # Enable touchpad support (enabled default in most desktopManager).
    libinput.enable = true;
  };

  programs = {
    xwayland.enable = true;
    dconf.enable = true;
  };

  # compat + gui libs (i'm not familiar)
  qt.enable = true;

  # XDG portals (I'm not sure what this is)
  xdg.portal = {
    enable = true;
    # xdgOpenUsePortal = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-gtk
    ];
  };
}
