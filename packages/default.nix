{ pkgs, ... }:
{
  imports = [
    ./git.nix
    ./ime.nix
    ./obs.nix
    ./editors.nix
    ./virtualization.nix
  ];

  users.users.aster.packages = with pkgs; [
    # CLI Tools
    btop
    dstat
    cpufetch
  ];

  environment.systemPackages = with pkgs; [
    # CLI Environment
    ## Terminal Emu
    alacritty
    ## Shells
    bash
    fish
    zsh
    nushell
    bash-completion
    zsh-completions
    zsh-syntax-highlighting

    ## shell prompt
    starship
    blesh

    # CLI Apps
    ## vcs
    git
    lazygit
    gh
    diff-so-fancy
    gitleaks
    lefthook

    # cli utils
    tree
    xsel
    gnumake
    stow
    most # view with less functions
    platinum-searcher # find but better
    ncdu # tui disk usage
    fzf

    # network
    curl
    wget
    netcat-gnu
    openssh
    openssl

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

    # security
    hblock

    variety
    # vivaldi
    # vivaldi-ffmpeg-codecs # ... not free
  ];
}