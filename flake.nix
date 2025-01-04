{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem
      (system:
        let pkgs = import nixpkgs { inherit system; }; in {
          devShell = import ./shell.nix { inherit pkgs; };
        })
    //
    (
      let
        extra = {
          user = "aster";
          git-email = "137767097+aster-void@users.noreply.github.com";
        };
        systemConfig = host: nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          modules = [
            ./nixos/configuration.nix
            ./hosts/${host}
          ];
          extraArgs = extra // {
            inherit host;
          };
        };
      in
      {
        nixosConfigurations.desktop = systemConfig "desktop";
        nixosConfigurations.laptop = systemConfig "laptop";
      }
    );
}
