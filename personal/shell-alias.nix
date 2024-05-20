{
  environment.shellAliases = {
    ".." = "cd ../";
    "..." = "cd ../../";
    "...." = "cd ../../../";
    "....." = "cd ../../../../";


    n = "nvim";
    h = "hx";
    "h." = "hx .";

    g = "git";
    gb = "git branch";
    gba = "git branch -a";
    gco = "git checkout";
    gcob = "git checkout -b";
    gsw = "git switch";
    gf = "git fetch --prune && git pull";
    gs = "git status -s";
    gsv = "git status -v";
    gsr = "git status";
    ga = "git add -A";
    gc = "git commit -m";
    gp = "git push";
    gu = "git push --set-upstream origin HEAD";
    gl = "git pull";
    cg = "cd $(git root)";

    lg = "lazygit";

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
