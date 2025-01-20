{pkgs, ...}: {
  fonts.packages =
    (with pkgs.nerd-fonts; [
      hack
      cousine
      space-mono
      code-new-roman
      dejavu-sans-mono
      meslo-lg
      noto
      tinos
    ])
    ++ (with pkgs; [
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-emoji
      noto-fonts-extra
      noto-fonts-color-emoji
      fira-code
      fira-code-symbols
      dina-font
      proggyfonts
      font-awesome
      dejavu_fonts
    ]);
  fonts.fontconfig = {
    enable = true;

    defaultFonts = {
      sansSerif = ["Noto Sans CJK JP"];
      serif = ["Tinos Nerd Font" "Noto Serif JP"];
      monospace = ["Hack Nerd Font"];
      emoji = ["Noto Color Emoji"];
    };

    subpixel = {lcdfilter = "light";};
  };
}
