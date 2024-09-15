{ pkg, lib, ... }: {
  environment.variables.PATH = lib.mkForce "$HOME/.bin:$PATH";
  virtualisation.docker.rootless.enable = lib.mkForce false;
}
