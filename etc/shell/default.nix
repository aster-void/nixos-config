{ nixos-host, ... }:
let shellAliases = import ./aliases.nix { inherit nixos-host; }; in
{
  environment.shellAliases = shellAliases;

  programs.bash = {
    inherit shellAliases;
    completion.enable = true;
  };
}
