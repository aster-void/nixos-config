{ pkgs, ... }:
{
  # Enable automatic login for the user.
  services.displayManager.autoLogin.user = "aster";
  services.displayManager.autoLogin.enable = false;

  # Define a user account.
  users.users.aster = {
    isNormalUser = true;
    description = "aster";
    extraGroups = [
      "mlocate"
      "networkmanager"
      "wheel"
      "docker"
    ];
  };
}
