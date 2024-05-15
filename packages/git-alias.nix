{
  programs.git.config.alias = {
    a = "add";
    aa = "add -A";
    c = "commit";
    cm = "commit -m";
    co = "checkout";
    cob = "checkout -b";
    sw = "switch";
    swc = "switch -c";
    b = "branch";
    ba = "branch -a";
    bd = "branch -d";
    s = "status";
    sv = "status -v";
    f = "fetch --prune";
    u = "push --set-upstream origin HEAD";
    log = "log --oneline";
    logv = "log";
    sync = "pull --rebase; git push";
    graph = "log --graph --date-order -C -M --pretty=format:\"<%h> %ad [%an] %Cgreen%d%Creset %s\" --all --date=short";
    unstage = "reset HEAD --";
    root = "rev-parse --show-toplevel";
    last = "log -1 HEAD";
    discard = "reset --hard HEAD";
    uncommit = "reset HEAD~";
    amend = "commit --amend --no-edit";
    recommit = "commit --amend";
  };
}
