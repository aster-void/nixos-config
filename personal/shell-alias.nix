{
  environment.shellAliases = {
    ".." = "cd ../";
    "..." = "cd ../../";
    "...." = "cd ../../../";
    "....." = "cd ../../../../";


    n = "nvim";
    h = "hx";
    "h." = "hx .";

    gb = "git branch";
    gf = "git fetch --prune && git pull";
    gs = "git status";
    ga = "git add -A";
    gc = "git commit -m ";
    gp = "git push";
    gl = "git pull";
    cg = "ch $(git root)";

    sizeof = "du -sh";
    dush = "du -sh";

    nixman = "cd /etc/nixos/; sudo -s;";
    hs = "home-manager switch";
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
