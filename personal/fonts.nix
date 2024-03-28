{ pkgs, ...} : {
  fonts.packages = with pkgs; [
    (nerdfonts.override { fonts = [ "CodeNewRoman" ]; })
    noto-fonts
    noto-fonts-cjk
    noto-fonts-emoji
  ];
}
