{ user, ... }:
{
  # Define a user account.
  users.users.${user} = {
    isNormalUser = true;
    description = user;
    extraGroups = [
      "mlocate"
      "networkmanager"
      "wheel"
      "docker"
    ];
  };
}
