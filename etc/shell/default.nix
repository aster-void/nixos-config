{ ... }:
let shellAliases = import ./shell/aliases.nix; in
{
  environment.shellAliases = shellAliases;

  programs.bash = {
    inherit shellAliases;
    completion.enable = true;
  };
}
