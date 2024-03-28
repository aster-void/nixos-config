{pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
    # shell
    kitty
    fish

    # drivers
    qt5.full
    qt6.qtwayland

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
