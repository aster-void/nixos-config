{
  # Enable automatic login for the user.
  services.displayManager.autoLogin.user = "aster";
  services.displayManager.autoLogin.enable = true;

  # @CHANGEME: YOU MUST CHANGE THIS!!!
  # this is a bcrypt of password "password",
  # in case you accidentally rebuilded it without changing.
  users.users.aster.hashedPassword = $y$j9T$R95R3yL52VbyQHOsaLXvy.$Rpm7Iwgs2SSIGmsiQDtRbTwZnXT5q1OoL9uAfogVH04";
}
