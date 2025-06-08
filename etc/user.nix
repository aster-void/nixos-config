{shared, ...}: {
  # Define a user account.
  users.users.${shared.system.user} = {
    isNormalUser = true;
    description = shared.system.user;
    extraGroups = [
      "mlocate"
      "networkmanager"
      "wheel"
      "docker"
      "video"
    ];
  };
}
