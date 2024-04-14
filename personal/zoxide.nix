{pkgs, ...} : 
{
  programs.zoxide = {
    enable = true;
    enableBashIntegration = true;
    enableZshIntegration = true;
    enableFishIntegration = false;
    enableNushellIntegration = false;
  }
}
