{ pkgs, ... }:
{
  # modify hardware-dep.nix and password.nix too.

  imports = [
    ./personal/env.nix
    ./personal/keymap.nix # workman. change it.
    ./personal/shell.nix
    ./personal/fonts.nix # some ja and en fonts
    ./personal/locale.nix # English + Asia/Tokyo
    ./local/password.nix
  ];

  environment.variables = {
    EDITOR = "hx";
    BROWSER = "firefox";
  };

  # QT styles
  /* qt = {
    style = "bb10dark";
    platformTheme = "kde";
  }; */

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
      # "samba"
      # "vboxusers"
    ];
    # refer ./password.nix for password.
    # refer personal/packages.nix for packages.
  };

  programs.git = {
    enable = true;
    config = {
      user = {
        name = "aster";
        email = "137767097+aster-void@users.noreply.github.com";
      };
      core.editor = "hx";
      init.defaultBranch = "main";
      pull.rebase = "true";
    };
  };

  programs.steam.enable = true;
}
