{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    agenix.url = "github:ryantm/agenix";
    agenix.inputs.nixpkgs.follows = "nixpkgs";
    nix-flatpak.url = "github:gmodena/nix-flatpak/?ref=latest";
    lanzaboote.url = "github:nix-community/lanzaboote/v0.4.2";
    lanzaboote.inputs.nixpkgs.follows = "nixpkgs";
    shared-config.url = "github:aster-void/shared-config";
    comin = {
      url = "github:nlewo/comin";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    nixpkgs,
    agenix,
    shared-config,
    comin,
    ...
  } @ inputs: let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
    shared = shared-config.config;

    mkSystemConfig = {
      host,
      system,
    }:
      nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = {
          inherit system inputs host shared;
        };

        modules = [
          agenix.nixosModules.default
          comin.nixosModules.comin
          ./configuration.nix
          ./hosts/${host}
          (import ./templates/packages.nix {
            enable-pkgs = [
              "cli"
              "editor"
              [
                pkgs.helix
              ]
            ];
          })
        ];
      };
  in {
    devShell.${system} = pkgs.callPackage ./shell.nix {inherit agenix;};
    nixosConfigurations = {
      amberwood = mkSystemConfig {
        host = "amberwood";
        system = "x86_64-linux";
      };
      bogster = mkSystemConfig {
        host = "bogster";
        system = "x86_64-linux";
      };
      carbon = mkSystemConfig {
        host = "carbon";
        system = "x86_64-linux";
      };
      dusk = mkSystemConfig {
        host = "dusk";
        system = "x86_64-linux";
      };
    };
  };
}
