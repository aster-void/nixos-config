# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, lib,  pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      # ./nvim/configuration.nix # i'll write this later
      ./fonts.nix
      ./git.nix
      ./shell.nix
      # ./home.nix
    ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "nixos"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;

  # nixpkgs
  nixpkgs.config.allowUnfree = true;
 
  # Set your time zone.
  time.timeZone = "Asia/Tokyo";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "ja_JP.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "ja_JP.UTF-8";
    LC_NAME = "ja_JP.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
  };
  
  # IMEs
  i18n.inputMethod = {
    enabled = "fcitx5";
    fcitx5.addons = with pkgs; [
      fcitx5-mozc
      fcitx5-gtk
    ];
  };
  lib.mkForce = {
    environment.variables = {
      #GTK_IM_MODULE = "fcitx";
      GTK_IM_MODULE = "wayland";
      QT_IM_MODULE = "fcitx";
      XMODIFIERS = "@im=fcitx";
      SDL_IM_MODULE = "fcitx";
      GLFW_IM_MODULE = "ibus";
    };
  };
  services.xserver.desktopManager.runXdgAutostartIfNone = true;

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable the KDE Plasma / Gnome Desktop Environment.
  # Gnome
  # services.xserver.displayManager.gdm.enable = true;
  # services.xserver.desktopManager.gnome.enable = true;
  # KDE Plasma
  services.xserver.displayManager.sddm.enable = true;
  services.xserver.desktopManager.plasma5.enable = true;
  services.xserver.displayManager.defaultSession = "plasmawayland";
  services.xserver.displayManager.sddm.wayland.enable = true;

  # enable hyprland
  security.polkit.enable = true;
  programs.dconf.enable = true;

  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
    # hint electron apps to use wayland
    # this makes electron apps to not use fcitx5 for some reason???
    # environment.sessionVariables.NIXOS_OZONE_WL = "1";
  };

  # Configure keymap in X11
  services.xserver = {
    layout = "us";
    xkbVariant = "workman";
  };

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable sound with pipewire.
  sound.enable = true;
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;

    # use the example session manager (no others are packaged yet so this is enabled by default,
    # no need to redefine it in your config for now)
    #media-session.enable = true;
  };

  # shared hardware settings
  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = true;

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  # my user
  users.users.aster = {
    isNormalUser = true;
    description = "aster";
    extraGroups = [ "networkmanager" "wheel" ];
  };

  programs.steam.enable = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    # kitty
    kitty

    # IME modules
    fcitx5-mozc

    # gnome-only
    pkgs.gnomeExtensions.kimpanel

    # dev-essential
    git
    xsel

    # code editors (if you like gui editors, add it to user's package)
    vim
    neovim

    # compilers + interpreters (if any)
    gcc
    zig
    rustc
    cargo
    go

    # Language Servers
    rustfmt
    gopls

    # others
    curl
    wget
    ripgrep
  ];
 
  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "23.11"; # Did you read the comment?

  system.autoUpgrade.enable = true;
}

