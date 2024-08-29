{ pkg, lib, ... }: {
  environment.variables.PATH = lib.mkForce "$HOME/.bin:$PATH";
}
