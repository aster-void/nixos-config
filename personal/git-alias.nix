{
  programs.git.config.alias = {
        a = "add";
	aa = "add -A";
        c = "commit";
        cm = "commit -m";
	cma = "add -A ; git commit -m ";
        co = "checkout";
        b = "branch";
	ba = "branch -a";
        s = "status";
	f = "fetch --prune";
	upstream = "push --set-upstram origin";
        unstage = "reset HEAD --";
        last = "log -1 HEAD";
        discard = "reset --hard HEAD";
	uncommit = "reset HEAD~";
	amend = "commit --amend --no-edit";
	recommit = "commit --amend";
      };
}
