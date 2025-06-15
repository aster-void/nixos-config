{shared, ...}: let
  shellAliases = shared.shell-aliases.common // shared.shell-aliases.bash;
in {
  environment.shellAliases = shellAliases;

  programs = {
    command-not-found.enable = false;
    bash = {
      inherit shellAliases;
      completion.enable = true;
    };
    fish = {
      inherit shellAliases;
    };
  };
}
