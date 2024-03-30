{pkgs, ...} :
{
  i18n.inputMethod = with pkgs; {
    enabled ="fcitx5";
    fcitx5.addons = [
      fcitx5-mozc
      fcitx5-gtk
      libsForQt5.fcitx5-qt
    ];
  };
}
