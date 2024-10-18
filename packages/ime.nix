{ pkgs, ... }:
{
  i18n.inputMethod = {
    enable = true;
    type = "fcitx5";
    fcitx5.addons = with pkgs; [
      fcitx5-mozc
      fcitx5-gtk
      libsForQt5.fcitx5-qt
    ];
  };

  environment.systemPackages = with pkgs; [
    fcitx5-mozc
  ];

    environment.variables = {
      # fcitx says they are recommended to be unset
      # GTK_IM_MODULE = "wayland";
      # QT_IM_MODULE = "fcitx";
      XMODIFIERS = "@im=fcitx";
      SDL_IM_MODULE = "fcitx";
      GLFW_IM_MODULE = "ibus";
    };
  services.xserver.desktopManager.runXdgAutostartIfNone = true;
}
