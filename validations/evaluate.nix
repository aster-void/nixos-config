{
  pkgs,
  lib,
  config,
  ...
}: {
  # FIXME: is there any ohter way to do "just evalute it"?
  system.autoUpgrade.enable =
    if import ./default.nix {inherit pkgs lib config;}
    then false
    else throw;
}
