{ pkgs, ... }:
{
  imports = [
    # paste this into hardware-dep.nix if you use nvidia cards.
    #./drivers/nvidia.nix

    ./personal/env.nix
    ./personal/keymap.nix # workman. change it.
    ./personal/shell-alias.nix
    ./personal/fonts.nix # some ja and en fonts
    ./personal/locale.nix # English + Asia/Tokyo
    ./password.nix
    # ./wifi.nix
  ];

  environment.variables = {
    EDITOR = "helix";
    BROWSER = "firefox";
  };

  # QT styles
  /* qt = {
    style = "bb10dark";
    platformTheme = "kde";
  }; */

  # Enable automatic login for the user.
  services.displayManager.autoLogin.enable = true;
  services.displayManager.autoLogin.user = "aster";

  # Define a user account.
  users.users.aster = {
    isNormalUser = true;
    description = "aster";
    extraGroups = [
      "mlocate"
      "networkmanager"
      "wheel"
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
      core.editor = "helix";
      init.defaultBranch = "main";
      pull.rebase = "true";
    };
  };

  programs.steam.enable = true;
}
