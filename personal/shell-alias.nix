{
  environment.shellAliases = {
    n = "nvim";
    h = "hx";

    gs = "git status";

    nixman = "cd /etc/nixos/; sudo -s;";
    hman = "cd ~/.config/home-manager; ls";
    hypr = "cd ~/.config/hypr/; ls";
    home = "home-manager";
    nixgc = "nix-collect-garbage";
    rb = "sudo nixos-rebuild";
    rbs = "sudo nixos-rebuild switch";
    rbb = "sudo nixos-rebuild boot";
    rbbb = "sudo nixos-rebuild boot && reboot";

    zoom-us = "flatpak run us.zoom.Zoom";
  };
}
