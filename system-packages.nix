# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

# never put virtualbox,mlocate in this list
# let nixpkgs-unstable = import <nixpkgs-unstable> { config = { allowUnfree = true; }; };
# in
{
  environment.systemPackages = with pkgs; [

    # shell
    kitty
    fish

    # dev
    git
    xsel

    # I don't know what these are
    qt5.full
    libsForQt5.qt5.qtwayland
    qt6.qtwayland
    qt6.qt5compat
    gtk3
    gtk4

    xwayland

    # audio drivers
    # pulseaudioFull
    
    # IME modules
    fcitx5-mozc

    # gnome-only
    pkgs.gnomeExtensions.kimpanel
    

    # utils
    unzip
    vlc

    # core functionality
    dolphin # gui directory preview, necesarry for looking for wallpaper
    feh # image viewer that is too simple
    gwenview # slightly better (I wish)
    imagemagick # image editor i guess?

    # dev
    stow
    git
    xsel
    zoxide

    # emulator
    qemu
    quickemu # how are they different?

    # code editors (if you like gui editors, add it to user's package)
    vim
    # neovim # use nvim/* instead;
    helix

    # compilers + interpreters (if any)
    gcc
    zig
    rustc
    rustup
    cargo
    go
    cmake # I'm not sure if this is a compiler

    # Language Servers
    rustfmt
    rust-analyzer
    gopls
    nixpkgs-fmt
    typescript
    nodePackages_latest.typescript-language-server
    tailwindcss-language-server
    vscode-langservers-extracted # HTML/CSS/JSON/ESLint all in one
    taplo # a LS for TOML
    marksman

    # others
    curl
    wget
    ripgrep
    gettext

    #ckb-next
    #google-chrome
    #wpsoffice
    # slack # ... not free
    # discord # ... not free


    # fetch
    screenfetch
    neofetch
    cpufetch

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
    # dropbox # ... not free
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
    # insync # ... not free
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
    # ookla-speedtest # ... not free
    qbittorrent-qt5
    platinum-searcher
    polybar
    qt6Packages.qtstyleplugin-kvantum
    ripgrep
    rxvt-unicode
    scrot
    simplescreenrecorder
    # spotify # ... not free
    # sublime4 # ... not free
    telegram-desktop
    tree
    variety
    # vivaldi
    # vivaldi-ffmpeg-codecs # ... not free
    volumeicon
    wget
    # widevine-cdm # ... not free
    xorg.xkill
    yakuake
    zsh
    zsh-completions
    zsh-syntax-highlighting
  ];
}
