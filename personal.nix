{pkgs, ...}: 
{
  imports = [
    # uncomment this if you use nvidia cards.
    #./drivers/nvidia.nix
   
    # personal preferences. this works out of the box after running ./init.sh .
    ./personal/env.nix
    ./personal/keymap.nix
    ./personal/packages.nix
    ./personal/git-alias.nix
    ./personal/shell-alias.nix
    ./personal/fonts.nix
  ];

  environment.variables = {
    EDITOR = "nvim";
    BROWSER = "firefox";
    QT_QPA_PLATFORM = "xcb";
  };

  # QT styles
  /* qt = {
    style = "bb10dark";
    platformTheme = "kde";
  }; */

  # Timezone + Languages.
  time.timeZone = "Asia/Tokyo";
 
  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";
 
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "ja_JP.UTF-8";
    LC_NAME = "ja_JP.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
  };

  # IME
  i18n.inputMethod = {
    enabled = "fcitx5";
    fcitx5.addons = with pkgs; [
      fcitx5-gtk
      fcitx5-mozc
    ];
  };
  # this is necessary to run fcitx5 with a window manager like hyprland.
  services.xserver.desktopManager.runXdgAutostartIfNone = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.aster = {
    isNormalUser = true;
    description = "aster";
    extraGroups = [ "mlocate" "networkmanager" "wheel" "samba" "vboxusers" ];
    # refer personal/packages.nix for packages.
  };

  programs.steam.enable = true;

  # Enable automatic login for the user.
  services.xserver.displayManager.autoLogin.enable = true;
  services.xserver.displayManager.autoLogin.user = "aster";
}
