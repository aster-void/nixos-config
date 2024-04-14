{pkgs, ...}: 
{
  imports = [
    # paste this into hardware-configuration.nix if you use nvidia cards.
    #./drivers/nvidia.nix
   
    # personal preferences. this works out of the box after running ./init.sh .
    ./personal/env.nix
    ./personal/keymap.nix # workman. change it.
    ./personal/packages.nix
    ./personal/git.nix
    ./personal/git-alias.nix
    ./personal/shell-alias.nix
    ./personal/fonts.nix # some ja and en fonts
    ./personal/ime.nix # fcitx5 + mozc
    ./personal/locale.nix # English + Asia/Tokyo
    ./personal/aagl.nix # when will hoyov officially support linux?
    ./password.nix
    ./wifi.nix
  ];

  environment.variables = {
    EDITOR = "nvim";
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

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.aster = {
    isNormalUser = true;
    description = "aster";
    extraGroups = [ "mlocate" "networkmanager" "wheel" "samba" "vboxusers" ];
    # refer ./passwd.nix for password.
    # refer personal/packages.nix for packages.
  };

  programs.git = {
    enable = true;
    config = {
      user = {
        name = "aster";
        email = "137767097+aster-void@users.noreply.github.com";
      };
    };
  };

  programs.steam.enable = true;
}
