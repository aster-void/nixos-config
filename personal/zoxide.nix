{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    zoxide
  ];
  programs.zoxide = {
    enable = true;
    enableBashIntegration = true;
    enableZshIntegration = true;
    enableFishIntegration = false;
    enableNushellIntegration = false;
  };
}
