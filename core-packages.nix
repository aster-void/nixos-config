# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

# never put virtualbox,mlocate in this list

{
  environment.systemPackages = with pkgs; [
    #ckb-next
    #google-chrome
    #wpsoffice
    vscode
    slack
    discord

    # IME modules
    fcitx5-mozc

    # gnome-only
    pkgs.gnomeExtensions.kimpanel

    # utils
    unzip
    vlc


    # dev
    fish
    git
    xsel
    screenfetch
    neofetch

    # code editors
    vim
    neovim
    vscode

    # compilers + interpreters (if any)
    gcc
    clang
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

    alacritty
    arandr
    arc-theme
    avahi
    baobab
    bash-completion
    bat
    bibata-cursors
    blueberry
    btop
    chromium
    curl
    dex
    dmenu
    dropbox
    duf
    edid-decode
    evince
    feh
    filezilla
    firefox
    flameshot
    font-manager
    fsearch
    gimp
    gnome.dconf-editor
    gnome.gnome-disk-utility
    gnome.gvfs
    hack-font
    hblock
    hw-probe
    hwinfo
    i3lock-fancy
    inkscape
    insync
    inxi
    killall
    kitty
    lm_sensors
    lollypop
    lshw
    meld
    most
    networkmanagerapplet
    nixos-generators
    nomacs
    numlockx
    obs-studio
    ookla-speedtest
    qbittorrent-qt5
    platinum-searcher
    polybar
    qt6Packages.qtstyleplugin-kvantum
    ripgrep
    rxvt-unicode
    scrot
    simplescreenrecorder
    spotify
    sublime4
    telegram-desktop
    tree
    variety
    vivaldi
    vivaldi-ffmpeg-codecs
    volumeicon
    wget
    widevine-cdm
    xorg.xkill
    yakuake
    zsh
    zsh-completions
    zsh-syntax-highlighting
  ];
}
