{ pkgs, ... }:
{
  imports = [
    ./packages/git-alias.nix
    ./packages/ime.nix
    ./packages/obs.nix
    ./packages/editors.nix
    ./packages/virtualization.nix
    # ./packages/zoxide.nix # ... not working
  ];

  users.users.aster.packages = with pkgs; [
    # CLI Tools
    btop
    dstat
    screenfetch
    neofetch
    cpufetch
    cmus # music player
    cava

    # Connect
    slack
    zoom-us
    discord

    # browsers
    chromium
    firefox
    brave

    # other GUI tools
    libreoffice
  ];

  environment.systemPackages = with pkgs; [
    # shell
    alacritty
    kitty
    bash
    fish
    zsh
    bash-completion
    zsh-completions
    zsh-syntax-highlighting

    # vcs
    git
    lazygit
    gh
    diff-so-fancy
    gitleaks

    # dev
    act
    firefox-devedition

    # cli utils
    xsel
    gnumake
    bat
    stow
    zoxide
    most # view with less functions
    platinum-searcher # find but better
    ncdu # tui disk usage
    fzf
    postgresql

    # network
    curl
    wget
    netcat-gnu
    openssh
    openssl

    # messaging (I dont use)
    telegram-desktop

    # gui drivers? idk
    qt5.full
    libsForQt5.qt5.qtwayland
    qt6.qtwayland
    qt6.qt5compat
    qt6Packages.qtstyleplugin-kvantum # SVG based theme engine for Qt/KDE
    gtk3
    gtk4
    xwayland

    # daemon
    dunst # notification daemon

    # utils
    ## file
    gwenview # file manager that actually works
    unzip # unzips files
    ffmpeg # convert any music/video files

    ## image previewer
    feh # image viewer that is too simple
    imagemagick # image editor i guess?
    inkscape # looks like image and video editor
    nomacs # view and crop image better

    ## music
    vlc # music player
    lollypop # music player

    ## documents
    evince # document viewer

    ## others
    blueberry # gui bluetooth manager
    arandr # display placer
    volumeicon # edit volume from sys tray

    ## hardware info
    baobab # harddisk usage visualizer
    duf # cli harddisk usage visualizer
    hwinfo # hw info in a long, long stream of characters
    lshw # this looks similar to hwinfo because I can't read either
    inxi # human readable hwinfo
    hw-probe # collect hardware info and send

    filezilla # a free ftp client + server
    # font-manager # a font manager in GTK
    # flameshot # a screenshot taker, doesn't work on hyprland
    fsearch # a file searcher
    gimp
    killall # kill many processes at once
    insync # an alternative to syncing files across hardwares
    meld # diff command in gui
    networkmanagerapplet # network manager in systray
    nixos-generators # convert the config into other formats
    ookla-speedtest # test your internet speed
    qbittorrent-qt5 # a bit torrent

    # compilers + interpreters (if any)
    gcc
    clang
    cmake # I'm not sure if this is a compiler
    zig
    rustc
    rustup
    cargo
    nodejs_22
    go
    gleam
    erlang

    # others
    wget
    ripgrep
    gettext

    # core
    avahi # internet
    dex # generate desktop entries
    edid-decode # decode video transfer protocols?

    # GTK themes
    arc-theme

    # fonts
    hack-font

    # security
    hblock

    # rvt-unicode ... not sure, will delete after making sure everything works
    tree
    variety
    # vivaldi
    # vivaldi-ffmpeg-codecs # ... not free
  ];
}
