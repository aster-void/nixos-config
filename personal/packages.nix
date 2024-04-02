{pkgs, ...} :
{
  users.users.aster.packages = with pkgs; [
      # CLI Tools
      screenfetch
      neofetch

      # Connect to other people
      notion-app-enhanced
      slack
      zoom-us
      discord
      firefox

      # yet another browser because more == better
      brave
  ];
}
