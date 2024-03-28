{pkgs, ...} :
{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.aster.packages = with pkgs; [
      notion-app-enhanced
      slack
      discord
      zoom-us
      firefox
      screenfetch
      neofetch
  ];
}
