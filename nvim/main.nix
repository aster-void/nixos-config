{pkgs, ...} : 
{
  imports = [
    ./theme.nix
  ];
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    extraConfig = ''
      set number relativenumber
    '';
    plugins = with pkgs.vimPlugins; [
    ];
  }
}
