{ pkgs, ... }: {
  fonts.packages = with pkgs.nerd-fonts; [
    cousine
    space-mono
    code-new-roman
    dejavu-sans-mono
    meslo-lg
    noto
  ] ++ (with pkgs; [
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-emoji
    noto-fonts-extra
    fira-code
    fira-code-symbols
    dina-font
    proggyfonts

    dejavu_fonts
  ]);
  fonts.fontconfig = {
    enable = true;

    defaultFonts = {
      sansSerif = [ "Noto Sans CJK JP" "DejaVu Sans" ];
      serif = [ "Noto Serif JP" "DejaVu Serif" ];
    };

    subpixel = { lcdfilter = "light"; };
  };
}

