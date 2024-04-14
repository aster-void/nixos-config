{ pkgs, ...} : {
  fonts.packages = with pkgs; [
    (nerdfonts.override { fonts = [ "CodeNewRoman" "DejaVuSansMono" "Meslo" "Noto" ]; })
    noto-fonts
    noto-fonts-cjk
    noto-fonts-emoji
    noto-fonts-extra
    fira-code
    fira-code-symbols
    dina-font
    proggyfonts

    dejavu_fonts
  ];
  fonts.fontconfig =  {
     enable = true;

     defaultFonts = {
       sansSerif = [ "Noto Sans CJK JP" "DejaVu Sans" ];
       serif = [ "Noto Serif JP" "DejaVu Serif" ];
     };

     subpixel = { lcdfilter = "light"; };
    };
}

