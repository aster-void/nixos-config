{
  programs.git = {
    enable = true;
    config = {
      user = {
        name = "aster";
        email = "137767097+aster-void@users.noreply.github.com";
      };
      alias = {
        a = "add";
	aa = "add -A";
        c = "commit";
        cm = "commit -m";
        co = "checkout";
        b = "branch";
	ba = "branch -a";
        s = "status";
	upstream = "push --set-upstram origin";
        unstage = "reset HEAD --";
        last = "log -1 HEAD";
        discard = "reset --hard HEAD";
	uncommit = "reset HEAD~";
	amend = "commit --amend --no-edit";
	recommit = "commit --amend";
      };
      core.editor = "vim";
    };
  };
}
