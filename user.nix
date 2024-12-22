{ ... }:
{
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
