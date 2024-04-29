# basically copy the whole nvchad that is fetched from github to ~/.config/nvim
xdg.configFile."nvim/" = {
source = (pkgs.callPackage ./nvchad/default.nix{}).nvchad;
};
