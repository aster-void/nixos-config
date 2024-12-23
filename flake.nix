{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem
      (system:
        let
          pkgs = import nixpkgs { inherit system; };
        in
        {
          devShell = pkgs.mkShell {
            buildInputs = with pkgs; [
              nixpkgs-fmt
              lefthook
              deadnix
            ];
            shellHook = ''
              lefthook install
            '';
          };
        }) // {
      nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./configuration.nix
        ];
        extraArgs = {
          user = "aster";
          git-email = "137767097+aster-void@users.noreply.github.com";
        };
      };
    };
}
