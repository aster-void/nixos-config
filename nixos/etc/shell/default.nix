{ ... }:
let shellAliases = import ./aliases.nix; in
{
  environment.shellAliases = shellAliases;

  programs.bash = {
    inherit shellAliases;
    completion.enable = true;
  };
}
