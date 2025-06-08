{shared, ...}: let
  shellAliases = shared.shell-aliases.common // shared.shell-aliases.bash;
in {
  environment.shellAliases = shellAliases;

  programs.bash = {
    inherit shellAliases;
    completion.enable = true;
  };
  programs.fish = {
    inherit shellAliases;
  };
}
