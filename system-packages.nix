{pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
    # shell
    kitty
    fish

    # I don't know what these are
    qt5.full
    qt6.qtwayland
    gtk3
    gtk4

    # IME modules
    fcitx5-mozc

    # gnome-only
    pkgs.gnomeExtensions.kimpanel

    # dev
    git
    xsel

    # code editors (if you like gui editors, add it to user's package)
    vim
    neovim

    # compilers + interpreters (if any)
    gcc
    zig
    rustc
    rustup
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
}
