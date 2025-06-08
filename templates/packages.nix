{enable-pkgs}: {
  shared,
  pkgs,
  lib,
  ...
}: {
  environment.systemPackages = lib.lists.concatMap (pkgset:
    # allow directly adding packages
      if builtins.typeOf pkgset == "string"
      then (shared.packages.${pkgset} or (throw "packages set ${pkgset} not found!") pkgs)
      else pkgset)
  enable-pkgs;
}
