{pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
    # shell
    kitty
    fish

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
    gopls

    # others
    curl
    wget
    ripgrep
    gettext
  ];
}
