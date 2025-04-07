let
  pkgs = import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/nixos-unstable.tar.gz") {};
in
  pkgs.mkShell {
    packages = [pkgs.nixVersions.latest];
  }
