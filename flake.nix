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
      in
      {
        nixosConfigurations.nixos = nixpkgs.lib.nixosSystem
          {
            system = "x86_64-linux";
            modules = [
              ./configuration.nix
            ];
            extraArgs = extra // {
              nixos-host = "nixos";
            };
          };
        nixosConfigurations.desktop = nixpkgs.lib.nixosSystem
          {
            system = "x86_64-linux";
            modules = [
              ./configuration.nix
              ./hosts/desktop
            ];
            extraArgs = extra // {
              nixos-host = "desktop";
            };
          };
      }
    );
}
