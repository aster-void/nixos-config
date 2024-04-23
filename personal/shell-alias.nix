{
  environment.shellAliases = {
    n = "nvim";
    h = "hx";
    "h." = "hx .";

    gb = "git branch";
    gf = "git fetch --prune && git pull";
    gs = "git status";
    ga = "git add -A";
    gc = "git commit -m ";
    gp = "git push";

    nixman = "cd /etc/nixos/; sudo -s;";
    hman = "cd ~/.config/home-manager; ls";
    hypr = "cd ~/.config/hypr/; ls";
    home = "home-manager";
    nixgc = "nix-collect-garbage";
    rb = "sudo nixos-rebuild";
    rbs = "sudo nixos-rebuild switch";
    rbb = "sudo nixos-rebuild boot";
    rbbb = "sudo nixos-rebuild boot && reboot";
    rbt = "sudo nixos-rebuild test";

    zoom-us = "flatpak run us.zoom.Zoom";
  };
}
